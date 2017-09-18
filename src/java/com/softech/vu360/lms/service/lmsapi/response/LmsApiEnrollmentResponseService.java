package com.softech.vu360.lms.service.lmsapi.response;

import java.util.List;
import java.util.Map;

import com.softech.vu360.lms.model.LearnerEnrollment;
import com.softech.vu360.lms.webservice.message.lmsapi.serviceoperations.enrollment.LearnerCoursesEnrollResponse;
import com.softech.vu360.lms.webservice.message.lmsapi.types.enrollment.LearnerEnrolledCourses;

public interface LmsApiEnrollmentResponseService {

	LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse(List<LearnerEnrolledCourses> learnerEnrolledCoursesResponseList);
	com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse_(List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses> learnerEnrolledCoursesResponseList) ;
	LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse(String message);
	com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCoursesEnrollResponse getLearnerCoursesEnrollResponse_(String message);
	LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, List<LearnerEnrollment> learnerEnrollments, Map<String, String> invalidCoursesMap);
	com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, List<LearnerEnrollment> learnerEnrollments, Map<String, String> invalidCoursesMap) ;
	LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, String errorCode, String errorMessage);
	com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, String errorCode, String errorMessage) ;
	LearnerEnrolledCourses getLearnerEnrolledCourses(String userName, String errorMessage, Map<String, String> invalidCoursesMap);
	com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerEnrolledCourses getLearnerEnrolledCourses_(String userName, String errorMessage, Map<String, String> invalidCoursesMap); 
	
}
