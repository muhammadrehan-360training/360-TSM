//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2014.12.09 at 03:40:50 PM PKT 
//


package com.softech.vu360.lms.webservice.message.lmsapi.types.orggroup;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for NewOrganizationalGroups complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="NewOrganizationalGroups"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="NewOrganizationalGroup" type="{http://orggroup.types.lmsapi.message.webservice.lms.vu360.softech.com}ResponseOrganizationalGroup" maxOccurs="unbounded"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "NewOrganizationalGroups", propOrder = {
    "newOrganizationalGroup"
})
public class NewOrganizationalGroups
    implements Serializable
{

    private final static long serialVersionUID = 1L;
    @XmlElement(name = "NewOrganizationalGroup", required = true)
    protected List<ResponseOrganizationalGroup> newOrganizationalGroup;

    /**
     * Gets the value of the newOrganizationalGroup property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the newOrganizationalGroup property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getNewOrganizationalGroup().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link ResponseOrganizationalGroup }
     * 
     * 
     */
    public List<ResponseOrganizationalGroup> getNewOrganizationalGroup() {
        if (newOrganizationalGroup == null) {
            newOrganizationalGroup = new ArrayList<ResponseOrganizationalGroup>();
        }
        return this.newOrganizationalGroup;
    }

	public void setNewOrganizationalGroup(List<ResponseOrganizationalGroup> newOrganizationalGroup) {
		this.newOrganizationalGroup = newOrganizationalGroup;
	}
    
}
