package com.softech.vu360.lms.service.impl.lmsapi.response;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.softech.vu360.lms.model.LearnerEnrollment;
import com.softech.vu360.lms.service.lmsapi.response.LmsApiEnrollmentResponseService;
import com.softech.vu360.lms.webservice.message.lmsapi.serviceoperations.enrollment.LearnerCoursesEnrollResponse;
import com.softech.vu360.lms.webservice.message.lmsapi.types.enrollment.EnrolledCourse;
import com.softech.vu360.lms.webservice.message.lmsapi.types.enrollment.EnrolledCourses;
import com.softech.vu360.lms.webservice.message.lmsapi.types.enrollment.LearnerEnrolledCourses;
import com.softech.vu360.lms.webservice.message.lmsapi.types.transactionresult.TransactionResultType;

@Service
public class LmsApiEnrollmentResponseServiceImpl implements LmsApiEnrollmentResponseService {

	private static final String ERROR_CODE_ZERO  = "0";
	private static final String ERROR_CODE_ONE  = "1";
	
	@Override
	public LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse(List<LearnerEnrolledCourses> learnerEnrolledCoursesResponseList) {
		LearnerCoursesEnrollResponse response = new LearnerCoursesEnrollResponse();
		response.setTransactionResult(TransactionResultType.SUCCESS);
		response.setTransactionResultMessage("");
		response.setLearnerEnrolledCourses(learnerEnrolledCoursesResponseList);
		return response;
	}

	@Override
	public com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse_(List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses> learnerEnrolledCoursesResponseList) {
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse response = new com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse();
		response.setTransactionResult(com.softech.vu360.lms.rest.model.lmsapi.enrollment.TransactionResultType.SUCCESS);
		response.setTransactionResultMessage("");
		response.setLearnerEnrolledCourses(learnerEnrolledCoursesResponseList);
		return response;
	}

	@Override
	public LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse(String message) {
		LearnerCoursesEnrollResponse response = new LearnerCoursesEnrollResponse();
		response.setTransactionResult(TransactionResultType.FAILURE);
		response.setTransactionResultMessage(message);
		return response;
	}

	@Override
	public com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse_(String message) {
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse response = new com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse();
		response.setTransactionResult(com.softech.vu360.lms.rest.model.lmsapi.enrollment.TransactionResultType.FAILURE);
		response.setTransactionResultMessage(message);
		return response;
	}

	@Override
	public LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, List<LearnerEnrollment> learnerEnrollments, Map<String, String> invalidCoursesMap) {
		List<EnrolledCourse> enrolledCourseList = getEnrolledCourseList(learnerEnrollments, invalidCoursesMap);
		LearnerEnrolledCourses learnerEnrolledCourses = getLearnerEnrolledCourses(userName, ERROR_CODE_ZERO, "", enrolledCourseList);
		return learnerEnrolledCourses;
	}

	@Override
	public com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, List<LearnerEnrollment> learnerEnrollments, Map<String, String> invalidCoursesMap) {
		List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> enrolledCourseList = getEnrolledCourseList_(learnerEnrollments, invalidCoursesMap);
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses learnerEnrolledCourses = getLearnerEnrolledCourses_(userName, ERROR_CODE_ZERO, "", enrolledCourseList);
		return learnerEnrolledCourses;
	}

	@Override
	public LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, String errorMessage, Map<String, String> invalidCoursesMap) {
		List<EnrolledCourse> enrolledCourseList = getLearnerEnrolledCourses(invalidCoursesMap);
		LearnerEnrolledCourses learnerEnrolledCourses = getLearnerEnrolledCourses(userName, ERROR_CODE_ONE, errorMessage, enrolledCourseList);
		return learnerEnrolledCourses;
	}

	@Override
	public com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, String errorMessage, Map<String, String> invalidCoursesMap) {
		List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> enrolledCourseList = getLearnerEnrolledCourses_(invalidCoursesMap);
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses learnerEnrolledCourses = getLearnerEnrolledCourses_(userName, ERROR_CODE_ONE, errorMessage, enrolledCourseList);
		return learnerEnrolledCourses;
	}

	@Override
	public LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, String errorCode, String errorMessage) {
		LearnerEnrolledCourses learnerEnrolledCoursesError = new LearnerEnrolledCourses();
		learnerEnrolledCoursesError.setUserId(userName);
		learnerEnrolledCoursesError.setErrorCode(errorCode);
		learnerEnrolledCoursesError.setErrorMessage(errorMessage);
		return learnerEnrolledCoursesError;
	}

	@Override
	public com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, String errorCode, String errorMessage) {
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses learnerEnrolledCoursesError = new com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses();
		learnerEnrolledCoursesError.setUserId(userName);
		learnerEnrolledCoursesError.setErrorCode(errorCode);
		learnerEnrolledCoursesError.setErrorMessage(errorMessage);
		return learnerEnrolledCoursesError;
	}

	private LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, String errorCode, String errorMessage,List<EnrolledCourse> enrolledCourseList) {
		EnrolledCourses enrolledCourses = new EnrolledCourses();
		enrolledCourses.setCourse(enrolledCourseList);
		LearnerEnrolledCourses learnerEnrolledCourses = getLearnerEnrolledCourses(userName, errorCode, errorMessage);
		learnerEnrolledCourses.setCourses(enrolledCourses);
		return learnerEnrolledCourses;
	}

	private com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, String errorCode, String errorMessage,List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> enrolledCourseList) {
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourses enrolledCourses = new com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourses();
		enrolledCourses.setCourse(enrolledCourseList);
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses learnerEnrolledCourses = getLearnerEnrolledCourses_(userName, errorCode, errorMessage);
		learnerEnrolledCourses.setCourses(enrolledCourses);
		return learnerEnrolledCourses;
	}

	private List<EnrolledCourse> getEnrolledCourseList(List<LearnerEnrollment> learnerEnrollments, Map<String, String> invalidCoursesMap) {
		List<EnrolledCourse> enrolledCourseList = new ArrayList<>();
		if (!CollectionUtils.isEmpty(learnerEnrollments)) {
			for (LearnerEnrollment learnerEnrollment : learnerEnrollments) {
				String courseGuid = learnerEnrollment.getCourse().getCourseGUID();
				EnrolledCourse enrolledCourse = getEnrolledCourse(ERROR_CODE_ZERO, "", courseGuid);
				enrolledCourseList.add(enrolledCourse);
			}
		}
		
		if (!CollectionUtils.isEmpty(invalidCoursesMap)) {
			List<EnrolledCourse> errorsEnrolledCourseList = getLearnerEnrolledCourses(invalidCoursesMap);
			enrolledCourseList.addAll(errorsEnrolledCourseList);
		}
		return enrolledCourseList;
	}

	private List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> getEnrolledCourseList_(List<LearnerEnrollment> learnerEnrollments, Map<String, String> invalidCoursesMap) {
		List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> enrolledCourseList = new ArrayList<>();
		if (!CollectionUtils.isEmpty(learnerEnrollments)) {
			for (LearnerEnrollment learnerEnrollment : learnerEnrollments) {
				String courseGuid = learnerEnrollment.getCourse().getCourseGUID();
				com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse enrolledCourse = getEnrolledCourse_(ERROR_CODE_ZERO, "", courseGuid);
				enrolledCourseList.add(enrolledCourse);
			}
		}
		
		if (!CollectionUtils.isEmpty(invalidCoursesMap)) {
			List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> errorsEnrolledCourseList = getLearnerEnrolledCourses_(invalidCoursesMap);
			enrolledCourseList.addAll(errorsEnrolledCourseList);
		}
		return enrolledCourseList;
	}

	private List<EnrolledCourse> getLearnerEnrolledCourses(Map<String, String> invalidCoursesMap) {
		
		List<EnrolledCourse> enrolledCourseList = null;
		
		if (!CollectionUtils.isEmpty(invalidCoursesMap)) {
			enrolledCourseList = new ArrayList<EnrolledCourse>();
			for (Map.Entry<String, String> entry : invalidCoursesMap.entrySet()) {
				String courseGuid = entry.getKey();
				String errorMessage = entry.getValue();
				
				EnrolledCourse enrolledCourse = getEnrolledCourse(ERROR_CODE_ONE, errorMessage, courseGuid);
				enrolledCourseList.add(enrolledCourse);
			}
		}
		return enrolledCourseList;
	}

	private List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> getLearnerEnrolledCourses_(Map<String, String> invalidCoursesMap) {
		
		List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse> enrolledCourseList = null;
		
		if (!CollectionUtils.isEmpty(invalidCoursesMap)) {
			enrolledCourseList = new ArrayList<com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse>();
			for (Map.Entry<String, String> entry : invalidCoursesMap.entrySet()) {
				String courseGuid = entry.getKey();
				String errorMessage = entry.getValue();
				
				com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse enrolledCourse = getEnrolledCourse_(ERROR_CODE_ONE, errorMessage, courseGuid);
				enrolledCourseList.add(enrolledCourse);
			}
		}
		return enrolledCourseList;
	}

	private EnrolledCourse getEnrolledCourse(String errorCode, String errorMessage, String courseGuid) {
		
		EnrolledCourse enrolledCourseError = new EnrolledCourse();
		enrolledCourseError.setErrorCode(errorCode);
		enrolledCourseError.setErrorMessage(errorMessage);
		enrolledCourseError.setCourseId(courseGuid);
		return enrolledCourseError;
		
	}

	private com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse getEnrolledCourse_(String errorCode, String errorMessage, String courseGuid) {
		
		com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse enrolledCourseError = new com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrolledCourse();
		enrolledCourseError.setErrorCode(errorCode);
		enrolledCourseError.setErrorMessage(errorMessage);
		enrolledCourseError.setCourseId(courseGuid);
		return enrolledCourseError;
		
	}

}
