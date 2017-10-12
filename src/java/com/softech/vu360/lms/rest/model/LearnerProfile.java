package com.softech.vu360.lms.rest.model;

import java.util.LinkedHashMap;
import java.util.List;

public class LearnerProfile {
	
	private PersonalInformation personalInformation;
	private List<ValidationQuestionSet> validationQuestions;
	private LinkedHashMap uniqueValidationQuestions;
	private List<LearnerCreditReportingField> customFields;
	private List<LearnerCreditReportingField> reportingFields;

	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}
	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}
	public List<ValidationQuestionSet> getValidationQuestions() {
		return validationQuestions;
	}
	public void setValidationQuestions(
			List<ValidationQuestionSet> validationQuestions) {
		this.validationQuestions = validationQuestions;
	}

	public LinkedHashMap getUniqueValidationQuestions() {
		return uniqueValidationQuestions;
	}

	public void setUniqueValidationQuestions(LinkedHashMap uniqueValidationQuestions) {
		this.uniqueValidationQuestions = uniqueValidationQuestions;
	}

	public List<LearnerCreditReportingField> getCustomFields() {
		return customFields;
	}
	public void setCustomFields(List<LearnerCreditReportingField> customFields) {
		this.customFields = customFields;
	}
	public List<LearnerCreditReportingField> getReportingFields() {
		return reportingFields;
	}
	public void setReportingFields(List<LearnerCreditReportingField> reportingFields) {
		this.reportingFields = reportingFields;
	}
}
