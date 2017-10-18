package com.softech.vu360.lms.web.restful.request;

import java.io.Serializable;

/**
 *
 * @author ramiz.uddin
 */
public class UDPTokenRequest implements Serializable {

    private String username;
    private String password;
    private String distributorCode;
    private String accessKey;

    public UDPTokenRequest(String username, String password, String distributorCode, String accessKey) {
        this.username = username;
        this.password = password;
        this.distributorCode = distributorCode;
        this.accessKey = accessKey;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDistributorCode() {
        return distributorCode;
    }

    public void setDistributorCode(String distributorCode) {
        this.distributorCode = distributorCode;
    }
    
    public String getAccessKey() {
        return accessKey;
    }

    public void setAccessKey(String accessKey) {
        this.accessKey = accessKey;
    }
}
