package com.softech.vu360.lms.rest.model.lmsapi.customer;

import java.util.ArrayList;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Test {

	public static void main(String[] args) {
		
		
		AddCustomerRestfulRequest n = new AddCustomerRestfulRequest();
		
		Customers c1 = new Customers();
		
		Customer c = new Customer();
		c.setCustomerType(CustomerType.B_2_B);
		
		Company cp = new Company();
		cp.setName("acb.com");
		cp.setEmail("abce@lsm.com");
		cp.setAccountStatus(AccountStatus.ACTIVE);
		
		Manager m = new Manager();
		m.setManagerFirstName("khan");
		
		Address ad = new Address();
		ad.setStreetAddress1("street10");

		Address aad = new Address();
		ad.setStreetAddress1("street100");

		c.setCompany(cp);
		c.setManager(m);
		c.setAddress(ad);
		c.setAlternateAddress(aad);
		
		c.setUserName("UserNametest");
		
		ArrayList<Customer> l = new ArrayList<Customer>();
		l.add(c);
		
		c1.setCustomer(l);
		
		n.setCustomers(c1);
		n.setAssignManger(false);
		String s = getjsonString(n);
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
