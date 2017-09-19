package com.softech.vu360.lms.rest.model.lmsapi.enrollment;

import javax.xml.bind.annotation.XmlEnumValue;

public enum DuplicatesEnrollment {

    @XmlEnumValue("Ignore")
    IGNORE("Ignore"),
    @XmlEnumValue("Update")
    UPDATE("Update");
    private final String value;

    DuplicatesEnrollment(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static DuplicatesEnrollment fromValue(String v) {
        for (DuplicatesEnrollment c: DuplicatesEnrollment.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}