package com.softech.vu360.lms.rest.model.lmsapi.customer;

/**
 * 
 * @author haider.ali
 *
 */
public class Manager {

	
  private final static long serialVersionUID = 1L;
    protected String managerFirstName;
    protected String managerLastName;
    protected String managerPhone;
    protected String extension;
	public String getManagerFirstName() {
		return managerFirstName;
	}
	public void setManagerFirstName(String managerFirstName) {
		this.managerFirstName = managerFirstName;
	}
	public String getManagerLastName() {
		return managerLastName;
	}
	public void setManagerLastName(String managerLastName) {
		this.managerLastName = managerLastName;
	}
	public String getManagerPhone() {
		return managerPhone;
	}
	public void setManagerPhone(String managerPhone) {
		this.managerPhone = managerPhone;
	}
	public String getExtension() {
		return extension;
	}
	public void setExtension(String extension) {
		this.extension = extension;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

    
}
