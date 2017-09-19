package com.softech.vu360.lms.rest.model.lmsapi.customer;

import javax.xml.bind.annotation.XmlEnumValue;


/**
 * 
 * @author haider.ali
 *
 */
public enum CustomerType {

    @XmlEnumValue("B2B")
    B_2_B("B2B"),
    @XmlEnumValue("B2C")
    B_2_C("B2C");
    private final String value;

    CustomerType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static CustomerType fromValue(String v) {
        for (CustomerType c: CustomerType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
