package com.softech.vu360.lms.rest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.softech.vu360.lms.model.*;
import com.softech.vu360.lms.rest.model.lmsapi.contractEnrollment.ContractEnrollmentRequest;
import com.softech.vu360.lms.rest.model.lmsapi.contractEnrollment.ContractEnrollmentResponse;
import com.softech.vu360.lms.rest.model.lmsapi.enrollment.TransactionResultType;
import com.softech.vu360.lms.service.*;
import com.softech.vu360.lms.service.lmsapi.LmsApiEnrollmentService;
import com.softech.vu360.lms.service.lmsapi.response.LmsApiEnrollmentResponseService;
import com.softech.vu360.lms.service.lmsapi.validation.LmsApiAuthenticationService;
import com.softech.vu360.lms.service.lmsapi.validation.LmsApiEnrollmentValidationService;
import com.softech.vu360.lms.util.JsonUtils;
import com.softech.vu360.util.DateUtil;
import net.sf.json.util.JSONUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.bouncycastle.asn1.x500.style.RFC4519Style;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author haider.ali
 *
 */
@RestController
@RequestMapping(value = "/lmsApi")
public class LearnerContractEnrollmentService {

    private static final Logger logger = LogManager.getLogger(LearnerContractEnrollmentService.class);

    @Autowired
    private VU360UserService vu360UserService;
    @Autowired
    private CourseAndCourseGroupService courseAndCourseGroupService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private EntitlementService entitlementService;
    @Autowired
    private EnrollmentService enrollmentService;


    /**
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/contractPlusEnrollment", method = RequestMethod.POST)
    @ResponseBody
    @Transactional
    public Map<String, String> contractEnroll(@RequestBody ContractEnrollmentRequest request) throws Exception {

        logger.info("Request received at " + getClass().getName() + " for Contract plus learner enrollment");

        Map<String, String> responseData = new HashMap<>();
        ContractEnrollmentResponse r = new ContractEnrollmentResponse();
        r.setTransactionResult(TransactionResultType.FAILURE);

        try {

            Course c = courseAndCourseGroupService.getCourseByGUID(request.getCourseGuid());
            Customer customer = customerService.getCustomerByCustomerCode(request.getCustomerCode());

            List<VU360User> v = vu360UserService.getActiveUserByUsername(request.getUserName());

            if (c==null || customer==null || CollectionUtils.isEmpty(v)){

                responseData.put("status", "false");
                r.setTransactionResult(TransactionResultType.FAILURE);
                r.setTransactionResultMessage("Customer/Course/Learner not exists.");
                responseData.put("responsejson", JsonUtils.getJsonString(r));
                return responseData;
            }

            Learner learner = v.get(0).getLearner();

            //enrollment already exist.
            LearnerEnrollment alreadyExist = entitlementService.getLearnerEnrollmentsForLearner(learner, c);
            if (alreadyExist != null ) {
                responseData.put("status", "false");
                r.setEnrollmentId(alreadyExist.getId());
                r.setTransactionResult(TransactionResultType.FAILURE);
                r.setTransactionResultMessage("enrollment already exist.");
                responseData.put("responsejson", JsonUtils.getJsonString(r));
                return responseData;
            }

            CustomerEntitlement entm = entitlementService.assignCourseIntoSystemManagedContract(c, customer);

            LearnerEnrollment newEnrollment = new LearnerEnrollment();
            newEnrollment.setCourse(c);
            newEnrollment.setCustomerEntitlement(entm);
            newEnrollment.setLearner(learner);
            newEnrollment.setEnrollmentStartDate(new Date(System.currentTimeMillis()));
            newEnrollment.setEnrollmentStatus(LearnerEnrollment.ACTIVE);
            newEnrollment.setEnrollmentEndDate(entm.getEntitlementEndDate());

            LearnerEnrollment enrollment = enrollmentService.addEnrollment(learner, entm, null, newEnrollment);
            r.setEnrollmentId(enrollment.getId());

            String s = DateUtil.getStringDate(enrollment.getEnrollmentStartDate());
            String e = DateUtil.getStringDate(enrollment.getEnrollmentEndDate());
            r.setTransactionResultMessage("Start:"+ s +" EndDate:"+e);
            r.setTransactionResult(TransactionResultType.SUCCESS);

            responseData.put("status", "true");
            responseData.put("responsejson", JsonUtils.getJsonString(r));

            return responseData;

        }catch (Exception e){
            logger.debug(e);
            r.setTransactionResultMessage(e.getMessage());
            r.setTransactionResult(TransactionResultType.FAILURE);
            responseData.put("status", "fail");
            responseData.put("responsejson", JsonUtils.getJsonString(r) );
        }

        return responseData;
    }



}


