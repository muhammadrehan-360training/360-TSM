package com.softech.vu360.lms.rest.model.lmsapi.customer;

import java.math.BigInteger;

import javax.xml.datatype.XMLGregorianCalendar;

/**
 * 
 * @author haider.ali
 *
 */
public class Customer {

    protected Company company;
    protected Manager manager;
    protected Address address;
    protected Address alternateAddress;
    protected String userName;
    protected String password;
    protected CustomerType customerType;
    protected BigInteger brandId;
    protected Boolean apiEnabled;
    protected Boolean accountLocked;
    protected Boolean accountExpired;
    protected Boolean accountDisabled;
    protected Boolean visibleOnReport;
    protected XMLGregorianCalendar accountExpirationDate;
    protected Boolean changePasswordOnNextLogin;
    
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Address getAlternateAddress() {
		return alternateAddress;
	}
	public void setAlternateAddress(Address alternateAddress) {
		this.alternateAddress = alternateAddress;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public CustomerType getCustomerType() {
		return customerType;
	}
	public void setCustomerType(CustomerType customerType) {
		this.customerType = customerType;
	}
	public BigInteger getBrandId() {
		return brandId;
	}
	public void setBrandId(BigInteger brandId) {
		this.brandId = brandId;
	}
	public Boolean getApiEnabled() {
		return apiEnabled;
	}
	public void setApiEnabled(Boolean apiEnabled) {
		this.apiEnabled = apiEnabled;
	}
	public Boolean getAccountLocked() {
		return accountLocked;
	}
	public void setAccountLocked(Boolean accountLocked) {
		this.accountLocked = accountLocked;
	}
	public Boolean getAccountExpired() {
		return accountExpired;
	}
	public void setAccountExpired(Boolean accountExpired) {
		this.accountExpired = accountExpired;
	}
	public Boolean getAccountDisabled() {
		return accountDisabled;
	}
	public void setAccountDisabled(Boolean accountDisabled) {
		this.accountDisabled = accountDisabled;
	}
	public Boolean getVisibleOnReport() {
		return visibleOnReport;
	}
	public void setVisibleOnReport(Boolean visibleOnReport) {
		this.visibleOnReport = visibleOnReport;
	}
	public XMLGregorianCalendar getAccountExpirationDate() {
		return accountExpirationDate;
	}
	public void setAccountExpirationDate(XMLGregorianCalendar accountExpirationDate) {
		this.accountExpirationDate = accountExpirationDate;
	}
	public Boolean getChangePasswordOnNextLogin() {
		return changePasswordOnNextLogin;
	}
	public void setChangePasswordOnNextLogin(Boolean changePasswordOnNextLogin) {
		this.changePasswordOnNextLogin = changePasswordOnNextLogin;
	}
   
	 public boolean isAccountExpired() {
	        if (accountExpired == null) {
	            return false;
	        } else {
	            return accountExpired;
	        }
	    }
	 
	 public boolean isApiEnabled() {
	        if (apiEnabled == null) {
	            return false;
	        } else {
	            return apiEnabled;
	        }
	    }
	 
	  public boolean isAccountDisabled() {
	        if (accountDisabled == null) {
	            return false;
	        } else {
	            return accountDisabled;
	        }
	    }
	  
	  public boolean isVisibleOnReport() {
	        if (visibleOnReport == null) {
	            return true;
	        } else {
	            return visibleOnReport;
	        }
	    }
	  
	  public boolean isChangePasswordOnNextLogin() {
	        if (changePasswordOnNextLogin == null) {
	            return false;
	        } else {
	            return changePasswordOnNextLogin;
	        }
	    }
	  
	  public boolean isAccountLocked() {
	        if (accountLocked == null) {
	            return false;
	        } else {
	            return accountLocked;
	        }
	    }
    
}
