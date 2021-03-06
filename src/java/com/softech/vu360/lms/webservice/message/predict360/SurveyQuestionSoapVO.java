//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2013.05.21 at 12:07:11 PM PKT 
//


package com.softech.vu360.lms.webservice.message.predict360;

import java.util.LinkedList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for SurveyQuestionSoapVO complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="SurveyQuestionSoapVO">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="answers" type="{http://www.360training.com/vu360/schemas/lms/surveyimport}SurveyQuestionAnswerSoapVO" maxOccurs="unbounded"/>
 *       &lt;/sequence>
 *       &lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}long" />
 *       &lt;attribute name="text" type="{http://www.w3.org/2001/XMLSchema}string" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "SurveyQuestionSoapVO", propOrder = {
    "answers"
})
public class SurveyQuestionSoapVO {

    protected List<SurveyQuestionAnswerSoapVO> answers;
    @XmlAttribute
    protected Long id;
    @XmlAttribute
    protected String text;
    @XmlAttribute
    protected String type;
    @XmlAttribute
    protected String notes;
    @XmlAttribute
    protected Boolean canHaveFile;
    @XmlAttribute
    protected Boolean fileRequired;

    /**
     * Gets the value of the answers property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the answers property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAnswers().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link SurveyQuestionAnswerSoapVO }
     * 
     * 
     */
    public List<SurveyQuestionAnswerSoapVO> getAnswers() {
        if (answers == null) {
            answers = new LinkedList<SurveyQuestionAnswerSoapVO>();
        }
        return this.answers;
    }

    /**
     * Gets the value of the id property.
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    public Long getId() {
        return id;
    }

    /**
     * Sets the value of the id property.
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setId(Long value) {
        this.id = value;
    }

    /**
     * Gets the value of the text property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getText() {
        return text;
    }

    /**
     * Sets the value of the text property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setText(String value) {
        this.text = value;
    }

	@Override
	public String toString() {
		return "SurveyQuestionSoapVO [answers=" + answers + ", id=" + id
				+ ", text=" + text + "]";
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Boolean getCanHaveFile() {
		return canHaveFile;
	}

	public void setCanHaveFile(Boolean canHaveFile) {
		this.canHaveFile = canHaveFile;
	}

	public Boolean getFileRequired() {
		return fileRequired;
	}

	public void setFileRequired(Boolean fileRequired) {
		this.fileRequired = fileRequired;
	}

}
