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
import org.apache.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

public class UDPController implements Controller {

    private static final Logger LOG = Logger.getLogger(UDPController.class.getName());

    private static final String UDP_TOKEN_SERVICE_URL = VU360Properties.getVU360Property("udp.token.service.url");
    private static final String UDP_URL = VU360Properties.getVU360Property("udp.url");
    private static final String UDP_TOKEN_SERVICE_ACCESSKEY = VU360Properties.getVU360Property("udp.token.service.accesskey");

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

        Map<String, Object> context;

        user = null;
        distributorCode = "";

        auth = SecurityContextHolder.getContext()
                .getAuthentication();

        if (auth.getPrincipal() != null
                && auth.getPrincipal() instanceof VU360User) {
            user = (VU360User) auth.getPrincipal();
        }

        // If authenticated user detatils are
        // not found, redirect to login page
        if (user == null) {
            return new ModelAndView("redirect:/login.do");
        }

        if (user.getLearner() != null
                && user.getLearner().getCustomer() != null
                && user.getLearner().getCustomer().getDistributor() != null
                && user.getLearner().getCustomer().getDistributor().getDistributorCode() != null) {

            distributorCode = user.getLearner().getCustomer().getDistributor().getDistributorCode();

        }

        // As per business need, Unified Dashboard is being
        // enabled for Megasite learners and in future will be
        // turned on for VAR learners
        // At this moment, B2b learners are not the priority
        // and if such requirement comes code changes are
        // required and expected
        if (distributorCode.isEmpty()) {
            if (user.getLearner() != null
                    && user.getLearner().getCustomer() != null
                    && user.getLearner().getCustomer().getDistributor() != null) {
                user.getLearner().getCustomer().getDistributor().setUdp(Boolean.FALSE);
            }
            return new ModelAndView("redirect:/lrn_myCourses.do");
        }

        try {
            requestFactory = RestClient.getClientHttpRequestFactory();
            restTemplate = new RestTemplate(requestFactory);
            request = new HttpEntity<>(new UDPTokenRequest(user.getUsername(), user.getPlainPassword(), distributorCode, UDP_TOKEN_SERVICE_ACCESSKEY));
            response = restTemplate.postForObject(UDP_TOKEN_SERVICE_URL, request, UDPTokenResponse.class);

            user.setIsUDPAllowed(response.isUdpAllowedTF());

            if (!user.isUDPAllowed()) {
                user.getLearner().getCustomer().getDistributor().setUdp(Boolean.FALSE);
                return new ModelAndView("redirect:/lrn_myCourses.do");
            }

            user.setUDPToken(response.getAccess_token());
            user.setPlainPassword("");

            context = new HashMap<>();
            context.put("udp", String.format(UDP_URL, user.getUDPToken()));

            return new ModelAndView(udpTemplate, context);

        } catch (Exception ex) {

            LOG.error(ex);
            
            user.getLearner().getCustomer().getDistributor().setUdp(Boolean.FALSE);
            return new ModelAndView("redirect:/lrn_myCourses.do");
        }

    }

    public String getUdpTemplate() {
        return udpTemplate;
    }

    public void setUdpTemplate(String udpTemplate) {
        this.udpTemplate = udpTemplate;
    }
}
