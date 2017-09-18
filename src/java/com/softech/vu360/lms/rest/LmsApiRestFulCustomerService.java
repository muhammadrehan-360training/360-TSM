package com.softech.vu360.lms.rest;

import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.xml.datatype.XMLGregorianCalendar;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.softech.vu360.lms.model.Brand;
import com.softech.vu360.lms.model.Distributor;
import com.softech.vu360.lms.model.DistributorPreferences;
import com.softech.vu360.lms.model.Language;
import com.softech.vu360.lms.model.VU360User;
import com.softech.vu360.lms.model.lmsapi.LmsApiCustomer;
import com.softech.vu360.lms.model.lmsapi.LmsApiDistributor;
import com.softech.vu360.lms.rest.model.lmsapi.customer.AddCustomerResponse;
import com.softech.vu360.lms.rest.model.lmsapi.customer.AddCustomerRestfulRequest;
import com.softech.vu360.lms.rest.model.lmsapi.customer.Address;
import com.softech.vu360.lms.rest.model.lmsapi.customer.Customer;
import com.softech.vu360.lms.rest.model.lmsapi.customer.Customers;
import com.softech.vu360.lms.rest.model.lmsapi.customer.RegisterCustomer;
import com.softech.vu360.lms.rest.model.lmsapi.customer.RegisterCustomers;
import com.softech.vu360.lms.rest.model.lmsapi.customer.TransactionResultType;
import com.softech.vu360.lms.rest.transformers.Response;
import com.softech.vu360.lms.service.ActiveDirectoryService;
import com.softech.vu360.lms.service.BrandService;
import com.softech.vu360.lms.service.CourseAndCourseGroupService;
import com.softech.vu360.lms.service.CustomerService;
import com.softech.vu360.lms.service.DistributorService;
import com.softech.vu360.lms.service.EnrollmentService;
import com.softech.vu360.lms.service.EntitlementService;
import com.softech.vu360.lms.service.LearnerService;
import com.softech.vu360.lms.service.OrgGroupLearnerGroupService;
import com.softech.vu360.lms.service.SecurityAndRolesService;
import com.softech.vu360.lms.service.StatisticsService;
import com.softech.vu360.lms.service.SynchronousClassService;
import com.softech.vu360.lms.service.TrainingPlanService;
import com.softech.vu360.lms.service.VU360UserService;
import com.softech.vu360.lms.service.lmsapi.LmsApiCustomerService;
import com.softech.vu360.lms.service.lmsapi.LmsApiDistributorService;
import com.softech.vu360.lms.service.lmsapi.OrgGroupServiceLmsApi;
import com.softech.vu360.lms.service.lmsapi.SecurityAndRolesServiceLmsApi;
import com.softech.vu360.lms.service.lmsapi.UserGroupServiceLmsApi;
import com.softech.vu360.lms.web.controller.model.AddCustomerForm;
import com.softech.vu360.lms.web.controller.validator.ZipCodeValidator;
import com.softech.vu360.util.AsyncTaskExecutorWrapper;
import com.softech.vu360.util.Brander;
import com.softech.vu360.util.FieldsValidation;
import com.softech.vu360.util.GUIDGeneratorUtil;
import com.softech.vu360.util.LearnersToBeMailedService;
import com.softech.vu360.util.VU360Branding;

import net.sf.json.JSONObject;

/**
 * 
 * @author haider.ali
 * this is restful version of lmsApi web-service (http://localhost:8080/lms/service/lms-api/lmsApi.wsdl)
 */
@RestController
@RequestMapping(value = "/lmsApi")
public class LmsApiRestFulCustomerService {

	@Inject
	private CustomerService customerService;
	@Inject
	private DistributorService distributorService; 
	@Inject
	private TrainingPlanService trainingPlanService;
	@Inject
	private CourseAndCourseGroupService courseCourseGrpService;
	@Inject
	private EntitlementService entitlementService;
	@Inject
	private SynchronousClassService synchronousClassService;
	@Inject
	private OrgGroupLearnerGroupService orgGroupLearnerGroupService;
	@Inject
	private VU360UserService vu360UserService;
	@Inject
	private EnrollmentService enrollmentService;
	@Inject
	private LearnersToBeMailedService learnersToBeMailedService;
	@Inject
	private AsyncTaskExecutorWrapper asyncTaskExecutorWrapper;
	@Inject
	private StatisticsService statsService;
	@Inject
	private ActiveDirectoryService activeDirectoryService;
	@Inject
	private BrandService brandService;
	@Inject
	private LmsApiDistributorService lmsApiDistributorService;
	@Inject
	private LmsApiCustomerService lmsApiCustomerService;
	@Inject
	private SecurityAndRolesServiceLmsApi securityAndRolesServiceLmsApi;
	@Inject
	private OrgGroupServiceLmsApi orgGroupServiceLmsApi;
	@Inject
	private UserGroupServiceLmsApi userGroupServiceLmsApi;
	@Inject
	private VU360UserService userService;
	@Inject
	private SecurityAndRolesService securityService;
	@Inject
	private LearnerService learnerService;
	
	private static final Logger log = Logger.getLogger(LmsApiRestFulCustomerService.class.getName());
	
	private static final String ERROR_CODE_ONE  = "1";
	private static final String ERROR_CODE_ZERO  = "0";
	private static final String SUCCESS = "Success";
	private static final String NO_LEARNER_FOUND_FOR_ENROLLMENT_ERROR = "No learner found for enrollment";
	private static final String NO_TRAINING_PLAN_FOUND_ERROR  = "No training Plan found";
	private static final String NO_MANAGER_FOUND_FOR_CUSTOMER_ERROR  = "No manager found for customer";
	private static final String GROUP_SPLITTER = ">";
	

	/**
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<AddCustomerResponse> addCustomer(@RequestBody AddCustomerRestfulRequest request) {
		
		log.debug("Add Customer Restful Request start");
		final String REQUEST_END_MESSAGE = "Add Customer restful Request end";
		AddCustomerResponse response = new AddCustomerResponse();
		RegisterCustomers registerCustomers = new RegisterCustomers();
		List<RegisterCustomer> registerCustomerList = new ArrayList<RegisterCustomer>();
		Customers customers = request.getCustomers();
		BigInteger resellerId = request.getResellerId();
		boolean assigneMangerTF = request.isAssignManger();
		
		List<Customer> customerList = customers.getCustomer();
		try {
			
			Distributor distributor = distributorService.getDistributorById(new Long(resellerId.longValue()));
			if(distributor == null){
		    	String errorMessage = "Distributor not found";
		    	response.setTransactionResultMessage(errorMessage);
				RegisterCustomer registerCustomerError = getRegisterCustomerError(ERROR_CODE_ONE, errorMessage, "");
				registerCustomerList.add(registerCustomerError);
				return new ResponseEntity<AddCustomerResponse>(response, HttpStatus.BAD_REQUEST);
			}
			for (Customer customer: customerList) {
				com.softech.vu360.lms.model.Customer newCustomer = null;
				try {
					if (addCustomerValidation(customer)) {
						newCustomer = createNewCustomer(assigneMangerTF, distributor, customer);	
					}
				} catch (Exception e) {
					String errorMessage = e.getMessage();
					String userName = customer.getUserName();
					RegisterCustomer registerCustomerError = getRegisterCustomerError(ERROR_CODE_ONE, errorMessage, userName);
					registerCustomerList.add(registerCustomerError);
					log.info("***************"+errorMessage+"***************");
					continue;
				}
				
				if (newCustomer != null) {
					
					String generatedApiKey = null;
					boolean apiEnabled = customer.isApiEnabled();
					if (apiEnabled) {
						String environment = "Development";
						String privilegeType = null;
						Map<String, String> privilegeMap = new HashMap<String, String>();
						privilegeMap.put("type", privilegeType);
					   
					    JSONObject json = new JSONObject();
					    json.accumulateAll(privilegeMap);
					     
					    generatedApiKey = generateApiKey();
					    //String privilege = json.toString();
					     
					    String privilege = null;
						
						//LmsApiCustomer lmsApiCustomer = addLmsApiCustomer(newCustomer, environment, privilegeType);
					    try {
					    	LmsApiCustomer lmsApiCustomer = addLmsApiCustomer(newCustomer, generatedApiKey, environment, privilege); 
					    } catch (Exception e) {
					    	String errorMessage = e.getMessage();
							String userName = customer.getUserName();
							RegisterCustomer registerCustomerError = getRegisterCustomerError(ERROR_CODE_ONE, errorMessage, userName);
							registerCustomerList.add(registerCustomerError);
							log.info("***************"+errorMessage+"***************");
							continue;
					    }
					    
					}
					
					String customerCode = newCustomer.getCustomerCode();
					RegisterCustomer registerCustomer = getRegisterCustomer(customer, customerCode);
					if (generatedApiKey != null) {
						registerCustomer.setApiKey(generatedApiKey);
					}
					registerCustomerList.add(registerCustomer);
				}
				
			}	//end of for()
		} catch (Exception e) {
			response.setTransactionResult(TransactionResultType.FAILURE);
			response.setTransactionResultMessage(e.getMessage());
			log.info("***************"+e.getMessage()+"***************");
			return new ResponseEntity<AddCustomerResponse>(response, HttpStatus.BAD_REQUEST);
		}
		
		response.setTransactionResult(TransactionResultType.SUCCESS);
		response.setTransactionResultMessage(REQUEST_END_MESSAGE);
		registerCustomers.setRegisterCustomer(registerCustomerList);
		response.setRegisterCustomers(registerCustomers);
		return new ResponseEntity<AddCustomerResponse>(response, HttpStatus.ACCEPTED);
		
	}
	
	private LmsApiDistributor findLmsApiDistributorByKey(String apiKey) throws Exception {
		LmsApiDistributor lmsApiDistributor = lmsApiDistributorService.findApiKey(apiKey);
		return lmsApiDistributor;
	}
	
	private boolean resellerApiValidation(LmsApiDistributor lmsApiDistributor, Long resellerId) throws Exception {
		
		String errorMessage = null;
		if (lmsApiDistributor == null) {
			errorMessage = "No Api Key found. Unauthorized Access";
			throwException(errorMessage);
		}
		
		Distributor distributor = lmsApiDistributor.getDistributor();
		if (distributor == null) {
			errorMessage = "No Reseller found for reseller Id: " + resellerId;
			throwException(errorMessage);
		}
		
		if (!(distributor.getId().equals(resellerId))){
			errorMessage = "Invalid reseller Id: " + resellerId;
			throwException(errorMessage);
		}
		
		if (!distributor.getLmsApiEnabledTF().booleanValue()) {
			errorMessage = "LMS API is not enable for resellerId: " + distributor.getId();
			log.debug(errorMessage);
			throwException(errorMessage);
		}
		
		return true;
	}
	
	private void throwException(String error) throws Exception {
		log.debug(error);
		throw new Exception(error);
	}
	
	private boolean addCustomerValidation(Customer customer) throws Exception {
		
		String error = null;
		String accountExpiryDate = null;
		//Brander brander = getBrander(null, null);
		com.softech.vu360.lms.rest.model.lmsapi.customer.Company company = customer.getCompany();
		com.softech.vu360.lms.rest.model.lmsapi.customer.Manager manager = customer.getManager();
		Address  address1 = customer.getAddress();
		Address alternateAddress = customer.getAlternateAddress();
		String userName = customer.getUserName();
		String password = customer.getPassword();
		
		XMLGregorianCalendar accountExpirationDate = customer.getAccountExpirationDate();
		if (accountExpirationDate != null) {
			accountExpiryDate = accountExpirationDate.toString();
		}
		
		if (company == null) {
			error = "company element is required";
			throwException(error);
		}
	
		if (manager == null) {
			error = "manager element is required";
			throwException(error);
		}
	
		String companyName = company.getName();
		String managerFirstName = manager.getManagerFirstName();
		String managerLastName = manager.getManagerLastName();
		String extension = manager.getExtension();
		
		if (StringUtils.isEmpty(companyName) || StringUtils.isBlank(companyName)){
			error = "Company name required";
			throwException(error);
		} else if (FieldsValidation.isInValidCustomerName(companyName)){
			error = "Invalid company name";
			throwException(error);
		}
		
		nameValidation(managerFirstName, null, managerLastName);
		emailValidation(userName);
		
		VU360User existingUser = vu360UserService.findUserByUserName(userName);
		if (existingUser != null) {
			error = "user name already exists";
			throwException(error);
		}
		
		passwordValidation(password);
		extensionValidation(extension);
		addressValidation(address1);
		addressValidation(alternateAddress);
		accountExpirationDateValidation(accountExpiryDate);
		
		 return true;
	}
	
	private boolean nameValidation(String firstName, String middleName, String lastName) throws Exception {
		String error = null;
		if (StringUtils.isEmpty(firstName) || StringUtils.isBlank(firstName)) {
			error = "First Name required";
			throwException(error);
		} 
		else if (FieldsValidation.isInValidGlobalName(firstName)){
			error = "Bad characters not allowed (First name)";
			throwException(error);
		}
		
		if (StringUtils.isNotEmpty(middleName) || StringUtils.isNotBlank(middleName)){
			if (FieldsValidation.isInValidGlobalName(middleName)){
				error = "Bad characters not allowed (Middle name)";
				throwException(error);
			}
		}

		if (StringUtils.isEmpty(lastName) || StringUtils.isBlank(lastName)){
			error = "Last Name required";
			throwException(error);
		}
		else if (FieldsValidation.isInValidGlobalName(lastName)){
			error = "Bad characters not allowed (Last name)";
			throwException(error);
		}
		return true;
	}
	
	private boolean passwordValidation(String password) throws Exception {
		String error = null;
		if (StringUtils.isEmpty(password) || StringUtils.isBlank(password)) {
			error = "Password required";
			throwException(error);
        }
		
		isCorrectPassword(password);
		return true;
	}
	
	private boolean isCorrectPassword(String password) throws Exception {
		if (password != null) {
			if ( !FieldsValidation.isPasswordCorrect(password) ) {
				String error = "Password must contain alphabets and numbers and must be at least 8 characters long";
	        	throwException(error);
	        }
		}
		return true;
	}
	
	/*private boolean nameValidation(String firstName, String middleName, String lastName) throws Exception {
		String error = null;
		if (StringUtils.isEmpty(firstName) || StringUtils.isBlank(firstName)) {
			error = "First Name required";
			throwException(error);
		} 
		else if (FieldsValidation.isInValidGlobalName(firstName)){
			error = "Bad characters not allowed (First name)";
			throwException(error);
		}
		
		if (StringUtils.isNotEmpty(middleName) || StringUtils.isNotBlank(middleName)){
			if (FieldsValidation.isInValidGlobalName(middleName)){
				error = "Bad characters not allowed (Middle name)";
				throwException(error);
			}
		}

		if (StringUtils.isEmpty(lastName) || StringUtils.isBlank(lastName)){
			error = "Last Name required";
			throwException(error);
		}
		else if (FieldsValidation.isInValidGlobalName(lastName)){
			error = "Bad characters not allowed (Last name)";
			throwException(error);
		}
		return true;
	}*/
	
	private boolean extensionValidation(String phoneExtension) throws Exception {
		String error = null;
		if (StringUtils.isNotEmpty(phoneExtension) || StringUtils.isNotBlank(phoneExtension)){
			if (FieldsValidation.isInValidMobPhone((phoneExtension))){
				error = "Bad characters not allowed (Phone Extension)";
				throwException(error);
			}
		}
		return true;
	}
	
	private boolean addressValidation(Address address) throws Exception {
		if (address != null) {
			String error = null;
			Brander brander = getBrander(null, null);
			String country = address.getCountry();
			String zipCode = address.getZipCode();
			String streetAddress1 = address.getStreetAddress1();
			String streetAddress2 = address.getStreetAddress2();
			String city = address.getCity();
			
			if (StringUtils.isNotEmpty(streetAddress1) && StringUtils.isNotBlank(streetAddress1)){
				if ((FieldsValidation.isInValidAddress((streetAddress1)))){
					error = "Bad characters not allowed (Street Address1)";
					throwException(error);
				}
			}
			
			if (StringUtils.isNotEmpty(streetAddress2) && StringUtils.isNotBlank(streetAddress2)){
				if ((FieldsValidation.isInValidAddress((streetAddress2)))){
					error = "Bad characters not allowed (Street Address2)";
					throwException(error);
				}
			}
			
			if (StringUtils.isNotEmpty(country) && StringUtils.isNotBlank(country) && StringUtils.isNotEmpty(zipCode) && StringUtils.isNotBlank(zipCode)) {
				//	for learner address 1 Zip Code
				if (!ZipCodeValidator.isZipCodeValid(country, zipCode, brander, log) ) {
		        	log.debug("ZIP CODE FAILED" );
		        	error = ZipCodeValidator.getCountryZipCodeError(country, brander);
		        	if (error == "") {
		        		error = "ZIP CODE FAILED";
		        	}
		        	throwException(error);
		        }	
			}
			
			if (StringUtils.isNotEmpty(city) && StringUtils.isNotBlank(city)){
				if (FieldsValidation.isInValidGlobalName(city)){
					error = "Bad characters not allowed (City)";
					throwException(error);
				}
			}	
		} //end of if (address != null)
		return true;
	}
	
	private static Brander getBrander(String brandName, com.softech.vu360.lms.vo.Language language ) throws Exception {
		if (StringUtils.isEmpty(brandName) && StringUtils.isBlank(brandName)) {
			brandName = "default";
		}
		
		if (language == null) {
			language = new com.softech.vu360.lms.vo.Language();
			language.setLanguage(Language.DEFAULT_LANG);
		}
		Brander brander = VU360Branding.getInstance().getBrander(brandName, new com.softech.vu360.lms.vo.Language());
		return brander;
	}
	
	private boolean accountExpirationDateValidation(String accountExpiryDate) throws Exception {
		if (StringUtils.isNotEmpty(accountExpiryDate) && StringUtils.isNotBlank(accountExpiryDate)){
			String error = null;
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date expirationDate = null;
			Date todayDate = new Date();
			try {
				expirationDate = formatter.parse(accountExpiryDate);
				if( expirationDate.before(todayDate)  ) {
					error = "Invalid Date";
					throwException(error);
				}
			} catch (ParseException e) {
				e.printStackTrace();
				error = e.getMessage() + ". Provide date in yyyy-MM-dd format";
				throwException(error);
			}	
		}
		return true;
	}
	
private com.softech.vu360.lms.model.Customer createNewCustomer(boolean assigneMangerTF, Distributor distributor, Customer customer) throws Exception {
		
		AddCustomerForm addCustomerForm = new AddCustomerForm();
		
		// By default customer preferences are copied from re seller's.
		setResellerPreferencesToAddCustomerForm(addCustomerForm, distributor);
		
		boolean accountStatus = false;
		com.softech.vu360.lms.rest.model.lmsapi.customer.Company company = customer.getCompany();
		com.softech.vu360.lms.rest.model.lmsapi.customer.Manager manager = customer.getManager();
		com.softech.vu360.lms.rest.model.lmsapi.customer.Address  address1 = customer.getAddress();
		com.softech.vu360.lms.rest.model.lmsapi.customer.Address  alternateAddress = customer.getAlternateAddress();
		String companyName = company.getName();
		String managerFirstName = manager.getManagerFirstName();
		String managerLastName = manager.getManagerLastName();
		String companyWebSite = company.getWebsite();
		String emailAddress = company.getEmail();
		String userName = customer.getUserName();
		String managerPhone = manager.getManagerPhone();
		String extension = manager.getExtension();
		String customerType = customer.getCustomerType().value();
		String companyAccountStatus = company.getAccountStatus().value();
		String password = customer.getPassword();
		boolean isAccountExpired = customer.isAccountExpired();
		boolean isAccountLocked = customer.isAccountLocked();
		boolean isChangePasswordOnNextLogin = customer.isChangePasswordOnNextLogin();
		boolean isAccountDisabled = customer.isAccountDisabled();
		boolean isVisibleOnReport = customer.isVisibleOnReport();
		
		BigInteger brandId = customer.getBrandId();
		if (brandId != null) {
			long branderId = brandId.longValue();
			Brand brand = brandService.getBrandById(branderId);
			if (brand == null) {
				addCustomerForm.setBrandId(0);
			} else {
				addCustomerForm.setBrandId(branderId);
			}
			
		} else {
			brandId = new BigInteger("0");
			long branderId = brandId.longValue();
			addCustomerForm.setBrandId(branderId);
		}
		
		if (address1 != null) {
			setAddressToAddCustomerForm(addCustomerForm, address1, true);
		} else {
			address1 = getEmptyAddress();
			setAddressToAddCustomerForm(addCustomerForm, address1, true);
		}
		
		if (alternateAddress != null) {
			setAddressToAddCustomerForm(addCustomerForm, alternateAddress, false);
		} else {
			alternateAddress = getEmptyAddress();
			setAddressToAddCustomerForm(addCustomerForm, alternateAddress, false);
		}
		
		String accountExpiryDate = null;
		/**
		 * We have date in ("yyyy-MM-dd") format but in the CustomerServiceImpl.java it requires date in ("MM/dd/yyyy") format.
		 * Here we are making date in the desired format by splitting date string.
		 */
		XMLGregorianCalendar accountExpirationDate = customer.getAccountExpirationDate();
		if (accountExpirationDate != null) {
			String expiryDate = accountExpirationDate.toString();
			if (expiryDate.indexOf("-") != -1) {
				///String[] dateArray = expiryDate.split("-");
				int year = accountExpirationDate.getYear();
				int month = accountExpirationDate.getMonth();
				int day = accountExpirationDate.getDay();
				accountExpiryDate = month + "/" + day + "/" + year;
			}
		}
		
		if (companyAccountStatus != null && companyAccountStatus.equalsIgnoreCase("Active")) {
			accountStatus = true;
		}
		//LMS-15930
		if (emailAddress == null) {
			emailAddress= "";
		}
		
		addCustomerForm.setCustomerName(companyName);
		addCustomerForm.setFirstName(managerFirstName);
		addCustomerForm.setLastName(managerLastName);
		addCustomerForm.setWesiteURL(companyWebSite);
		addCustomerForm.setEmailAdd(emailAddress);
		addCustomerForm.setPhone(managerPhone);
		addCustomerForm.setExt(extension);
		addCustomerForm.setCustomerType(customerType);
		addCustomerForm.setStatus(accountStatus);
	
		// In API we are not currently offering self authoring so it is false. If we offer self authoring then we must provide
		// VU360User that has admin rights
		addCustomerForm.setSelfAuthor(false);
		addCustomerForm.setLoginEmailID(userName);
		addCustomerForm.setPassword(password);
		addCustomerForm.setExpired(isAccountExpired);
		addCustomerForm.setLocked(isAccountLocked);
		addCustomerForm.setChangePassword(isChangePasswordOnNextLogin);
		addCustomerForm.setDisabled(isAccountDisabled);
		addCustomerForm.setReport(isVisibleOnReport);
		addCustomerForm.setExpirationDate(accountExpiryDate);
		addCustomerForm.setAssignMangerTF(assigneMangerTF);
		
		//VU360User user = null;
		Long userId=null;
		com.softech.vu360.lms.model.Customer registeredCustomer = customerService.addCustomer(userId, distributor, addCustomerForm);
		
		boolean apiEnabled = customer.isApiEnabled();
		
		if (apiEnabled) {
			registeredCustomer.setLmsApiEnabledTF(apiEnabled);
			registeredCustomer = customerService.updateCustomer(registeredCustomer);
		}
	
		return registeredCustomer;
	}

	private RegisterCustomer getRegisterCustomerError(String errorCode, String errorMessage, String userName) {
		log.debug(errorMessage);
		RegisterCustomer registerCustomerError = new RegisterCustomer();
		registerCustomerError.setErrorCode(errorCode);
		registerCustomerError.setErrorMessage(errorMessage);
		registerCustomerError.setUserName(userName);
		return registerCustomerError;	
	}
	
	private String generateApiKey() {
		return GUIDGeneratorUtil.generateGUID();
		//return "1234";
	}
	
	private LmsApiCustomer addLmsApiCustomer(com.softech.vu360.lms.model.Customer customer, String apiKey, String environment, String privilege) throws Exception {
		
		LmsApiCustomer lmsApiCustomer = new LmsApiCustomer();
		lmsApiCustomer.setCustomer(customer);
		lmsApiCustomer.setApiKey(apiKey);
		lmsApiCustomer.setEnvironment(environment);
		lmsApiCustomer.setPrivilege(privilege);
		
		LmsApiCustomer newLmsApiCustomer = lmsApiCustomerService.addLmsApiCustomer(lmsApiCustomer);
		return newLmsApiCustomer;
	}
	
	private void setResellerPreferencesToAddCustomerForm(AddCustomerForm addcustomerForm, Distributor distributor) throws Exception {
		DistributorPreferences dp = distributor.getDistributorPreferences();
		if( dp != null ) {
			addcustomerForm.setAudio(dp.isAudioEnabled());
			addcustomerForm.setAudioLocked(dp.isAudioLocked());
			addcustomerForm.setCaptioning(dp.isCaptioningEnabled());
			addcustomerForm.setCaptioningLocked(dp.isCaptioningLocked());
			if( dp.getBandwidth().equalsIgnoreCase("high") ) {
				addcustomerForm.setBandwidth(true);
			}	
			if( dp.getBandwidth().equalsIgnoreCase("low") ) {
				addcustomerForm.setBandwidth(false);
			}
			addcustomerForm.setBandwidthLocked(dp.isBandwidthLocked());
			addcustomerForm.setVideo(dp.isVedioEnabled());
			addcustomerForm.setVideoLocked(dp.isVideoLocked());
			addcustomerForm.setRegistrationEmails(dp.isEnableRegistrationEmailsForNewCustomers());
			addcustomerForm.setRegistrationEmailsLocked(dp.isRegistrationEmailLocked());
			addcustomerForm.setEnrollmentEmails(dp.isEnableEnrollmentEmailsForNewCustomers());
			addcustomerForm.setEnrollmentEmailsLocked(dp.isEnrollmentEmailLocked());
			addcustomerForm.setCourseCompCertificateEmails(dp.isCourseCompletionCertificateEmailEnabled() );
			addcustomerForm.setCourseCompCertificateEmailsLocked(dp.isCourseCompletionCertificateEmailLocked());
		}
	}
	
	
	private void setAddressToAddCustomerForm(AddCustomerForm addCustomerForm, Address address, boolean isAddress1) {
		String streetAddress1 = address.getStreetAddress1();
		String streetAddress2 = address.getStreetAddress2();
		String city = address.getCity();
		String country = address.getCountry();
		String state = address.getState();
		String zipCode = address.getZipCode();
		
		if (isAddress1) {
			addCustomerForm.setAddress1(streetAddress1);
			addCustomerForm.setAddress1a(streetAddress2);
			addCustomerForm.setCity1(city);
			addCustomerForm.setCountry1(country);
			addCustomerForm.setState1(state);
			addCustomerForm.setZip1(zipCode);
			addCustomerForm.setCountryLabel1(country);
			
		} else {
			addCustomerForm.setAddress2(streetAddress1);
			addCustomerForm.setAddress2a(streetAddress2);
			addCustomerForm.setCity2(city);
			addCustomerForm.setCountry2(country);
			addCustomerForm.setState2(state);
			addCustomerForm.setZip2(zipCode);
			addCustomerForm.setCountryLabel2(country);
		}
	}
	
	private Address getEmptyAddress() {
		Address address = new Address();
		address.setCity("");
		address.setCountry("");
		address.setState("");
		address.setStreetAddress1("");
		address.setStreetAddress2("");
		address.setZipCode("");
		return address;
	}
	
	private RegisterCustomer getRegisterCustomer(Customer customer, String customerCode) {
		com.softech.vu360.lms.rest.model.lmsapi.customer.Company company = customer.getCompany();
		String companyName = company.getName();
		String userName = customer.getUserName();
		
		RegisterCustomer registerCustomer = new RegisterCustomer();
		registerCustomer.setErrorCode(ERROR_CODE_ZERO);
		registerCustomer.setErrorMessage("");
		registerCustomer.setCustomerCode(customerCode);
		registerCustomer.setUserName(userName);
		registerCustomer.setCompany(company);
		registerCustomer.setOrganizationGroupName(companyName);
		return registerCustomer;
	}
	
	private boolean emailValidation(String emailAddress) throws Exception {
		String error = null;
		if (StringUtils.isEmpty(emailAddress) || StringUtils.isBlank(emailAddress)) {
			error = "Email address required";
			throwException(error);
		} else if (!FieldsValidation.isEmailValid(emailAddress)){
			error = "Invalid email address";
			throwException(error);
		}
		return true;
	}

	private String getjsonString(Object o) {
		ObjectMapper mapper = new ObjectMapper();
		String jsonInString = "unable to parse object to jason";
		try {
			jsonInString = mapper.writeValueAsString(o);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonInString;
	}

	
}
