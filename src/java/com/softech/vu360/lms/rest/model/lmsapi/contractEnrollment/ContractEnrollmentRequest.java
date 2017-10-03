package com.softech.vu360.lms.rest.model.lmsapi.contractEnrollment;

/**
 * Created by haider.ali on 10/2/2017.
 */
public class ContractEnrollmentRequest {

    private String courseGuid;
    private String courseGroupGuid;
    private String customerCode;
    private String userName;


    public String getCourseGuid() {
        return courseGuid;
    }

    public void setCourseGuid(String courseGuid) {
        this.courseGuid = courseGuid;
    }

    public String getCourseGroupGuid() {
        return courseGroupGuid;
    }

    public void setCourseGroupGuid(String courseGroupGuid) {
        this.courseGroupGuid = courseGroupGuid;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
