/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.softech.vu360.lms.web.restful.response;

import java.io.Serializable;

/**
 *
 * @author ramiz.uddin
 */
public class UDPTokenResponse implements Serializable {

    private String access_token;
    private String token_type;
    private String message;
    private boolean udpAllowedTF;

    public String getAccess_token() {
        return access_token;
    }

    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    }

    public String getToken_type() {
        return token_type;
    }

    public void setToken_type(String token_type) {
        this.token_type = token_type;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isUdpAllowedTF() {
        return udpAllowedTF;
    }

    public void setUdpAllowedTF(boolean udpAllowedTF) {
        this.udpAllowedTF = udpAllowedTF;
    }

}
