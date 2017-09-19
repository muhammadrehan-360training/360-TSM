package com.softech.vu360.lms.web.restful.request.customer.contract.add.types;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Test {

	
	public static void main(String[] args) {
		LmsAddCustomerContractRequest d= new LmsAddCustomerContractRequest();
		
		AddCustomerContractRequest cr = new AddCustomerContractRequest();
		
		ContractDetail cd  =  new ContractDetail();
		cd.setContractName("contract1");
		cd.setStartDate(new Date("2017/01/01"));
		cd.setAllowSelfEnrollment(true);
		cd.setAllowUnlimitedEnrollments(true);
		cd.setContractType("Course");
		cd.setContractEndType("contractEndType");
		cd.setCustomerGuid("d5c6ae71-419f-4873-9b5a-81952e1727a2");
		cd.setEndDate(new Date("2019/01/01"));
		cd.setMaximumEnrollments(1000);
		cd.setTermOfServices(180);
		cd.setTransactionAmount(new BigDecimal(10));
		
		cr.setContractDetail(cd );
		
		
		CourseDetail cds = new CourseDetail();
		ArrayList<String> l = new ArrayList<String>();
		l.add("3ed86136b92e4b288a2853d86094ec0b");
		l.add("F95D5B7469C34B3BB09DECEB6743F904");
		Courses c = new Courses();
		c.setGuid(l);
		cds.setCourses(c);

		cds.setCourses(c);
		cr.setCourseDetail(cds);
		
		CourseGroupDetail cgd = new CourseGroupDetail();
		CourseGroups cg = new CourseGroups();
		ArrayList ll = new ArrayList<>();
		ll.add("1168050009199e9c4e48a4ecea48d6741093ab09d");
		ll.add("9c769299e3774dc08419e7e68023e43a");
		cg.setGuid(ll);
		cgd.setCourseGroups(cg);
		cr.setCourseGroupDetail(cgd);
		
		OrganizationGroupDetail ogd = new OrganizationGroupDetail();
		OrganizationGroupsEnrollments oge = new OrganizationGroupsEnrollments();
		
		List<OrganizationGroupEnrollment> lsd = new ArrayList<OrganizationGroupEnrollment>();
		OrganizationGroupEnrollment o = new OrganizationGroupEnrollment();
		o.setMaximumEnrollments(1000);
		o.setOrgGroupHierarchy("orgGroupHierarchy");
		lsd.add(o);
		oge.setOrganizationGroupEnrollment(lsd);
		ogd.setOrganizationGroupsEnrollments(oge);
		cr.setOrganizationGroupDetail(ogd);
		
		cr.setResellerId(new Long(32649));
		
		d.setAddCustomerContractRequest(cr);
		String s = getjsonString(d);
		System.out.println(s);
		
		
		
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




