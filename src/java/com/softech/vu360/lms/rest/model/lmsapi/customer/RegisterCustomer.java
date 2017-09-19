package com.softech.vu360.lms.rest.model.lmsapi.customer;

/**
 * 
 * @author haider.ali
 *
 */
public class RegisterCustomer {

	    protected String customerCode;
	    protected String apiKey;
	    protected String userName;
	    protected String organizationGroupName;
	    protected Manager manager;
	    protected Address address;
	    protected Company company;
	    protected String errorCode;
	    protected String errorMessage;
		public String getCustomerCode() {
			return customerCode;
		}
		public void setCustomerCode(String customerCode) {
			this.customerCode = customerCode;
		}
		public String getApiKey() {
			return apiKey;
		}
		public void setApiKey(String apiKey) {
			this.apiKey = apiKey;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getOrganizationGroupName() {
			return organizationGroupName;
		}
		public void setOrganizationGroupName(String organizationGroupName) {
			this.organizationGroupName = organizationGroupName;
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
		public Company getCompany() {
			return company;
		}
		public void setCompany(Company company) {
			this.company = company;
		}
		public String getErrorCode() {
			return errorCode;
		}
		public void setErrorCode(String errorCode) {
			this.errorCode = errorCode;
		}
		public String getErrorMessage() {
			return errorMessage;
		}
		public void setErrorMessage(String errorMessage) {
			this.errorMessage = errorMessage;
		}
	    
}
