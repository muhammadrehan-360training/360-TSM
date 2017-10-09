package com.softech.vu360.lms.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.softech.vu360.lms.model.Customer;
import com.softech.vu360.lms.model.VU360User;
import com.softech.vu360.lms.rest.model.lmsapi.customer.AddCustomerRestfulRequest;
import com.softech.vu360.lms.rest.model.lmsapi.customer.RegisterCustomer;
import com.softech.vu360.lms.rest.model.lmsapi.enrollment.DuplicatesEnrollment;
import com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrollmentLearnerRestfulRequest;
import com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses;
import com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse;
import com.softech.vu360.lms.service.CustomerService;
import com.softech.vu360.lms.service.VU360UserService;
import com.softech.vu360.lms.service.lmsapi.LmsApiEnrollmentService;
import com.softech.vu360.lms.service.lmsapi.response.LmsApiEnrollmentResponseService;
import com.softech.vu360.lms.service.lmsapi.validation.LmsApiAuthenticationService;
import com.softech.vu360.lms.service.lmsapi.validation.LmsApiEnrollmentValidationService;

/**
 *
 * @author haider.ali
 *
 */
@RestController
@RequestMapping(value = "/lmsApi")
public class LmsApiRestFullEnrollmentService {

	private static final Logger logger = LogManager.getLogger(LmsApiRestFullEnrollmentService.class);

	@Autowired
	private LmsApiAuthenticationService lmsApiAuthenticationService;
	@Autowired
	private LmsApiEnrollmentService lmsApiEnrollmentService;
	@Autowired
	private VU360UserService vu360UserService;
	@Autowired
	private LmsApiEnrollmentValidationService lmsApiEnrollmentValidationService;
	@Autowired
	private LmsApiEnrollmentResponseService lmsApiEnrollmentResponseService;

	@Autowired
	private CustomerService customerService;

	/**
	 *
	 * @param request
	 * @return
	 * @throws Exception
	 * @Deprecated
	 */
	@RequestMapping(value = "/learner/enroll", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<LearnerCoursesEnrollResponse> enrollUser(@RequestBody EnrollmentLearnerRestfulRequest request) throws Exception {

		logger.info("Request received at " + getClass().getName() + " for learner enrollment");
		HttpStatus requestStatus = HttpStatus.BAD_REQUEST;

		LearnerCoursesEnrollResponse response = null;
		boolean notifyLearnersByEmail = request.isNotifyLearnersByEmail();
		String customerCode = request.getCustomerCode();

		DuplicatesEnrollment duplicatesEnrollment = request.getDuplicatesEnrollment();
		if (duplicatesEnrollment == null) {
			duplicatesEnrollment = DuplicatesEnrollment.UPDATE;
		}
		List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses> learnerCoursesList = request.getLearnerCourses();
		try {
			Customer customer = customerService.getCustomerByCustomerCode(customerCode);

			if(customer == null){
				response = new LearnerCoursesEnrollResponse();
				String errorMessage = "Customer not found";
				response.setTransactionResultMessage(errorMessage);
				//RegisterCustomer registerCustomerError = getRegisterCustomerError(ERROR_CODE_ONE, errorMessage, "");
				//registerCustomerList.add(registerCustomerError);
				return new ResponseEntity<LearnerCoursesEnrollResponse>(response, HttpStatus.BAD_REQUEST);
			}


			String customerGuid = customer.getCustomerGUID();
			VU360User manager = vu360UserService.getUserByGUID(customerGuid);
			validate(request, manager, customerCode);

			Map<Boolean, List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses>> learnerCoursesMap = lmsApiEnrollmentValidationService.getLearnerCoursesMap_(learnerCoursesList);
			List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses> learnerEnrolledCoursesResponseList = lmsApiEnrollmentService.enrollLearnerCourses_(learnerCoursesMap, customer, manager, notifyLearnersByEmail, duplicatesEnrollment);
			response = lmsApiEnrollmentResponseService.getLearnerCoursesEnrollResponse_(learnerEnrolledCoursesResponseList);
			requestStatus = HttpStatus.ACCEPTED;

		} catch (Exception e) {
			String errorMessage = e.getMessage();
			response = lmsApiEnrollmentResponseService.getLearnerCoursesEnrollResponse_(errorMessage);
			requestStatus = HttpStatus.BAD_REQUEST;
			response.setTransactionResultMessage(errorMessage);
		}

		return new ResponseEntity(response, requestStatus);

	}


	/**
	 *
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/addEnrollment", method = RequestMethod.POST,consumes = MediaType.APPLICATION_JSON_VALUE,produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, String> addEnrollment(@RequestBody EnrollmentLearnerRestfulRequest request, @RequestHeader(value = "token") String token, HttpServletRequest req, HttpServletResponse res) throws Exception{

		logger.info("Request received at " + getClass().getName() + " for add learner enrollment");
		Map<String,String> responseData = new HashMap<>();

		LearnerCoursesEnrollResponse response = null;
		boolean notifyLearnersByEmail = request.isNotifyLearnersByEmail();
		String customerCode = request.getCustomerCode();

		DuplicatesEnrollment duplicatesEnrollment = request.getDuplicatesEnrollment();
		if (duplicatesEnrollment == null) {
			duplicatesEnrollment = DuplicatesEnrollment.UPDATE;
		}
		List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses> learnerCoursesList = request.getLearnerCourses();
		try {
			Customer customer = customerService.getCustomerByCustomerCode(customerCode);

			if(customer == null){
				response = new LearnerCoursesEnrollResponse();
				String errorMessage = "Customer not found";
				response.setTransactionResultMessage(errorMessage);
				responseData.put("status", "false");
				responseData.put("responsejson", getjsonString(response ));
				return responseData;
			}


			String customerGuid = customer.getCustomerGUID();
			VU360User manager = vu360UserService.getUserByGUID(customerGuid);
			validate(request, manager, customerCode);

			Map<Boolean, List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses>> learnerCoursesMap = lmsApiEnrollmentValidationService.getLearnerCoursesMap_(learnerCoursesList);
			List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses> learnerEnrolledCoursesResponseList = lmsApiEnrollmentService.enrollLearnerCourses_(learnerCoursesMap, customer, manager, notifyLearnersByEmail, duplicatesEnrollment);
			response = lmsApiEnrollmentResponseService.getLearnerCoursesEnrollResponse_(learnerEnrolledCoursesResponseList);
		} catch (Exception e) {
			String errorMessage = e.getMessage();
			response = lmsApiEnrollmentResponseService.getLearnerCoursesEnrollResponse_(errorMessage);
			response.setTransactionResultMessage(errorMessage);
			responseData.put("status", "false");
			responseData.put("responsejson", getjsonString(response ));
		}

		responseData.put("status", "true");
		responseData.put("responsejson", getjsonString(response ));
		return responseData;

	}

	private boolean validate(EnrollmentLearnerRestfulRequest request, VU360User manager, String customerCode) throws Exception{
		boolean notifyLearnersByEmail = request.isNotifyLearnersByEmail();
		List<LearnerCourses> learnerCoursesList = request.getLearnerCourses();
		if (notifyLearnersByEmail) {
			if (manager == null) {
				throw new Exception("No manager found for customer: " + customerCode);
			}
		}

		if (CollectionUtils.isEmpty(learnerCoursesList)) {
			throw new Exception("LearnerCourses element is required and must not be empty");
		}
		return true;
	}

	public void setLmsApiAuthenticationService(LmsApiAuthenticationService lmsApiAuthenticationService) {
		this.lmsApiAuthenticationService = lmsApiAuthenticationService;
	}

	public void setLmsApiEnrollmentService(LmsApiEnrollmentService lmsApiEnrollmentService) {
		this.lmsApiEnrollmentService = lmsApiEnrollmentService;
	}

	public void setVu360UserService(VU360UserService vu360UserService) {
		this.vu360UserService = vu360UserService;
	}

	public void setLmsApiEnrollmentValidationService(LmsApiEnrollmentValidationService lmsApiEnrollmentValidationService) {
		this.lmsApiEnrollmentValidationService = lmsApiEnrollmentValidationService;
	}

	public void setLmsApiEnrollmentResponseService(LmsApiEnrollmentResponseService lmsApiEnrollmentResponseService) {
		this.lmsApiEnrollmentResponseService = lmsApiEnrollmentResponseService;
	}

	/**
	 *
	 * @param o
	 * @return
	 */
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

	
/*	@RequestMapping(value = "/learner/enroll", method = RequestMethod.POST)
	@ResponseBody
	public LearnerEnrollmentsResponse enrollUser(@RequestBody LearnerEnrollmentsRequest learnerEnrollments,
			@RequestHeader(value="key", required=true) String clientApiKey,
			@AuthenticationPrincipal RestUserPrincipal principal) throws Exception {
		
		logger.info("Request received at " + getClass().getName() + " for learner enrollment");
		
		Long customerId = principal.getCustomerId();
		String customerCode = principal.getCustomerCode();
		LearnerEnrollmentsResponse learnerEnrollmentsResponse = webProxyLmsApiEnrollmentService.learnerCoursesEnroll(learnerEnrollments, customerId, customerCode, clientApiKey);
		return learnerEnrollmentsResponse;
			
	}
*/	
	/*@RequestMapping(value = "/reseller/enrollments/get", method = RequestMethod.GET)
	@ResponseBody
	public ResellerEnrollments getResellerLearnerEnrollments(
			@RequestHeader(value="key", required=true) String clientApiKey,
			@RequestParam(value="fromDate", required = true) 
			@NotBlank(message="validate.from.date") 
			String fromDate,
			@RequestParam(value="toDate", required = true) 
			@NotBlank(message="validate.to.date") 
			String toDate,
			@AuthenticationPrincipal RestUserPrincipal principal) throws Exception {
		
		logger.info("Request received at " + getClass().getName() + "  for reseller enrollments");
		
		String operation = "getResellerLearnerEnrollments";
		
		Long distributorId = principal.getDistributorId();
		String lmsApiDistributorApiKey = principal.getApiKey();
		String distributorAllowFrequency = principal.getAllowFrequency(); 
		
		webProxyAuthorizationService.authorizeOperationAllowFrequency(distributorId, lmsApiDistributorApiKey, distributorAllowFrequency, clientApiKey, operation);
		
		List<Enrollments> enrollmentsList = learnerEnrollmentsDao.findEnrollmentByDistributorId(distributorId.longValue(), fromDate, toDate);
		return new ResellerEnrollments(enrollmentsList);
		
	}

	
	*//**
	 *
	 * @param webProxy
	 * @return
	 * @throws Exception
	 *//*
	@RequestMapping(value = "/customer/enrollment/update", method = RequestMethod.POST)
	@ResponseBody
	@Transactional
	public WebProxyLearnerEnrollmentResponse updateCourseStatusLearner(@RequestBody WebProxyLearnerEnrollmentsStatusRequest webProxy) throws Exception {
		
		logger.info("Request received at " + getClass().getName() + " for learner enrollment Status update");

		StringBuffer message = new StringBuffer("Nothing to Update"); 

		List<UserCourseGuids> userCourseGuids = webProxy.getUpdateEnrollmentsStatusRequest().getCourseGuids();
		
		for (Iterator<UserCourseGuids> iterator = userCourseGuids.iterator(); iterator.hasNext();) {
			UserCourseGuids userCourseGuids2 = (UserCourseGuids) iterator.next();
			
			String userName = userCourseGuids2.getUserName();
			List<String> gList = userCourseGuids2.getCourseGuids();
			List<LearnerEnrollment> enrolllments =  learnerEnrollmentServiceImpl.getActiveEnrollments(userName, gList);

			if(!CollectionUtils.isEmpty(enrolllments)){
				
				List<LearnerEnrollment> enrolllmentss = enrolllments.stream().map(p -> {
					p.setEnrollmentStatus("Expired");
					return p;
				}).collect(Collectors.toList());
				
				learnerEnrollmentServiceImpl.updateLearnerEnrollmentStatus(enrolllmentss);
				
				message = message.append(enrolllments.size());
				message.append(" Record(s) successfully updated aginst userName: ");
				message.append(userName+" --   ");
			}
			
		}

		LearnerEnrollmentResponse ler = new LearnerEnrollmentResponse();
		 com.softech.ls360.web.proxy.endpoint.model.response.enrollment.LearnerEnrollment le = 
				new com.softech.ls360.web.proxy.endpoint.model.response.enrollment.LearnerEnrollment(); 
		
		le.setMessage(message.toString());
		ler.setLearnerEnrollment(le);
		
		WebProxyLearnerEnrollmentResponse response = new WebProxyLearnerEnrollmentResponse();
		response.setLearnerEnrollmentResponse(ler);
		
		return response;
			
	}
	*/


}
