package com.softech.vu360.lms.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Created by haider.ali on 10/3/2017.
 */
public class JsonUtils {

    public static String getJsonString(Object o) {
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
