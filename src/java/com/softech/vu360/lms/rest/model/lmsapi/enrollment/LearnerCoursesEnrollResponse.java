package com.softech.vu360.lms.rest.model.lmsapi.enrollment;

import java.util.List;





/**
 * 
 * @author haider.ali
 *
 */
public class LearnerCoursesEnrollResponse {

	    protected List<LearnerEnrolledCourses> learnerEnrolledCourses;
	    protected TransactionResultType transactionResult;
	    protected String transactionResultMessage;
	    
		public List<LearnerEnrolledCourses> getLearnerEnrolledCourses() {
			return learnerEnrolledCourses;
		}
		public void setLearnerEnrolledCourses(List<LearnerEnrolledCourses> learnerEnrolledCourses) {
			this.learnerEnrolledCourses = learnerEnrolledCourses;
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
