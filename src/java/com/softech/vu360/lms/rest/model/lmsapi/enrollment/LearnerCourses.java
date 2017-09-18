package com.softech.vu360.lms.rest.model.lmsapi.enrollment;


/**
 * 
 * @author haider.ali
 *
 */
public class LearnerCourses {

	
    protected String userId;
    protected LearnerEnrollCourses courses;
    
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public LearnerEnrollCourses getCourses() {
		return courses;
	}
	public void setCourses(LearnerEnrollCourses courses) {
		this.courses = courses;
	}
		
		
		
}
