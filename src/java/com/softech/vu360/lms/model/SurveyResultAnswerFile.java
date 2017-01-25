package com.softech.vu360.lms.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *  ###  Generated by Oracle TopLink Workbench 11.1.1.0.1 - Thu Jul 18 09:21:04 PKST 2013.  ###
 * 
 * This class has no zero argument constructor.
 * This source code generation mechanism uses the 
 *  zero argument constructor to initialize instance variables.
 * In order for this class to be used by TopLink,
 *  make sure that its instance variables are initialized properly.
 */

/**
 * 
 * @author raja.ali
 *
 */

@Entity
@Table(name = "SurveyResultAnswerFile")
public class SurveyResultAnswerFile implements Serializable {

	private static final long serialVersionUID = 2582775732222420117L;
	
	@Id
	@javax.persistence.TableGenerator(name = "SurveyResultAnswerFile_ID", table = "VU360_SEQ", pkColumnName = "TABLE_NAME", valueColumnName = "NEXT_ID", pkColumnValue = "SurveyResultAnswerFile", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "SurveyResultAnswerFile_ID")
	@Column(name = "ID", unique = true, nullable = false)
	private Long id;
	
	@OneToOne
	@JoinColumn(name="surveyResultAnswerId")
	private SurveyResultAnswer surveyResultAnswer ;
	
	@Column(name = "fileName")
	private String fileName;
	
	@Column(name = "filePath")
	private String filePath;

	public SurveyResultAnswer getSurveyResultAnswer() {
		return (SurveyResultAnswer) this.surveyResultAnswer;
	}

	protected SurveyResultAnswer getSurveyResultAnswerHolder() {
		return this.surveyResultAnswer;
	}

	public void setSurveyResultAnswer(SurveyResultAnswer surveyResultAnswer) {
		this.surveyResultAnswer = surveyResultAnswer;
	}

	protected void setSurveyResultAnswerHolder(SurveyResultAnswer surveyResultAnswer) {
		this.surveyResultAnswer = surveyResultAnswer;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

}
