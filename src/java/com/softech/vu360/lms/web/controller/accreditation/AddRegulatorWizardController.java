package com.softech.vu360.lms.web.controller.accreditation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindException;
import org.springframework.validation.Errors;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.servlet.ModelAndView;

import com.softech.vu360.lms.model.Address;
import com.softech.vu360.lms.model.ContentOwner;
import com.softech.vu360.lms.model.CustomField;
import com.softech.vu360.lms.model.CustomFieldValue;
import com.softech.vu360.lms.model.CustomFieldValueChoice;
import com.softech.vu360.lms.model.MultiSelectCustomField;
import com.softech.vu360.lms.model.Regulator;
import com.softech.vu360.lms.model.SingleSelectCustomField;
import com.softech.vu360.lms.model.VU360User;
import com.softech.vu360.lms.service.AccreditationService;
import com.softech.vu360.lms.vo.Language;
import com.softech.vu360.lms.web.controller.AbstractWizardFormController;
import com.softech.vu360.lms.web.controller.model.accreditation.RegulatorForm;
import com.softech.vu360.lms.web.controller.model.customfield.CustomFieldBuilder;
import com.softech.vu360.lms.web.controller.validator.Accreditation.AddRegulatorValidator;
import com.softech.vu360.util.Brander;
import com.softech.vu360.util.CustomFieldEntityType;
import com.softech.vu360.util.VU360Branding;

/**
 * @author Dyutiman
 * created on 22-june-2009
 *
 */
public class AddRegulatorWizardController extends AbstractWizardFormController {

	private static final Logger log = Logger.getLogger(AddRegulatorWizardController.class.getName());

	private AccreditationService accreditationService;
	private String cancelTemplate = null;
	private String finishTemplate = null;
	
	public static final String CUSTOMFIELD_ENTITY_REGULATOR = "CUSTOMFIELD_REGULATOR";

	public AddRegulatorWizardController() {
		super();
		setCommandName("regulatorForm");
		setCommandClass(RegulatorForm.class);
		setSessionForm(true);
		this.setBindOnNewForm(true);
		setPages(new String[] {
				"accreditation/regulator/addRegulator/add_regulator_step1"				
				, "accreditation/regulator/addRegulator/add_regulator_step3"});
	}

	protected void initBinder(HttpServletRequest request,
			ServletRequestDataBinder binder) throws Exception {
		// Auto-generated method stub
		super.initBinder(request, binder);
	}

	protected void onBindOnNewForm(HttpServletRequest request, Object command,
			BindException errors) throws Exception {
		// Auto-generated method stub
		super.onBindOnNewForm(request, command, errors);
	}

	protected ModelAndView showForm(HttpServletRequest request,
			HttpServletResponse response, BindException errors) throws Exception {
		// Auto-generated method stub
		return super.showForm(request, response, errors);
	}

	protected Object formBackingObject( HttpServletRequest request ) throws Exception {

		Object command = super.formBackingObject(request);
		try {
			RegulatorForm form = (RegulatorForm) command;
			Regulator regulator = new Regulator();
			// for binding the values inside address
			Address address = new Address();
			Address address2 = new Address();
			regulator.setAddress(address);
			regulator.setAddress2(address2);
			// for binding the contact values.
			/*Contact contact = new Contact();
			Address contactAddress = new Address();
			contact.setAddress(contactAddress);
			form.setContact(contact);*/
			
			/*List<Contact> contacts = new ArrayList <Contact>();
			contacts.add(contact);
			form.setContacts(contacts);*/
			form.setRegulator(regulator);
			form.setBrander(VU360Branding.getInstance().getBrander((String)request.getSession().getAttribute(VU360Branding.BRAND), new Language()));
			
		} catch (Exception e) {
			log.debug("exception", e);
		}
		return command;
	}

	@SuppressWarnings("unchecked")
	protected Map<Object, Object> referenceData(HttpServletRequest request, Object command, Errors errors,
			int page) throws Exception {

		RegulatorForm form = (RegulatorForm)command;
		switch(page){

		case 0:
			if (!errors.hasErrors() && form.getCustomFields().size()==0){
				List<CustomField> globalCustomFieldList  = this.getAccreditationService().findGlobalsCustomFields(Enum.valueOf(CustomFieldEntityType.class, CUSTOMFIELD_ENTITY_REGULATOR), "", "");
				CustomFieldBuilder fieldBuilder = new CustomFieldBuilder();
				List<CustomFieldValue> customFieldValues = new ArrayList<CustomFieldValue>();
				
				for(CustomField customField : globalCustomFieldList){
					if (customField instanceof SingleSelectCustomField || 
							customField instanceof MultiSelectCustomField ){
						
						List<CustomFieldValueChoice> customFieldValueChoices=this.getAccreditationService().getOptionsByCustomField(customField);
						fieldBuilder.buildCustomField(customField,0,customFieldValues,customFieldValueChoices);
						
					} else {
						fieldBuilder.buildCustomField(customField,0,customFieldValues);
					}
				}
				
				List<com.softech.vu360.lms.web.controller.model.customfield.CustomField> customFieldList =fieldBuilder.getCustomFieldList();
				form.setCustomFields(customFieldList);
			}
		case 1:
			for (com.softech.vu360.lms.web.controller.model.customfield.CustomField customField :form.getCustomFields()){

				if(customField.getCustomFieldRef() instanceof MultiSelectCustomField){

					MultiSelectCustomField multiSelectCustomField = (MultiSelectCustomField)customField.getCustomFieldRef();
					if (!multiSelectCustomField.getCheckBox()){
						
						if(customField.getSelectedChoices()!=null){

							for(String selectedChoiceIdString : customField.getSelectedChoices()){
								for (com.softech.vu360.lms.web.controller.model.customfield.CustomFieldValueChoice  customFieldValueChoice : customField.getCustomFieldValueChoices()){
									if(selectedChoiceIdString.equalsIgnoreCase(customFieldValueChoice.getCustomFieldValueChoiceRef().getKey())){
										customFieldValueChoice.setSelected(true);
									}
								}
							}
						}
					}
				}
			}
		case 2:
			break;
		default:
			break;
		}
		return super.referenceData(request, page);
	}

	protected ModelAndView processFinish(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)	throws Exception {

		log.debug("IN processFinish");
		RegulatorForm form = (RegulatorForm) command;
		Regulator regulator = form.getRegulator();
		com.softech.vu360.lms.vo.VU360User loggedInUser = (com.softech.vu360.lms.vo.VU360User) SecurityContextHolder.getContext().getAuthentication().
		getPrincipal();
		ContentOwner contentOwner = null;
		if( loggedInUser.getRegulatoryAnalyst() != null )

			contentOwner = accreditationService.findContentOwnerByRegulatoryAnalyst(
					loggedInUser.getRegulatoryAnalyst());
		// Need ValidationMessage for contentOwner
		
		if (form.getCustomFields().size() > 0) {
			
			List<CustomFieldValue> customFieldValues = new ArrayList<CustomFieldValue>();
			for (com.softech.vu360.lms.web.controller.model.customfield.CustomField customField :form.getCustomFields()){

				if(customField.getCustomFieldRef() instanceof MultiSelectCustomField){

					MultiSelectCustomField multiSelectCustomField = (MultiSelectCustomField)customField.getCustomFieldRef();
					if (multiSelectCustomField.getCheckBox()){

						List<CustomFieldValueChoice> customFieldValueChoices=new ArrayList<CustomFieldValueChoice>();
						for (com.softech.vu360.lms.web.controller.model.customfield.CustomFieldValueChoice  customFieldValueChoice : customField.getCustomFieldValueChoices()){

							if (customFieldValueChoice.isSelected()){
								CustomFieldValueChoice customFieldValueChoiceRef = customFieldValueChoice.getCustomFieldValueChoiceRef();
								customFieldValueChoices.add(customFieldValueChoiceRef);
							}

						}
						CustomFieldValue customFieldValue = customField.getCustomFieldValueRef();
						Object value = customFieldValue.getValue();
						customFieldValue.setCustomField(customField.getCustomFieldRef());
						/*  @added by Dyutiman
						 *  for Encryption...
						 */
						if( customField.getCustomFieldRef().getFieldEncrypted() ) {
							customFieldValue.setValue(value);
						}
						customFieldValue.setValueItems(customFieldValueChoices);
						customFieldValues.add(customFieldValue);
						
					} else {
						List<CustomFieldValueChoice> customFieldValueChoices = new ArrayList<CustomFieldValueChoice>();
						if(customField.getSelectedChoices() != null){
							Map<Long,CustomFieldValueChoice> customFieldValueChoiceMap = new HashMap<Long,CustomFieldValueChoice>();
							for (com.softech.vu360.lms.web.controller.model.customfield.CustomFieldValueChoice  customFieldValueChoice : customField.getCustomFieldValueChoices()){
								customFieldValueChoiceMap.put(customFieldValueChoice.getCustomFieldValueChoiceRef().getId(), customFieldValueChoice.getCustomFieldValueChoiceRef());
							}

							for(String selectedChoiceIdString : customField.getSelectedChoices()){
								if(customFieldValueChoiceMap.containsKey(new Long(selectedChoiceIdString))){
									CustomFieldValueChoice customFieldValueChoiceRef = customFieldValueChoiceMap.get(new Long(selectedChoiceIdString));
									customFieldValueChoices.add(customFieldValueChoiceRef);
								}
							}
						}
						CustomFieldValue customFieldValue = customField.getCustomFieldValueRef();
						Object value = customFieldValue.getValue();
						customFieldValue.setCustomField(customField.getCustomFieldRef());
						customFieldValue.setValueItems(customFieldValueChoices);
						/*
						 *  for Encryption...
						 */
						if( customField.getCustomFieldRef().getFieldEncrypted() ) {
							customFieldValue.setValue(value);
						}
						customFieldValues.add(customFieldValue);
					}

				} else {
					CustomFieldValue customFieldValue = customField.getCustomFieldValueRef();
					Object value = customFieldValue.getValue();
					customFieldValue.setCustomField(customField.getCustomFieldRef());
					/*
					 *  for Encryption...
					 */
					if( customField.getCustomFieldRef().getFieldEncrypted() ) {
						customFieldValue.setValue(value);
					}
					customFieldValues.add(customFieldValue);
				}
			}
			if (customFieldValues.size()>0){
				regulator.setCustomfieldValues(customFieldValues);
			}
		}

		if( contentOwner != null ) {
			regulator.setContentOwner(contentOwner);
			if(regulator.getJurisdiction().equalsIgnoreCase("other")){
				regulator.setJurisdiction(regulator.getOtherJurisdiction());
			}
			Regulator savedRegulator = accreditationService.saveRegulator(regulator);
			/*Contact newContact = form.getContact();
			newContact.setRegulator(savedRegulator);
			accreditationService.saveContact(newContact);*/
		}

		return new ModelAndView(finishTemplate);
	}


	protected void validatePage(Object command, Errors errors, int page, boolean finish) {

		AddRegulatorValidator validator = (AddRegulatorValidator)this.getValidator();
		RegulatorForm form = (RegulatorForm)command;
		errors.setNestedPath("");
		switch(page) {
		
		case 0:
			if( form.getEventSource().equalsIgnoreCase("true") ) {
				validator.validateFirstPage(form, errors);
				if (form.getCustomFields().size()>0){
					validator.validateCustomFields(form.getCustomFields(), errors);
				}
			}	
			break;
		case 1:
			/*if( form.getEventSource().equalsIgnoreCase("true") ) {
				validator.validateSecondPage(form, errors);
			}*/	
			break;
		case 2:
			break;
		default:
			break;
		}
		super.validatePage(command, errors, page, finish);
	}

	protected ModelAndView processCancel(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
	throws Exception {
		log.debug("IN processCancel");
		return new ModelAndView(cancelTemplate);
	}

	public String getCancelTemplate() {
		return cancelTemplate;
	}

	public void setCancelTemplate(String cancelTemplate) {
		this.cancelTemplate = cancelTemplate;
	}

	public AccreditationService getAccreditationService() {
		return accreditationService;
	}

	public void setAccreditationService(AccreditationService accreditationService) {
		this.accreditationService = accreditationService;
	}

	public String getFinishTemplate() {
		return finishTemplate;
	}

	public void setFinishTemplate(String finishTemplate) {
		this.finishTemplate = finishTemplate;
	}

}