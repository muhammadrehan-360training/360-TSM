package com.softech.vu360.lms.util;

import java.io.InputStream;

import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

/**
 * @author ramiz.uddin
 * @since 0.1
 */
public class ResourceResolver implements LSResourceResolver {

    public LSInput resolveResource(String type, String namespaceURI,
                                   String publicId, String systemId, String baseURI) {

        // note: in this sample, the XSD's are expected to be in the root of the classpath
        InputStream resourceAsStream = this.getClass().getClassLoader()
                .getResourceAsStream(systemId);
        return new Input(publicId, systemId, resourceAsStream);
    }

}
