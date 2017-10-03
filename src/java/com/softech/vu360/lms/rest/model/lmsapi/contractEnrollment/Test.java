package com.softech.vu360.lms.rest.model.lmsapi.contractEnrollment;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.softech.vu360.lms.rest.model.lmsapi.enrollment.EnrollmentLearnerRestfulRequest;

/**
 * Created by haider.ali on 10/2/2017.
 */
public class Test {


    public static void main(String[] args) {

        ContractEnrollmentRequest r = new ContractEnrollmentRequest();
        r.setCourseGroupGuid("cg");
        r.setCustomerCode("cc");
        r.setUserName("un");

        String ss = getjsonString(r);
        System.out.println(ss);

    }


    private static String getjsonString(Object o) {
        ObjectMapper mapper = new ObjectMapper();

        String jsonInString = "unable to parse object to jason";
        try {
            jsonInString = mapper.writeValueAsString(o);
        } catch (JsonProcessingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return jsonInString;
    }
}
