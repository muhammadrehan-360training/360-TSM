//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2013.07.16 at 12:25:14 PM PKT 
//


package com.softech.vu360.lms.webservice.message.predict360.trainingplan;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for TrainingPlanSoapVO complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="TrainingPlanSoapVO">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="trainingPlanId" type="{http://www.w3.org/2001/XMLSchema}long" />
 *       &lt;attribute name="trainingPlanName" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "TrainingPlanSoapVO")
public class TrainingPlanSoapVO {

    @XmlAttribute(name = "trainingPlanId")
    protected Long trainingPlanId;
    @XmlAttribute(name = "trainingPlanName")
    protected String trainingPlanName;

    /**
     * Gets the value of the trainingPlanId property.
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    public Long getTrainingPlanId() {
        return trainingPlanId;
    }

    /**
     * Sets the value of the trainingPlanId property.
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setTrainingPlanId(Long value) {
        this.trainingPlanId = value;
    }

    /**
     * Gets the value of the trainingPlanName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTrainingPlanName() {
        return trainingPlanName;
    }

    /**
     * Sets the value of the trainingPlanName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTrainingPlanName(String value) {
        this.trainingPlanName = value;
    }

}
