package com.softech.vu360.lms.service.lmsapi.validation;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.softech.vu360.lms.model.CustomerEntitlement;
import com.softech.vu360.lms.model.VU360User;
import com.softech.vu360.lms.webservice.message.lmsapi.serviceoperations.enrollment.LearnerCoursesEnrollRequest;
import com.softech.vu360.lms.webservice.message.lmsapi.types.enrollment.LearnerCourses;

public interface LmsApiEnrollmentValidationService {

	boolean validateLearnerCoursesEnrollRequest(LearnerCoursesEnrollRequest request, VU360User manager, String customerCode) throws Exception;
	Map<Boolean, List<LearnerCourses>> getLearnerCoursesMap(List<LearnerCourses> learnerCoursesList);
	Map<Boolean, List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses>> getLearnerCoursesMap_(List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses> learnerCoursesList);
	List<LearnerCourses> getValidLearnerCourses(Map<Boolean, List<LearnerCourses>> learnerCoursesMap);
	List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses> getValidLearnerCourses_(Map<Boolean, List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses>> learnerCoursesMap) ;

	Map<LearnerCourses, String> getInvalidLearnerCourses(Map<Boolean, List<LearnerCourses>> learnerCoursesMap);
	Map<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses, String> getInvalidLearnerCourses_(Map<Boolean, List<com.softech.vu360.lms.rest.model.lmsapi.enrollment.LearnerCourses>> learnerCoursesMap);
	boolean isValidAtEnrollmentLevel(Date enrollmentStartDate, Date enrollmentEndDate, List<Date> entitlementStartDates, List<Date> entitlementEndDates);
	String getEnrollmentLevelErrorMessage(List<CustomerEntitlement> customerEntitlements, Date todayDate, Date enrollmentStartDate, Date enrollmentEndDate);
	
}
