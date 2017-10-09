package com.softech.vu360.lms.rest.model.lmsapi.customer;


/**
 * 
 * @author haider.ali
 *
 */
public class AddCustomerResponse {

	
	    protected RegisterCustomers registerCustomers;
	    protected TransactionResultType transactionResult;
	    protected String transactionResultMessage;
	    
		public RegisterCustomers getRegisterCustomers() {
			return registerCustomers;
		}
		public void setRegisterCustomers(RegisterCustomers registerCustomers) {
			this.registerCustomers = registerCustomers;
		}
		public TransactionResultType getTransactionResult() {
			return transactionResult;
		}
		public void setTransactionResult(TransactionResultType transactionResult) {
			this.transactionResult = transactionResult;
		}
		public String getTransactionResultMessage() {
			return transactionResultMessage;
		}
		public void setTransactionResultMessage(String transactionResultMessage) {
			this.transactionResultMessage = transactionResultMessage;
		}
	    
	    
}
