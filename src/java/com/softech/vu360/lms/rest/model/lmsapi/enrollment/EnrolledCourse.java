package com.softech.vu360.lms.rest.model.lmsapi.enrollment;


/**
 * 
 * @author haider.ali
 *
 */
public class EnrolledCourse {

	
	    protected String courseId;
	    protected String errorCode;
	    protected String errorMessage;
	    
	    
		public String getCourseId() {
			return courseId;
		}
		public void setCourseId(String courseId) {
			this.courseId = courseId;
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
