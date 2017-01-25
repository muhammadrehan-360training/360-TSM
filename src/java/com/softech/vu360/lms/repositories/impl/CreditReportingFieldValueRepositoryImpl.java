/**
 * 
 */
package com.softech.vu360.lms.repositories.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;

import com.softech.vu360.lms.model.CreditReportingFieldValue;
import com.softech.vu360.lms.repositories.CreditReportingFieldValueRepositoryCustom;

/**
 * @author marium.saud
 *
 */
public class CreditReportingFieldValueRepositoryImpl implements CreditReportingFieldValueRepositoryCustom {
	
	@PersistenceContext
	protected EntityManager entityManager;

	@Override
	public void storeEncryptedValue(CreditReportingFieldValue creditReportingfieldValue) {
		StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery("CreditReportingFieldValue.storeEncryptedValue");
		query.setParameter("CREDITREPORTINGFIELDVALUE_ID", creditReportingfieldValue.getId());
		query.setParameter("CREDITREPORTINGFIELDVALUE_VALUE", creditReportingfieldValue.getValue());
		query.execute();
		
	}
	
}
