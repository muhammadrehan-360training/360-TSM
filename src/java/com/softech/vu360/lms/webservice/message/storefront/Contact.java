
package com.softech.vu360.lms.webservice.message.storefront;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Contact complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Contact">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="billingAddress" type="{http://www.360training.com/vu360/schemas/lms/sfMessages}Address"/>
 *         &lt;element name="shippingAddress" type="{http://www.360training.com/vu360/schemas/lms/sfMessages}Address"/>
 *         &lt;element name="authenticationCredential" type="{http://www.360training.com/vu360/schemas/lms/sfMessages}AuthenticationCredential"/>
 *       &lt;/sequence>
 *       &lt;attribute name="firstName" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="lastName" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="emailAddress" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="alternateEmailAddress" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="primaryPhone" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="alternatePhone" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="billingShippingAddressSame" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Contact", propOrder = {
    "billingAddress",
    "shippingAddress",
    "authenticationCredential"
})
public class Contact {

    @XmlElement(required = true)
    protected Address billingAddress;
    @XmlElement(required = true)
    protected Address shippingAddress;
    @XmlElement(required = true)
    protected AuthenticationCredential authenticationCredential;
    @XmlAttribute(required = true)
    protected String firstName;
    @XmlAttribute(required = true)
    protected String lastName;
    @XmlAttribute(required = true)
    protected String emailAddress;
    @XmlAttribute
    protected String alternateEmailAddress;
    @XmlAttribute(required = true)
    protected String primaryPhone;
    @XmlAttribute
    protected String alternatePhone;
    @XmlAttribute
    protected Boolean billingShippingAddressSame;

    /**
     * Gets the value of the billingAddress property.
     * 
     * @return
     *     possible object is
     *     {@link Address }
     *     
     */
    public Address getBillingAddress() {
        return billingAddress;
    }

    /**
     * Sets the value of the billingAddress property.
     * 
     * @param value
     *     allowed object is
     *     {@link Address }
     *     
     */
    public void setBillingAddress(Address value) {
        this.billingAddress = value;
    }

    /**
     * Gets the value of the shippingAddress property.
     * 
     * @return
     *     possible object is
     *     {@link Address }
     *     
     */
    public Address getShippingAddress() {
        return shippingAddress;
    }

    /**
     * Sets the value of the shippingAddress property.
     * 
     * @param value
     *     allowed object is
     *     {@link Address }
     *     
     */
    public void setShippingAddress(Address value) {
        this.shippingAddress = value;
    }

    /**
     * Gets the value of the authenticationCredential property.
     * 
     * @return
     *     possible object is
     *     {@link AuthenticationCredential }
     *     
     */
    public AuthenticationCredential getAuthenticationCredential() {
        return authenticationCredential;
    }

    /**
     * Sets the value of the authenticationCredential property.
     * 
     * @param value
     *     allowed object is
     *     {@link AuthenticationCredential }
     *     
     */
    public void setAuthenticationCredential(AuthenticationCredential value) {
        this.authenticationCredential = value;
    }

    /**
     * Gets the value of the firstName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Sets the value of the firstName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFirstName(String value) {
        this.firstName = value;
    }

    /**
     * Gets the value of the lastName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Sets the value of the lastName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLastName(String value) {
        this.lastName = value;
    }

    /**
     * Gets the value of the emailAddress property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmailAddress() {
        return emailAddress;
    }

    /**
     * Sets the value of the emailAddress property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmailAddress(String value) {
        this.emailAddress = value;
    }

    /**
     * Gets the value of the alternateEmailAddress property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAlternateEmailAddress() {
        return alternateEmailAddress;
    }

    /**
     * Sets the value of the alternateEmailAddress property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAlternateEmailAddress(String value) {
        this.alternateEmailAddress = value;
    }

    /**
     * Gets the value of the primaryPhone property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPrimaryPhone() {
        return primaryPhone;
    }

    /**
     * Sets the value of the primaryPhone property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPrimaryPhone(String value) {
        this.primaryPhone = value;
    }

    /**
     * Gets the value of the alternatePhone property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAlternatePhone() {
        return alternatePhone;
    }

    /**
     * Sets the value of the alternatePhone property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAlternatePhone(String value) {
        this.alternatePhone = value;
    }

    /**
     * Gets the value of the billingShippingAddressSame property.
     * 
     * @return
     *     possible object is
     *     {@link Boolean }
     *     
     */
    public Boolean isBillingShippingAddressSame() {
        return billingShippingAddressSame;
    }

    /**
     * Sets the value of the billingShippingAddressSame property.
     * 
     * @param value
     *     allowed object is
     *     {@link Boolean }
     *     
     */
    public void setBillingShippingAddressSame(Boolean value) {
        this.billingShippingAddressSame = value;
    }

}
