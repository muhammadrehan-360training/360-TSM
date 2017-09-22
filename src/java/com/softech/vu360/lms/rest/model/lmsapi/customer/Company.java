package com.softech.vu360.lms.rest.model.lmsapi.customer;



/**
 * 
 * @author haider.ali
 *
 */
public class Company {

	
	    protected String name;
	    protected String website;
	    protected String email;
	    protected AccountStatus accountStatus;
	    
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getWebsite() {
			return website;
		}
		public void setWebsite(String website) {
			this.website = website;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public AccountStatus getAccountStatus() {
			return accountStatus;
		}
		public void setAccountStatus(AccountStatus accountStatus) {
			this.accountStatus = accountStatus;
		}

	    
}
