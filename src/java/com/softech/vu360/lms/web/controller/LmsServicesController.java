package com.softech.vu360.lms.web.controller;

import com.softech.JWTValidation.JwtValidation;
import com.softech.JWTValidation.model.JwtPayload;
import com.softech.vu360.lms.model.VU360User;
import com.softech.vu360.lms.service.LmsAuthenticationService;
import com.softech.vu360.util.Brander;
import com.softech.vu360.util.VU360Branding;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

public class LmsServicesController implements Controller{

	private static final Logger log = Logger.getLogger(LmsServicesController.class.getName());

	private LmsAuthenticationService lmsAuthenticationService;

	@Override
	public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
		ModelAndView modelAndView = null;
		String token = httpServletRequest.getParameter("token");
		String learnerEnrollmentId = httpServletRequest.getParameter("learnerEnrollmentId");
		if(httpServletRequest.getParameter("method") != null && httpServletRequest.getParameter("method").equals("launchCourse")){
			String courseBusinessKey = httpServletRequest.getParameter("courseId");
			modelAndView = launchCourse(token, learnerEnrollmentId, courseBusinessKey, httpServletRequest, httpServletResponse);
		}else if(httpServletRequest.getParameter("method") != null && httpServletRequest.getParameter("method").equals("launchCertificate")){
			modelAndView = launchCertificate(token, learnerEnrollmentId, httpServletRequest, httpServletResponse);
		}
		return modelAndView;
	}

	public ModelAndView launchCourse(
			@RequestParam(value = "token", required = true) String token,
			@RequestParam(value = "learnerEnrollmentId", required = true) String enrollmentId,
			@RequestParam(value = "courseId", required = true) String courseId,
			HttpServletRequest httpRequest, HttpServletResponse httpResponse) throws Exception {

		log.info("Request received at " + getClass().getName() + " for Launch Course");
		ModelAndView modelAndView = null;
		try {
			JwtPayload jwtPayload = JwtValidation.validateJWTToken(token);
			if (StringUtils.isNotBlank(jwtPayload.getUser_name())) {
				Authentication auth = lmsAuthenticationService.authenticateUser(jwtPayload.getUser_name());
				Object principal = auth.getPrincipal();
				if (principal instanceof VU360User) {
					Brander brander = VU360Branding.getInstance().getBranderByUser(httpRequest, (VU360User)principal);
					httpRequest.getSession().setAttribute(VU360Branding.BRAND, brander);
				}
				String url = String.format("redirect:/lrn_launchCourse.do?method=displayLearnerProfile&learnerEnrollmentId=%s&courseId=%s", enrollmentId, courseId);
				modelAndView = getModelAndView(httpRequest, auth, url);
			}
		} catch (Exception e) {
			modelAndView = getErrorModelAndView(e);
		}
		return modelAndView;
	}

	public ModelAndView launchCertificate(
			@RequestParam(value = "token", required = true) String token,
			@RequestParam(value = "learnerEnrollmentId", required = true) String enrollmentId,
			HttpServletRequest httpRequest, HttpServletResponse httpResponse) throws Exception {

		log.info("Request received at " + getClass().getName() + " for Launch Certificate");

		ModelAndView modelAndView = null;
		try {
			String userName = JwtValidation.validateJWTToken(token).getUser_name();
			if (StringUtils.isNotBlank(userName)) {
				Authentication auth = lmsAuthenticationService.authenticateUser(userName);
				modelAndView = getModelAndView(httpRequest, auth, "forward:/completionCertificate.pdf");
			}
		} catch (Exception e) {
			modelAndView = getErrorModelAndView(e);
		}
		return modelAndView;
	}

	private ModelAndView getModelAndView(HttpServletRequest httpRequest, Authentication auth, String viewName) throws Exception {
		SecurityContextHolder.getContext().setAuthentication(auth);
		httpRequest.getSession(true);
		return new ModelAndView(viewName);
	}

	private ModelAndView getErrorModelAndView(Exception e) {

		Map<Object, Object> errorModel = new HashMap<Object, Object>();
		errorModel.put("error", e.getMessage());
		return new ModelAndView("lmsServicesControllerError", "context", errorModel);

	}

	public LmsAuthenticationService getLmsAuthenticationService() {
		return lmsAuthenticationService;
	}

	public void setLmsAuthenticationService(LmsAuthenticationService lmsAuthenticationService) {
		this.lmsAuthenticationService = lmsAuthenticationService;
	}
}