package com.softech.vu360.lms.rest.model.lmsapi.enrollment;


/**
 * 
 * @author haider.ali
 *
 */
public class LearnerEnrolledCourses {

	
	    protected String userId;
	    protected EnrolledCourses courses;
	    protected String errorCode;
	    protected String errorMessage;
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public EnrolledCourses getCourses() {
			return courses;
		}
		public void setCourses(EnrolledCourses courses) {
			this.courses = courses;
		}
		public String getErrorCode() {
			return errorCode;
		}
		public void setErrorCode(String errorCode) {
			this.errorCode = errorCode;
		}
		public String getErrorMessage() {
			return errorMessage;
		}
		public void setErrorMessage(String errorMessage) {
			this.errorMessage = errorMessage;
		}
	    
	    
}
