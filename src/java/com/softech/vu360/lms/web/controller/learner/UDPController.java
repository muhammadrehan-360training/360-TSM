package com.softech.vu360.lms.web.controller.learner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.softech.vu360.lms.vo.VU360User;
import com.softech.vu360.lms.web.restful.request.UDPTokenRequest;
import com.softech.vu360.lms.web.restful.response.UDPTokenResponse;
import com.softech.vu360.util.RestClient;
import com.softech.vu360.util.VU360Properties;
import java.util.HashMap;
import java.util.Map;
import org.springframework.http.HttpEntity;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

public class UDPController implements Controller {

    private static final String UDP_TOKEN_SERVICE_URL = VU360Properties.getVU360Property("udp.token.service.url");
    private static final String UDP_URL = VU360Properties.getVU360Property("udp.url");

    private String udpTemplate = null;

    @Override
    public ModelAndView handleRequest(HttpServletRequest httpservletrequest,
            HttpServletResponse httpservletresponse) throws Exception {

        Authentication auth;
        VU360User user;
        String distributorCode;

        ClientHttpRequestFactory requestFactory;
        RestTemplate restTemplate;
        HttpEntity<UDPTokenRequest> request;
        UDPTokenResponse response;

        user = null;
        distributorCode = "";

        auth = SecurityContextHolder.getContext()
                .getAuthentication();

        if (auth.getPrincipal() != null
                && auth.getPrincipal() instanceof VU360User) {
            user = (VU360User) auth.getPrincipal();
        }

        if (user == null) {
            return new ModelAndView("redirect:/login.do");
        }

        if (user.getLearner() != null
                && user.getLearner().getCustomer() != null
                && user.getLearner().getCustomer().getDistributor() != null
                && user.getLearner().getCustomer().getDistributor().getDistributorCode() != null) {

            distributorCode = user.getLearner().getCustomer().getDistributor().getDistributorCode();

        }

        if (distributorCode.isEmpty()) {
            if (user.getLearner() != null
                    && user.getLearner().getCustomer() != null
                    && user.getLearner().getCustomer().getDistributor() != null) {
                user.getLearner().getCustomer().getDistributor().setUdp(Boolean.FALSE);
            }
            return new ModelAndView("redirect:/interceptor.do");
        }

        requestFactory = RestClient.getClientHttpRequestFactory();
        restTemplate = new RestTemplate(requestFactory);
        request = new HttpEntity<>(new UDPTokenRequest(user.getUsername(), user.getPlainPassword(), distributorCode));
        response = restTemplate.postForObject(UDP_TOKEN_SERVICE_URL, request, UDPTokenResponse.class);

        user.setIsUDPAllowed(response.isUdpAllowedTF());
        user.setUDPToken(response.getAccess_token());
        
        user.setPlainPassword("");

        return new ModelAndView("redirect:" + String.format(UDP_URL, user.getUDPToken()));

    }

    public String getUdpTemplate() {
        return udpTemplate;
    }

    public void setUdpTemplate(String udpTemplate) {
        this.udpTemplate = udpTemplate;
    }
}
