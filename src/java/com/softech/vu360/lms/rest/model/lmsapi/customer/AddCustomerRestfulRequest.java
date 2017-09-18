package com.softech.vu360.lms.rest.model.lmsapi.customer;

import java.math.BigInteger;


/**
 * 
 * @author haider.ali
 *
 */
public class AddCustomerRestfulRequest {

	protected Customers customers;
    protected BigInteger resellerId;
    protected boolean assignManger;
    
	public Customers getCustomers() {
		return customers;
	}
	public void setCustomers(Customers customers) {
		this.customers = customers;
	}
	public BigInteger getResellerId() {
		return resellerId;
	}
	public void setResellerId(BigInteger resellerId) {
		this.resellerId = resellerId;
	}
	public boolean isAssignManger() {
		return assignManger;
	}
	public void setAssignManger(boolean assigneManger) {
		this.assignManger = assigneManger;
	}

    
}
