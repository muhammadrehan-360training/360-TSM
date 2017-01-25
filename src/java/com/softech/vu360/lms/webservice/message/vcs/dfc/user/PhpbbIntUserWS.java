
package com.softech.vu360.lms.webservice.message.vcs.dfc.user;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Logger;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.6 in JDK 6
 * Generated source version: 2.1
 * 
 */
@WebServiceClient(name = "phpbbIntUserWS", targetNamespace = "http://www.threesixtytraining.com/phpbbIntUserWS", wsdlLocation = "http://localhost/phpbbIntegrationService/service/phpbbUserWS.php?wsdl")
public class PhpbbIntUserWS
    extends Service
{

    private final static URL PHPBBINTUSERWS_WSDL_LOCATION;
    private final static Logger logger = Logger.getLogger(com.softech.vu360.lms.webservice.message.vcs.dfc.user.PhpbbIntUserWS.class.getName());

    static {
        URL url = null;
        try {
            URL baseUrl;
            baseUrl = com.softech.vu360.lms.webservice.message.vcs.dfc.user.PhpbbIntUserWS.class.getResource(".");
            url = new URL(baseUrl, "http://localhost/phpbbIntegrationService/service/phpbbUserWS.php?wsdl");
        } catch (MalformedURLException e) {
            logger.warning("Failed to create URL for the wsdl Location: 'http://localhost/phpbbIntegrationService/service/phpbbUserWS.php?wsdl', retrying as a local file");
            logger.warning(e.getMessage());
        }
        PHPBBINTUSERWS_WSDL_LOCATION = url;
    }

    public PhpbbIntUserWS(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public PhpbbIntUserWS() {
        super(PHPBBINTUSERWS_WSDL_LOCATION, new QName("http://www.threesixtytraining.com/phpbbIntUserWS", "phpbbIntUserWS"));
    }

    /**
     * 
     * @return
     *     returns PhpbbIntUserWSPortType
     */
    @WebEndpoint(name = "phpbbIntUserWSPort")
    public PhpbbIntUserWSPortType getPhpbbIntUserWSPort() {
        return super.getPort(new QName("http://www.threesixtytraining.com/phpbbIntUserWS", "phpbbIntUserWSPort"), PhpbbIntUserWSPortType.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns PhpbbIntUserWSPortType
     */
    @WebEndpoint(name = "phpbbIntUserWSPort")
    public PhpbbIntUserWSPortType getPhpbbIntUserWSPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://www.threesixtytraining.com/phpbbIntUserWS", "phpbbIntUserWSPort"), PhpbbIntUserWSPortType.class, features);
    }

}
