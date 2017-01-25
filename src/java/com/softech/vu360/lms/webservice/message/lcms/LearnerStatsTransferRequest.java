package com.softech.vu360.lms.webservice.message.lcms;



import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;attribute name="transactionGUID" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="eventDate" type="{http://www.w3.org/2001/XMLSchema}dateTime" />
 *       &lt;attribute name="learningSessionId" use="required" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="courseCompleted" type="{http://www.w3.org/2001/XMLSchema}boolean" />
 *       &lt;attribute name="certificateURL" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="assessmentType" type="{http://www.w3.org/2001/XMLSchema}string" />
 *       &lt;attribute name="assessmentScore" type="{http://www.w3.org/2001/XMLSchema}double" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "")
@XmlRootElement(name = "LearnerStatsTransferRequest")
public class LearnerStatsTransferRequest {

	@XmlAttribute(required = true)
    protected String transactionGUID;
    @XmlAttribute
    protected XMLGregorianCalendar eventDate;
    @XmlAttribute(required = true)
    protected String learningSessionId;
    @XmlAttribute
    protected Boolean courseCompleted;
    @XmlAttribute
    protected String certificateURL;

    @XmlAttribute
    protected String assessmentType;

    @XmlAttribute
    protected Double assessmentScore;

	public String getTransactionGUID() {
		return transactionGUID;
	}

	public void setTransactionGUID(String transactionGUID) {
		this.transactionGUID = transactionGUID;
	}

	public XMLGregorianCalendar getEventDate() {
		return eventDate;
	}

	public void setEventDate(XMLGregorianCalendar eventDate) {
		this.eventDate = eventDate;
	}

	public String getLearningSessionId() {
		return learningSessionId;
	}

	public void setLearningSessionId(String learningSessionId) {
		this.learningSessionId = learningSessionId;
	}

	public Boolean getCourseCompleted() {
		return courseCompleted;
	}

	public void setCourseCompleted(Boolean courseCompleted) {
		this.courseCompleted = courseCompleted;
	}

	public String getCertificateURL() {
		return certificateURL;
	}

	public void setCertificateURL(String certificateURL) {
		this.certificateURL = certificateURL;
	}

	public String getAssessmentType() {
		return assessmentType;
	}

	public void setAssessmentType(String assessmentType) {
		this.assessmentType = assessmentType;
	}

	public Double getAssessmentScore() {
		return assessmentScore;
	}

	public void setAssessmentScore(Double assessmentScore) {
		this.assessmentScore = assessmentScore;
	}

	
	
	
	
	
}
