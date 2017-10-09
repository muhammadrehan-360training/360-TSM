/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

    public UDPTokenRequest(String username, String password, String distributorCode) {
        this.username = username;
        this.password = password;
        this.distributorCode = distributorCode;
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
}
