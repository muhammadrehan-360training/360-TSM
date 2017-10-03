package com.softech.vu360.lms.rest.model.lmsapi.contractEnrollment;

import com.softech.vu360.lms.rest.model.lmsapi.enrollment.TransactionResultType;

/**
 * Created by haider.ali on 10/2/2017.
 */
public class ContractEnrollmentResponse {

    private Long enrollmentId;
    private TransactionResultType transactionResult;
    private String transactionResultMessage;

    public Long getEnrollmentId() {
        return enrollmentId;
    }

    public void setEnrollmentId(Long enrollmentId) {
        this.enrollmentId = enrollmentId;
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


