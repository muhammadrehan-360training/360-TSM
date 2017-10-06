package com.softech.vu360.lms.webservice.impl;

import java.util.Iterator;
import java.util.Stack;

public class Test {
	
	    public static void main(String args[]) {
	    	
	    	
	    	if ("StateOne_4555".matches("[A-Za-z0-9]+")){
	    		System.out.println("ok");
	    	}
	    		else{
	    			System.out.println("not ok");
	    		}
	    	
	    	Stack s = new Stack();
	    	
	    	s.add("1");
	    	s.add("2");
	    	s.add("4");
	    	s.add("5");
	    	s.add("6");
	    
	    	
	    	for (Iterator iterator = s.iterator(); iterator.hasNext();) {
				Object object = (Object) iterator.next();
				//System.out.println(s.);
			}
	    }
	
	    
	
}
