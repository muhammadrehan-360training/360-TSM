package com.softech.vu360.lms.web.controller.model.accreditation;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.softech.vu360.lms.model.CourseApproval;
import com.softech.vu360.lms.model.RestrictedCourse;
import com.softech.vu360.lms.model.Document;
import com.softech.vu360.lms.model.InstructorApproval;
import com.softech.vu360.lms.model.ProviderApproval;
import com.softech.vu360.lms.model.PurchaseCertificateNumber;
import com.softech.vu360.lms.model.RegulatorCategory;
import com.softech.vu360.lms.model.RegulatoryApproval;
import com.softech.vu360.lms.web.controller.ILMSBaseInterface;

/**
 * 
 * @author  ramiz.uddin
 * @since   8/17/2017
 *
 */
public class ApprovalForm implements ILMSBaseInterface {
  private static final long serialVersionUID = 1L;
  public static final String CUSTOMFIELD_SINGLE_LINE_OF_TEXT = "Single Line of Text";
  public static final String CUSTOMFIELD_DATE = "Date";
  public static final String CUSTOMFIELD_MULTIPLE_LINES_OF_TEXT = "Multiple Lines of Text";
  public static final String CUSTOMFIELD_NUMBER = "Number";
  public static final String CUSTOMFIELD_RADIO_BUTTON = "Radio Button";
  public static final String CUSTOMFIELD_CHOOSE = "Choose Menu";
  public static final String CUSTOMFIELD_CHECK_BOX = "Check Box";
  public static final String CUSTOMFIELD_SOCIAL_SECURITY_NUMBER = "Social Security Number";
  public static final String CUSTOMFIELD_STATIC = "Static Field";

  public static final String COURSE_DOCUMENT = "CourseDoc";
  public static final String PROVIDER_DOCUMENT = "ProviderDoc";
  public static final String INSTRUCTOR_DOCUMENT = "InstructorDoc";

  public static final String COURSE_APPROVAL = "Course";
  public static final String PROVIDER_APPROVAL = "Provider";
  public static final String INSTRUCTOR_APPROVAL = "Instructor";

  private RegulatoryApproval approval;

  private long appId = 0;

  // for ProviderApproval summary page
  private ProviderApproval providerApproval;
  private ProviderApproval renewProviderApproval;
  private String approvalEffectivelyStartDate;
  private String approvalEffectivelyEndDate;
  private String mostRecentlySubmittedForApprovalDate = null;
  private String originallyApprovedDate = null;
  private String submissionReminderDate = null;

  // for InstructorApproval summary page
  InstructorApproval instructorApproval = null;
  InstructorApproval renewInstructorApproval = null;

  // for course approval
  private CourseApproval courseApproval;
  private CourseApproval renewCourseApproval;
  private List<ApprovalCredential> approvalCredential = new ArrayList<ApprovalCredential>();

  private List<com.softech.vu360.lms.web.controller.model.customfield.CustomField> customFields = new ArrayList<com.softech.vu360.lms.web.controller.model.customfield.CustomField>();

  // for add regulator
  private String entity;
  private String regulatorName;
  private String alias;
  private String emailAddress;
  private List<ApprovalRegulator> regulators = new ArrayList<ApprovalRegulator>();
  private List<ApprovalRegulatorCategory> regulatorCategories = new ArrayList<ApprovalRegulatorCategory>();
  // for add documents
  private List<Document> documents = new ArrayList<Document>();
  // for purchase certificate numbers
  private List<PurchaseCertificateNumber> purchaseCertificateNumbers = new ArrayList<PurchaseCertificateNumber>();
  // for edit document
  private String docEntity;

  private String selectedRegulatorCategoryId;
  private String certificateNumberGeneratorNextNumberString = "";
  // for edit documents
  Document document = null;

  // for add Custom Field
  private List<ManageCustomField> manageCustomField = new ArrayList<ManageCustomField>();

  private RegulatorCategory regulatorCategory;
  private String regulatorCategoryName = "";
  private String regulatorCategoryType = "";

  // for pagination
  private String pageIndex = "0";
  private String showAll = "false";
  private String pageCurrIndex;

  // for sorting
  private String sortColumnIndex;
  private String sortDirection;

  private int totalNumberOfUnusedPurchaseCertificateNumbers;
  private String certificateExpirationPeriod = "";

  private Set<RestrictedCourse> restrictedCourses = new HashSet<RestrictedCourse>();

  /**
   * @return the alias
   */
  public String getAlias() {
    return alias;
  }

  /**
   * @return the appId
   */
  public long getAppId() {
    return appId;
  }

  public RegulatoryApproval getApproval() {
    return approval;
  }

  /**
   * @return the approvalCredential
   */
  public List<ApprovalCredential> getApprovalCredential() {
    return approvalCredential;
  }

  /**
   * @return the approvalEffectivelyEndDate
   */
  public String getApprovalEffectivelyEndDate() {
    return approvalEffectivelyEndDate;
  }

  /**
   * @return the approvalEffectivelyStartDate
   */
  public String getApprovalEffectivelyStartDate() {
    return approvalEffectivelyStartDate;
  }

  public String getCertificateExpirationPeriod() {
    return certificateExpirationPeriod;
  }

  public String getCertificateNumberGeneratorNextNumberString() {
    return certificateNumberGeneratorNextNumberString;
  }

  public CourseApproval getCourseApproval() {
    return courseApproval;
  }

  /**
   * @return the customFields
   */
  public List<com.softech.vu360.lms.web.controller.model.customfield.CustomField> getCustomFields() {
    return customFields;
  }

  /**
   * @return the docEntity
   */
  public String getDocEntity() {
    return docEntity;
  }

  /**
   * @return the document
   */
  public Document getDocument() {
    return document;
  }

  /**
   * @return the documents
   */
  public List<Document> getDocuments() {
    return documents;
  }

  /**
   * @return the emailAddress
   */
  public String getEmailAddress() {
    return emailAddress;
  }

  /**
   * @return the entity
   */
  public String getEntity() {
    return entity;
  }

  /**
   * @return the instructorApproval
   */
  public InstructorApproval getInstructorApproval() {
    return instructorApproval;
  }

  /**
   * @return the manageCustomField
   */
  public List<ManageCustomField> getManageCustomField() {
    return manageCustomField;
  }

  /**
   * @return the mostRecentlySubmittedForApprovalDate
   */
  public String getMostRecentlySubmittedForApprovalDate() {
    return mostRecentlySubmittedForApprovalDate;
  }

  /**
   * @return the originallyApprovedDate
   */
  public String getOriginallyApprovedDate() {
    return originallyApprovedDate;
  }

  /**
   * @return the pageCurrIndex
   */
  public String getPageCurrIndex() {
    return pageCurrIndex;
  }

  /**
   * @return the pageIndex
   */
  public String getPageIndex() {
    return pageIndex;
  }

  /**
   * @return the providerApproval
   */
  public ProviderApproval getProviderApproval() {
    return providerApproval;
  }

  /**
   * @return the purchaseCertificateNumbers
   */
  public List<PurchaseCertificateNumber> getPurchaseCertificateNumbers() {
    return purchaseCertificateNumbers;
  }

  public List<ApprovalRegulatorCategory> getRegulatorCategories() {
    return regulatorCategories;
  }

  public RegulatorCategory getRegulatorCategory() {
    return regulatorCategory;
  }

  public String getRegulatorCategoryName() {
    return regulatorCategoryName;
  }

  public String getRegulatorCategoryType() {
    return regulatorCategoryType;
  }

  /**
   * @return the regulatorName
   */
  public String getRegulatorName() {
    return regulatorName;
  }

  /**
   * @return the regulators
   */
  public List<ApprovalRegulator> getRegulators() {
    return regulators;
  }

  /**
   * @return the renewCourseApproval
   */
  public CourseApproval getRenewCourseApproval() {
    return renewCourseApproval;
  }

  /**
   * @return the renewInstructorApproval
   */
  public InstructorApproval getRenewInstructorApproval() {
    return renewInstructorApproval;
  }

  /**
   * @return the renewProviderApproval
   */
  public ProviderApproval getRenewProviderApproval() {
    return renewProviderApproval;
  }

  public Set<RestrictedCourse> getRestrictedCourses() {
    return restrictedCourses;
  }

  public String getSelectedRegulatorCategoryId() {
    return selectedRegulatorCategoryId;
  }

  /**
   * @return the showAll
   */
  public String getShowAll() {
    return showAll;
  }

  /**
   * @return the sortColumnIndex
   */
  public String getSortColumnIndex() {
    return sortColumnIndex;
  }

  /**
   * @return the sortDirection
   */
  public String getSortDirection() {
    return sortDirection;
  }

  /**
   * @return the submissionReminderDate
   */
  public String getSubmissionReminderDate() {
    return submissionReminderDate;
  }

  public int getTotalNumberOfUnusedPurchaseCertificateNumbers() {
    return totalNumberOfUnusedPurchaseCertificateNumbers;
  }

  /**
   * @param alias the alias to set
   */
  public void setAlias(String alias) {
    this.alias = alias;
  }

  /**
   * @param appId the appId to set
   */
  public void setAppId(long appId) {
    this.appId = appId;
  }

  public void setApproval(RegulatoryApproval approval) {
    this.approval = approval;
  }

  /**
   * @param approvalCredential the approvalCredential to set
   */
  public void setApprovalCredential(List<ApprovalCredential> approvalCredential) {
    this.approvalCredential = approvalCredential;
  }

  /**
   * @param approvalEffectivelyEndDate the approvalEffectivelyEndDate to set
   */
  public void setApprovalEffectivelyEndDate(String approvalEffectivelyEndDate) {
    this.approvalEffectivelyEndDate = approvalEffectivelyEndDate;
  }

  /**
   * @param approvalEffectivelyStartDate the approvalEffectivelyStartDate to set
   */
  public void setApprovalEffectivelyStartDate(String approvalEffectivelyStartDate) {
    this.approvalEffectivelyStartDate = approvalEffectivelyStartDate;
  }

  public void setCertificateExpirationPeriod(String certificateExpirationPeriod) {
    this.certificateExpirationPeriod = certificateExpirationPeriod;
  }

  public void setCertificateNumberGeneratorNextNumberString(
    String certificateNumberGeneratorNextNumberString) {
    this.certificateNumberGeneratorNextNumberString = certificateNumberGeneratorNextNumberString;
  }

  public void setCourseApproval(CourseApproval courseApproval) {
    this.courseApproval = courseApproval;
  }

  /**
   * @param customFields the customFields to set
   */
  public void setCustomFields(
    List<com.softech.vu360.lms.web.controller.model.customfield.CustomField> customFields) {
    this.customFields = customFields;
  }

  /**
   * @param docEntity the docEntity to set
   */
  public void setDocEntity(String docEntity) {
    this.docEntity = docEntity;
  }

  /**
   * @param document the document to set
   */
  public void setDocument(Document document) {
    this.document = document;
  }

  /**
   * @param documents the documents to set
   */
  public void setDocuments(List<Document> documents) {
    this.documents = documents;
  }

  /**
   * @param emailAddress the emailAddress to set
   */
  public void setEmailAddress(String emailAddress) {
    this.emailAddress = emailAddress;
  }

  /**
   * @param entity the entity to set
   */
  public void setEntity(String entity) {
    this.entity = entity;
  }

  /**
   * @param instructorApproval the instructorApproval to set
   */
  public void setInstructorApproval(InstructorApproval instructorApproval) {
    this.instructorApproval = instructorApproval;
  }

  /**
   * @param manageCustomField the manageCustomField to set
   */
  public void setManageCustomField(List<ManageCustomField> manageCustomField) {
    this.manageCustomField = manageCustomField;
  }

  /**
   * @param mostRecentlySubmittedForApprovalDate the mostRecentlySubmittedForApprovalDate to set
   */
  public void setMostRecentlySubmittedForApprovalDate(
    String mostRecentlySubmittedForApprovalDate) {
    this.mostRecentlySubmittedForApprovalDate = mostRecentlySubmittedForApprovalDate;
  }

  /**
   * @param originallyApprovedDate the originallyApprovedDate to set
   */
  public void setOriginallyApprovedDate(String originallyApprovedDate) {
    this.originallyApprovedDate = originallyApprovedDate;
  }

  /**
   * @param pageCurrIndex the pageCurrIndex to set
   */
  public void setPageCurrIndex(String pageCurrIndex) {
    this.pageCurrIndex = pageCurrIndex;
  }

  /**
   * @param pageIndex the pageIndex to set
   */
  public void setPageIndex(String pageIndex) {
    this.pageIndex = pageIndex;
  }

  /**
   * @param providerApproval the providerApproval to set
   */
  public void setProviderApproval(ProviderApproval providerApproval) {
    this.providerApproval = providerApproval;
  }

  /**
   * @param purchaseCertificateNumbers the purchaseCertificateNumbers to set
   */
  public void setPurchaseCertificateNumbers(
    List<PurchaseCertificateNumber> purchaseCertificateNumbers) {
    this.purchaseCertificateNumbers = purchaseCertificateNumbers;
  }

  public void setRegulatorCategories(
    List<ApprovalRegulatorCategory> regulatorCategories) {
    this.regulatorCategories = regulatorCategories;
  }

  public void setRegulatorCategory(RegulatorCategory regulatorCategory) {
    this.regulatorCategory = regulatorCategory;
  }

  public void setRegulatorCategoryName(String regulatorCategoryName) {
    this.regulatorCategoryName = regulatorCategoryName;
  }

  public void setRegulatorCategoryType(String regulatorCategoryType) {
    this.regulatorCategoryType = regulatorCategoryType;
  }

  /**
   * @param regulatorName the regulatorName to set
   */
  public void setRegulatorName(String regulatorName) {
    this.regulatorName = regulatorName;
  }

  /**
   * @param regulators the regulators to set
   */
  public void setRegulators(List<ApprovalRegulator> regulators) {
    this.regulators = regulators;
  }

  /**
   * @param renewCourseApproval the renewCourseApproval to set
   */
  public void setRenewCourseApproval(CourseApproval renewCourseApproval) {
    this.renewCourseApproval = renewCourseApproval;
  }

  /**
   * @param renewInstructorApproval the renewInstructorApproval to set
   */
  public void setRenewInstructorApproval(
    InstructorApproval renewInstructorApproval) {
    this.renewInstructorApproval = renewInstructorApproval;
  }

  /**
   * @param renewProviderApproval the renewProviderApproval to set
   */
  public void setRenewProviderApproval(ProviderApproval renewProviderApproval) {
    this.renewProviderApproval = renewProviderApproval;
  }

  public void setRestrictedCourses(Set<RestrictedCourse> restrictedCourses) {
    this.restrictedCourses = restrictedCourses;
  }

  public void setSelectedRegulatorCategoryId(String selectedRegulatorCategoryId) {
    this.selectedRegulatorCategoryId = selectedRegulatorCategoryId;
  }

  /**
   * @param showAll the showAll to set
   */
  public void setShowAll(String showAll) {
    this.showAll = showAll;
  }

  /**
   * @param sortColumnIndex the sortColumnIndex to set
   */
  public void setSortColumnIndex(String sortColumnIndex) {
    this.sortColumnIndex = sortColumnIndex;
  }

  /**
   * @param sortDirection the sortDirection to set
   */
  public void setSortDirection(String sortDirection) {
    this.sortDirection = sortDirection;
  }

  /**
   * @param submissionReminderDate the submissionReminderDate to set
   */
  public void setSubmissionReminderDate(String submissionReminderDate) {
    this.submissionReminderDate = submissionReminderDate;
  }

  public void setTotalNumberOfUnusedPurchaseCertificateNumbers(
    int totalNumberOfUnusedPurchaseCertificateNumbers) {
    this.totalNumberOfUnusedPurchaseCertificateNumbers = totalNumberOfUnusedPurchaseCertificateNumbers;
  }

}
