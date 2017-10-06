package com.softech.vu360.lms.rest.model.lmsapi.enrollment;

import java.util.ArrayList;
import java.util.Date;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Test {

	public static void main(String[] args) {
		
		
		EnrollmentLearnerRestfulRequest r = new EnrollmentLearnerRestfulRequest();
		
		r.setCustomerCode("VUCUS-3177312");
		r.setDuplicatesEnrollment(DuplicatesEnrollment.UPDATE);
		
		ArrayList<LearnerCourses> l = new ArrayList<LearnerCourses>();
		LearnerCourses lcList = new LearnerCourses();
		
		LearnerEnrollCourses lec = new LearnerEnrollCourses();
		ArrayList<String> c = new ArrayList<String>();
		c.add("98035");
		c.add("5477");
		lec.setCourseId(c);
		
		Date s = new Date("2017/09/01");
		Date e = new Date("2017/09/30");
		lec.setEnrollmentStartDate(s);
		lec.setEnrollmentEndDate(e );
		lcList.setCourses(lec);
		
		l.add(lcList);
		r.setLearnerCourses(l);
		
		String ss = getjsonString(r);
		System.out.println(ss);
		
		
		
	}
	
	
	
	
	private static String getjsonString(Object o) {
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
