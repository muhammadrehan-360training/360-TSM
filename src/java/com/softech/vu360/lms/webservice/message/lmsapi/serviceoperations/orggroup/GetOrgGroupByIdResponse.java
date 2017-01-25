//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.12.09 at 01:43:13 PM PKT 
//


package com.softech.vu360.lms.webservice.message.lmsapi.serviceoperations.orggroup;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import com.softech.vu360.lms.webservice.message.lmsapi.types.orggroup.ResponseOrganizationalGroup;
import com.softech.vu360.lms.webservice.message.lmsapi.types.transactionresult.TransactionResultType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="OrganizationalGroup" type="{http://orggroup.types.lmsapi.message.webservice.lms.vu360.softech.com}ResponseOrganizationalGroup" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="transactionResult" use="required" type="{http://transactionresult.types.lmsapi.message.webservice.lms.vu360.softech.com}TransactionResultType" /&gt;
 *       &lt;attribute name="transactionResultMessage" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "organizationalGroup"
})
@XmlRootElement(name = "GetOrgGroupByIdResponse")
public class GetOrgGroupByIdResponse
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "OrganizationalGroup")
    protected ResponseOrganizationalGroup organizationalGroup;
    @XmlAttribute(name = "transactionResult", required = true)
    protected TransactionResultType transactionResult;
    @XmlAttribute(name = "transactionResultMessage")
    protected String transactionResultMessage;

    /**
     * Gets the value of the organizationalGroup property.
     * 
     * @return
     *     possible object is
     *     {@link ResponseOrganizationalGroup }
     *     
     */
    public ResponseOrganizationalGroup getOrganizationalGroup() {
        return organizationalGroup;
    }

    /**
     * Sets the value of the organizationalGroup property.
     * 
     * @param value
     *     allowed object is
     *     {@link ResponseOrganizationalGroup }
     *     
     */
    public void setOrganizationalGroup(ResponseOrganizationalGroup value) {
        this.organizationalGroup = value;
    }

    /**
     * Gets the value of the transactionResult property.
     * 
     * @return
     *     possible object is
     *     {@link TransactionResultType }
     *     
     */
    public TransactionResultType getTransactionResult() {
        return transactionResult;
    }

    /**
     * Sets the value of the transactionResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link TransactionResultType }
     *     
     */
    public void setTransactionResult(TransactionResultType value) {
        this.transactionResult = value;
    }

    /**
     * Gets the value of the transactionResultMessage property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTransactionResultMessage() {
        return transactionResultMessage;
    }

    /**
     * Sets the value of the transactionResultMessage property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTransactionResultMessage(String value) {
        this.transactionResultMessage = value;
    }

}
