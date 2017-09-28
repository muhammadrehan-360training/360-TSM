package com.softech.vu360.lms.rest.model.lmsapi.enrollment;

import javax.xml.bind.annotation.XmlEnumValue;

/**
 * 
 * @author haider.ali
 *
 */
public enum TransactionResultType {

	
	  @XmlEnumValue("Success")
	    SUCCESS("Success"),
	    @XmlEnumValue("Failure")
	    FAILURE("Failure");
	    private final String value;

	    TransactionResultType(String v) {
	        value = v;
	    }

	    public String value() {
	        return value;
	    }

	    public static TransactionResultType fromValue(String v) {
	        for (TransactionResultType c: TransactionResultType.values()) {
	            if (c.value.equals(v)) {
	                return c;
	            }
	        }
	        throw new IllegalArgumentException(v);
	    }
}
