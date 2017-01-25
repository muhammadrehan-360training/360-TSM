
package com.softech.vu360.lms.webservice.message.storefront.coursecatalog;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebService(name = "ThreeSixtyTraining-CatalogServicesPortType", targetNamespace = "http://www.threesixtytraining.com")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface ThreeSixtyTrainingCatalogServicesPortType {


    /**
     * 
     * @param syncCatalog
     * @return
     *     returns com.softech.vu360.lms.webservice.message.storefront.coursecatalog.CatalogCoursePublishResponse
     */
    @WebMethod(operationName = "SyncCatalog", action = "http://www.threesixtytraining.com/NewOperation")
    @WebResult(name = "CatalogCoursePublishResponse", targetNamespace = "http://www.threesixtytraining.com/CourseCatalog.xsd", partName = "ConfirmBOD")
    public CatalogCoursePublishResponse syncCatalog(
        @WebParam(name = "CatalogCoursePublishRequest", targetNamespace = "http://www.threesixtytraining.com/CourseCatalog.xsd", partName = "SyncCatalog")
        CatalogCoursePublishRequest syncCatalog);

}
