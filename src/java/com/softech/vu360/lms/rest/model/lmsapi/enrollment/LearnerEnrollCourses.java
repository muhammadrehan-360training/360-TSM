package com.softech.vu360.lms.rest.model.lmsapi.enrollment;

import java.util.Date;
import java.util.List;

import javax.xml.datatype.XMLGregorianCalendar;


public class LearnerEnrollCourses {

	    protected List<String> courseId;
	    protected Date enrollmentStartDate;
	    protected Date enrollmentEndDate;
		public List<String> getCourseId() {
			return courseId;
		}
		public void setCourseId(List<String> courseId) {
			this.courseId = courseId;
		}
		public Date getEnrollmentStartDate() {
			return enrollmentStartDate;
		}
		public void setEnrollmentStartDate(Date enrollmentStartDate) {
			this.enrollmentStartDate = enrollmentStartDate;
		}
		public Date getEnrollmentEndDate() {
			return enrollmentEndDate;
		}
		public void setEnrollmentEndDate(Date enrollmentEndDate) {
			this.enrollmentEndDate = enrollmentEndDate;
		}
		
		
	    
	    
}
