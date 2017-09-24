package com.softech.vu360.lms.rest.model.lmsapi.enrollment;

import java.util.List;

/**
 * 
 * @author haider.ali
 *
 */
public class EnrollmentLearnerRestfulRequest {

	
	    protected List<LearnerCourses> learnerCourses;
	    protected String customerCode;
	    protected Boolean notifyLearnersByEmail;
		protected DuplicatesEnrollment duplicatesEnrollment;
		
		public List<LearnerCourses> getLearnerCourses() {
			return learnerCourses;
		}
		public void setLearnerCourses(List<LearnerCourses> learnerCourses) {
			this.learnerCourses = learnerCourses;
		}
		public String getCustomerCode() {
			return customerCode;
		}
		public void setCustomerCode(String customerCode) {
			this.customerCode = customerCode;
		}
		public Boolean getNotifyLearnersByEmail() {
			return notifyLearnersByEmail;
		}
		public void setNotifyLearnersByEmail(Boolean notifyLearnersByEmail) {
			this.notifyLearnersByEmail = notifyLearnersByEmail;
		}
		public DuplicatesEnrollment getDuplicatesEnrollment() {
			return duplicatesEnrollment;
		}
		public void setDuplicatesEnrollment(DuplicatesEnrollment duplicatesEnrollment) {
			this.duplicatesEnrollment = duplicatesEnrollment;
		}
		public boolean isNotifyLearnersByEmail() {
			if (notifyLearnersByEmail == null) {
				return false;
			} else {
				return notifyLearnersByEmail;
			}
		}
		
}
