package com.softech.vu360.lms.web.controller.validator.Accreditation;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.softech.vu360.lms.model.Contact;
import com.softech.vu360.lms.model.CustomField;
import com.softech.vu360.lms.model.CustomFieldValue;
import com.softech.vu360.lms.model.DateTimeCustomField;
import com.softech.vu360.lms.model.Document;
import com.softech.vu360.lms.model.MultiSelectCustomField;
import com.softech.vu360.lms.model.NumericCusomField;
import com.softech.vu360.lms.model.Regulator;
import com.softech.vu360.lms.model.SSNCustomFiled;
import com.softech.vu360.lms.web.controller.model.accreditation.RegulatorForm;
import com.softech.vu360.util.CustomFieldValidationUtil;
import com.softech.vu360.util.FieldsValidation;

/**
 * @author Dyutiman
 * created on 25-june-2009
 *
 */
public class EditRegulatorValidator implements Validator {

	private static final Logger log = Logger.getLogger(EditRegulatorValidator.class.getName());

	@SuppressWarnings("unchecked")
	public boolean supports(Class clazz) {
		return RegulatorForm.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		RegulatorForm form = (RegulatorForm)obj;
		validateSummaryPage(form, errors);
	}
	
	// [1/31/2011] LMS-8794 :: Accreditation Mode > Edit Regulator: System is giving validation message although fields have been specified.
	public void validateSummaryPage(RegulatorForm form, Errors errors) {

		Regulator regulator = form.getRegulator();
		if( StringUtils.isBlank(regulator.getName()) ) {
			errors.setNestedPath("regulator");
			errors.rejectValue("name", "error.addRegulator.name","");
		} 
		if( StringUtils.isBlank(regulator.getPhone()) ) {
			errors.setNestedPath("regulator");
			errors.rejectValue("phone", "error.addRegulator.phone","");
		} 
		if( !StringUtils.isBlank(regulator.getEmailAddress()) ) {
			if(!FieldsValidation.isEmailValid(regulator.getEmailAddress())){
				errors.setNestedPath("regulator");
				errors.rejectValue("emailAddress", "error.addRegulator.email.invalidformat","");
			}
		}                                       
//		if( StringUtils.isBlank(regulator.getJurisdiction()) ) {			
//				errors.setNestedPath("regulator");
//				errors.rejectValue("jurisdiction", "error.addRegulator.jurisdiction.blankJurisdiction","");			
//		}
		errors.setNestedPath("");
		if( StringUtils.isBlank(regulator.getAddress().getStreetAddress()) ) {
			errors.setNestedPath("regulator.address");
			errors.rejectValue("streetAddress", "error.addRegulator.address","");
		}
//		if( StringUtils.isBlank(regulator.getAddress2().getStreetAddress()) ) {
//			errors.setNestedPath("regulator.address2");
//			errors.rejectValue("streetAddress", "error.addRegulator.address","");
//		} 

		if( StringUtils.isBlank(regulator.getAddress().getCity()) ) {
			errors.setNestedPath("regulator.address");
			errors.rejectValue("city", "error.addRegulator.city", "");
		} 
		
//		if( StringUtils.isBlank(regulator.getAddress2().getCity()) ) {
//			errors.setNestedPath("regulator.address2");
//			errors.rejectValue("city", "error.addRegulator.city", "");
//		} 

		if( StringUtils.isBlank(regulator.getAddress().getState())) {
			errors.setNestedPath("regulator.address");
			errors.rejectValue("state", "error.addRegulator.state","");
		} 
//		if( StringUtils.isBlank(regulator.getAddress2().getState())) {
//			errors.setNestedPath("regulator.address2");
//			errors.rejectValue("state", "error.addRegulator.state","");
//		}
		if( StringUtils.isBlank(regulator.getAddress().getZipcode())) {
			errors.setNestedPath("regulator.address");
			errors.rejectValue("zipcode", "error.addRegulator.zip","");
		}
		/*No need to validate zip code now*/
		//errors.setNestedPath("regulator.address");
		//validateZipCode(regulator.getAddress(), errors, form);
		//errors.setNestedPath("regulator.address2");
		//validateZipCode(regulator.getAddress2(), errors, form);
		
		if( StringUtils.isBlank(regulator.getAddress().getCountry()) ) {
			errors.setNestedPath("regulator.address");
			errors.rejectValue("country", "error.addRegulator.country","");
		} else if ( regulator.getAddress().getCountry().equalsIgnoreCase("Select a Country") ) {
			errors.setNestedPath("regulator.address");
			errors.rejectValue("country", "error.addRegulator.contactCountry","");
		}
//		if( StringUtils.isBlank(regulator.getAddress2().getCountry()) ) {
//			errors.setNestedPath("regulator.address2");
//			errors.rejectValue("country", "error.addRegulator.country","");
//		} else if ( regulator.getAddress().getCountry().equalsIgnoreCase("Select a Country") ) {
//			errors.setNestedPath("regulator.address2");
//			errors.rejectValue("country", "error.addRegulator.contactCountry","");
//		}
		errors.setNestedPath("");
	}

	public void validateCustomFields( List<com.softech.vu360.lms.web.controller.model.customfield.CustomField> customFields, Errors errors ) {
		int fieldindex = 0;
		if ( customFields.size() > 0 ) {

			for (com.softech.vu360.lms.web.controller.model.customfield.CustomField tempCustomField : customFields){

				CustomField customField = tempCustomField.getCustomFieldRef();
				CustomFieldValue customFieldValue = tempCustomField.getCustomFieldValueRef();

				if (customField.getFieldRequired()){
					if(customField instanceof MultiSelectCustomField){

						if (((MultiSelectCustomField) customField).getCheckBox()){
							int count=0;
							for (com.softech.vu360.lms.web.controller.model.customfield.CustomFieldValueChoice  customFieldValueChoice : tempCustomField.getCustomFieldValueChoices()){
								if (customFieldValueChoice.isSelected()){count=count+1;}
							}
							if(count==0){
								errors.rejectValue("customFields["+fieldindex+"].customFieldValueRef.value", "custom.field.required", "Please provide a value for the '"+customField.getFieldLabel()+"' field.");
								tempCustomField.setStatus(2);
							}else{
								tempCustomField.setStatus(1);
							}
						} else {
							if(tempCustomField.getSelectedChoices() == null){
								errors.rejectValue("customFields["+fieldindex+"].selectedChoices", "custom.field.required", "Please provide a value for the '"+customField.getFieldLabel()+"' field.");
								tempCustomField.setStatus(2);
							}else if (tempCustomField.getSelectedChoices().length==0){
								errors.rejectValue("customFields["+fieldindex+"].selectedChoices", "custom.field.required", "Please provide a value for the '"+customField.getFieldLabel()+"' field.");
								tempCustomField.setStatus(2);
							}else{
								tempCustomField.setStatus(1);
							}
						}
					} else {
						/*Object[] errorArgs = new Object[1];
						errorArgs[0] = customField.getFieldLabel();
						ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customFields["+fieldindex+"].customFieldValueRef.value" , "custom.field.required", errorArgs,customField.getFieldLabel()+" is required");*/
						if (customFieldValue.getValue()==null){
							errors.rejectValue("customFields["+fieldindex+"].customFieldValueRef.value", "custom.field.required", "Please provide a value for the '"+customField.getFieldLabel()+"' field.");
							tempCustomField.setStatus(2);
						}else if(StringUtils.isBlank(customFieldValue.getValue().toString())){
							errors.rejectValue("customFields["+fieldindex+"].customFieldValueRef.value", "custom.field.required", "Please provide a value for the '"+customField.getFieldLabel()+"' field.");
							tempCustomField.setStatus(2);
						}else{
							tempCustomField.setStatus(1);
						}
					}
				}
				if(customField instanceof NumericCusomField){
					if(customFieldValue.getValue()!=null){
						if(StringUtils.isNotBlank(customFieldValue.getValue().toString())){
							if (!CustomFieldValidationUtil.isNumeric(customFieldValue.getValue().toString())){
								errors.rejectValue("customFields["+fieldindex+"].customFieldValueRef.value", "custom.field.required", "'"+customField.getFieldLabel()+" is a invaid number.");
								tempCustomField.setStatus(2);
							}else {
								tempCustomField.setStatus(1);
							}
						}
					}
				}else if(customField instanceof DateTimeCustomField){
					if(customFieldValue.getValue()!=null){
						if(StringUtils.isNotBlank(customFieldValue.getValue().toString())){
							if (!CustomFieldValidationUtil.isValidDate(customFieldValue.getValue().toString(),true,"MM/dd/yyyy")){
								errors.rejectValue("customFields["+fieldindex+"].customFieldValueRef.value", "custom.field.required", "'"+customField.getFieldLabel()+"' is a invaid date.");
								tempCustomField.setStatus(2);
							}else{
								tempCustomField.setStatus(1);
							}
						}
					}
				}else if (customField instanceof SSNCustomFiled){
					if(customFieldValue.getValue()!=null){
						if(StringUtils.isNotBlank(customFieldValue.getValue().toString())){
							if (!CustomFieldValidationUtil.isSSNValid(customFieldValue.getValue().toString())){
								errors.rejectValue("customFields["+fieldindex+"].customFieldValueRef.value", "custom.field.required", "'"+customField.getFieldLabel()+"' is a invaid SSN Number.");
								tempCustomField.setStatus(2);
							}else{
								tempCustomField.setStatus(1);
							}
						}
					}
				}
				fieldindex = fieldindex+1;
			}
		}
	}

	// [1/31/2011] LMS-8794 :: Accreditation Mode > Edit Regulator: System is giving validation message although fields have been specified.
	public void validateContact(RegulatorForm form, Errors errors) {

		Contact contact = form.getContact();
		errors.setNestedPath("contact");
		if( StringUtils.isBlank(contact.getFirstName()) ) {
			errors.rejectValue("firstName", "error.addRegulator.firstName");
		}
		/*if( StringUtils.isBlank(contact.getMiddleName()) ) {
			errors.rejectValue("middleName", "error.addRegulator.middleName");
		}*/
		if( StringUtils.isBlank(contact.getLastName()) ) {
			errors.rejectValue("lastName", "error.addRegulator.lastName");
		}
		if( StringUtils.isBlank(contact.getPhone()) ) {
			errors.rejectValue("phone", "error.addRegulator.phone");
		}
		/*if( StringUtils.isBlank(contact.getPhoneExt())) {
			errors.rejectValue("phoneExt", "error.addRegulator.phoneExt");
		}*/

		/*if( StringUtils.isBlank(contact.getWebsiteURL()) ) {
			errors.rejectValue("websiteURL", "error.addRegulator.websiteURL");
		}*/		
		if(!FieldsValidation.isEmailValid(contact.getEmailAddress())){
			errors.setNestedPath("contact");
			errors.rejectValue("emailAddress", "error.addRegulator.email.invalidformat");
		}
		errors.setNestedPath("");
		errors.setNestedPath("contact.address");
		if( StringUtils.isBlank(contact.getAddress().getStreetAddress()) ) {
			errors.rejectValue("streetAddress", "error.addRegulator.address");
		}
//		errors.setNestedPath("contact.address2");
//		if( StringUtils.isBlank(contact.getAddress2().getStreetAddress()) ) {
//			errors.rejectValue("streetAddress", "error.addRegulator.address");
//		} 
//		else if (FieldsValidation.isInValidGlobalName(contact.getAddress().getStreetAddress())){
//			errors.rejectValue("streetAddress", "error.addRegulator.streetAddress1.invalidText");
//		}
		/*if( contact.getAddress().getStreetAddress2() == null || 
				contact.getAddress().getStreetAddress2().isEmpty() ) {
			errors.rejectValue("streetAddress2", "error.addRegulator.contactAddress2");
		}else */
//		if ( !StringUtils.isBlank(contact.getAddress().getStreetAddress2()) ) {
//			if (FieldsValidation.isInValidGlobalName(contact.getAddress().getStreetAddress2())){
//				errors.rejectValue("streetAddress2", "error.addRegulator.streetAddress2.invalidText");
//			}
//		}
		errors.setNestedPath("contact.address");
		if( StringUtils.isBlank(contact.getAddress().getCity()) ) {
			errors.rejectValue("city", "error.addRegulator.contactCity");
		}
		
//		errors.setNestedPath("contact.address2");
//		if( StringUtils.isBlank(contact.getAddress2().getCity()) ) {
//			errors.rejectValue("city", "error.addRegulator.contactCity");
//		} 
//		else if ( FieldsValidation.isInValidGlobalName(contact.getAddress().getCity()) ) {
//			errors.rejectValue("city", "error.addRegulator.city.invalidText");
//		}
		errors.setNestedPath("contact.address");
		if( StringUtils.isBlank(contact.getAddress().getState()) ) {
			errors.rejectValue("state", "error.addRegulator.contactState");
		}
//		errors.setNestedPath("contact.address2");
//		if( StringUtils.isBlank(contact.getAddress2().getState()) ) {
//			errors.rejectValue("state", "error.addRegulator.contactState");
//		}
		/*
		 *  validation of zipcode will not be done if country is UAE 
		 */
		errors.setNestedPath("contact.address");
		if( StringUtils.isBlank(contact.getAddress().getZipcode())) {
			errors.rejectValue("zipcode", "error.addNewLearner.zipcode1.all.invalidText");
		}
//		validateZipCode(contact.getAddress(),errors,form);
//		errors.setNestedPath("contact.address2");
//		validateZipCode(contact.getAddress2(),errors,form);
		/*else if (!StringUtils.isNumeric(contact.getAddress().getZipcode())){
			errors.rejectValue("zipcode", "error.addRegulator.zipcode.invalidText");
		}*/
		errors.setNestedPath("contact.address");	
		if( StringUtils.isBlank(contact.getAddress().getCountry()) ) {
			errors.rejectValue("country", "error.addRegulator.contactCountry");
		}
//		errors.setNestedPath("contact.address2");	
//		if( StringUtils.isBlank(contact.getAddress2().getCountry()) ) {
//			errors.rejectValue("country", "error.addRegulator.contactCountry");
//		}
		errors.setNestedPath("");
	}

//	private void validateZipCode(Address address,Errors errors,RegulatorForm form){
//		if( StringUtils.isNotBlank(address.getCountry())&& 
//				!address.getCountry().equalsIgnoreCase("AE") &&
//				!address.getCountry().equalsIgnoreCase("United Arab Emirates") ) {
//
//			if( StringUtils.isBlank(address.getZipcode()) ) {
//				errors.rejectValue("zipcode", "error.addRegulator.contactZip");
//			} else {
//
//				if( form.getBrander() != null ) {
//
//					String country = address.getCountry();
//					String zipCode = address.getZipcode();
//
//					if( ! ZipCodeValidator.isZipCodeValid(country, zipCode, form.getBrander(), log) ) {
//						log.debug("ZIP CODE FAILED" );
//						errors.rejectValue("zipcode", ZipCodeValidator.getCountryZipCodeError(
//								address.getCountry(), form.getBrander()), "");
//					}				
//				}
//			}
//		}
//	}
	public void validateDocument(RegulatorForm form, Errors errors) {

		Document document = form.getDocument();
		errors.setNestedPath("document");
		if( StringUtils.isBlank(document.getName()) ) {
			errors.rejectValue("name", "error.AddDocuments.name");
		} else if (FieldsValidation.isInValidGlobalName(document.getName() )){
			errors.rejectValue("name", "error.editRegulator.document.documentName.invalidText");
		}
		if( StringUtils.isNotBlank(document.getDescription()) ) {
			if( FieldsValidation.isInValidGlobalName(document.getDescription()) ) {
				errors.rejectValue("description", "error.AddDocuments.description.invalidText");
			}
		}
		errors.setNestedPath("");
	}

}