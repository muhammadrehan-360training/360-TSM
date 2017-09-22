package com.softech.vu360.lms.rest.model.lmsapi.customer;

import javax.xml.bind.annotation.XmlEnumValue;

/**
 * 
 * @author haider.ali
 *
 */
public enum AccountStatus {

    @XmlEnumValue("Active")
    ACTIVE("Active"),
    @XmlEnumValue("Inactive")
    INACTIVE("Inactive");
    private final String value;

    AccountStatus(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static AccountStatus fromValue(String v) {
        for (AccountStatus c: AccountStatus.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
