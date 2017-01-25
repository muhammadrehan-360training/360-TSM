package com.softech.vu360.lms.model;import java.util.Date;import javax.persistence.Column;import javax.persistence.Entity;import javax.persistence.GeneratedValue;import javax.persistence.GenerationType;import javax.persistence.Id;import javax.persistence.JoinColumn;import javax.persistence.OneToOne;import javax.persistence.Table;import javax.persistence.Transient;/** *  * @author marium.saud * */@Entity@Table(name = "ALERT")public class Alert implements SearchableKey {		@Id    @javax.persistence.TableGenerator(name = "ALERT_ID", table = "VU360_SEQ", pkColumnName = "TABLE_NAME", valueColumnName = "NEXT_ID", pkColumnValue = "ALERT", allocationSize = 1)    @GeneratedValue(strategy = GenerationType.TABLE, generator = "ALERT_ID")    private Long id;		@Column(name = "ALERTNAME")
	private String alertName = null;	@Column(name = "FORMNAME")
	private String fromName = null;		@Column(name = "FORMEMAILADDRESS")	private String fromEmailAddress = null;
	@Column(name = "ALERTSUBJECT")	private String alertSubject = null;
	@Column(name = "ALERTMESSAGEBODY")	private String alertMessageBody = null;		@Column(name = "LASTUPDATEDDATE")	private Date lastUpdatedDate=null;		@OneToOne    @JoinColumn(name="LASTUPDATEDBY")	private VU360User  lastUpdatedBy=null;		@Column(name = "USEDEFAULTMESSAGE")	private String useDefaultMessage = null;		@Column(name = "CREATEDDATE")	private Date createdDate=null;		@Column(name = "ISDELETE")	private Boolean isDelete=Boolean.FALSE;		@Transient	private Boolean isShowAll = true;
		@OneToOne    @JoinColumn(name="CREATEDBY")	private VU360User createdBy=null;		@Column(name = "ISDEFAULT")	private Boolean isDefault=Boolean.FALSE;	public String getKey() {		return id.toString();	}	/**	 * @return the id	 */	public Long getId() {		return id;	}	/**	 * @param id	 *            the id to set	 */	public void setId(Long id) {		this.id = id;	}	public String getAlertName() {		return alertName;	}	public void setAlertName(String alertName) {		this.alertName = alertName;	}	public String getFromName() {		return fromName;	}	public void setFromName(String fromName) {		this.fromName = fromName;	}	public String getFromEmailAddress() {		return fromEmailAddress;	}	public void setFromEmailAddress(String fromEmailAddress) {		this.fromEmailAddress = fromEmailAddress;	}	public String getAlertSubject() {		return alertSubject;	}	public void setAlertSubject(String alertSubject) {		this.alertSubject = alertSubject;	}	public String getAlertMessageBody() {		return alertMessageBody;	}	public void setAlertMessageBody(String alertMessageBody) {		this.alertMessageBody = alertMessageBody;	}	public Date getLastUpdatedDate() {		return lastUpdatedDate;	}	public void setLastUpdatedDate(Date lastUpdatedDate) {		this.lastUpdatedDate = lastUpdatedDate;	}	public VU360User getLastUpdatedBy() {		return lastUpdatedBy;	}	public void setLastUpdatedBy(VU360User lastUpdatedBy) {		this.lastUpdatedBy = lastUpdatedBy;	}	public String getUseDefaultMessage() {		return useDefaultMessage;	}	public void setUseDefaultMessage(String useDefaultMessage) {		this.useDefaultMessage = useDefaultMessage;	}	public Date getCreatedDate() {		return createdDate;	}	public void setCreatedDate(Date createdDate) {		this.createdDate = createdDate;	}	public VU360User getCreatedBy() {		return createdBy;	}	public void setCreatedBy(VU360User createdBy) {		this.createdBy = createdBy;	}	public  Boolean getIsDelete() {		if(isDelete==null){			isDelete=Boolean.FALSE;		}		return isDelete;	}	public void setIsDelete(Boolean isDelete) {		this.isDelete = isDelete;	}	public  Boolean isShowAll() {		return isShowAll;	}	public void setShowAll(Boolean isShowAll) {		this.isShowAll = isShowAll;	}	public  Boolean getIsDefault() {		if(isDefault==null){			isDefault=Boolean.FALSE;		}		return isDefault;	}	public void setIsDefault(Boolean isDefault) {		this.isDefault = isDefault;	}
}