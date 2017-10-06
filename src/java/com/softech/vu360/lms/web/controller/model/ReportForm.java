package com.softech.vu360.lms.web.controller.model;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.FactoryUtils;
import org.apache.commons.collections.list.LazyList;

import com.softech.vu360.lms.model.VU360Report;
import com.softech.vu360.lms.model.VU360ReportExecutionSummary;
import com.softech.vu360.lms.model.VU360ReportField;
import com.softech.vu360.lms.model.VU360ReportFilterOperand;
import com.softech.vu360.lms.web.controller.ILMSBaseInterface;
import java.util.Iterator;

public class ReportForm implements ILMSBaseInterface {

    private static final long serialVersionUID = 1L;

    private String userMode = "";
    private String startDate = "";
    private String endDate = "";
    private String courseId = "";
    private String startTime = "";
    private String endTime = "";
    
    private VU360Report currentReport;
    private VU360ReportExecutionSummary currentReportLastExecutionSummary;
    private VU360Report reportSummaryEdit;
    private List<VU360ReportField> reportFieldsEdit;
    private Map<String, List<VU360ReportFilterOperand>> operandMap;
    private List<ReportFilterItem> reportFilterItems = LazyList.decorate(new ArrayList(), FactoryUtils.instantiateFactory(ReportFilterItem.class));
    private ArrayList<VU360Report> favourites;
    private List<VU360Report> ownedReports = null;
    private Map<String, ArrayList<VU360Report>> reportMap;
    
    public ReportForm() {
        
    }

    /**
     * @return the userMode
     */
    public String getUserMode() {
        return userMode;
    }

    /**
     * @param userMode the userMode to set
     */
    public void setUserMode(String userMode) {
        this.userMode = userMode;
    }

    public List<VU360Report> getOwnedReports() {
        return ownedReports;
    }

    public void setOwnedReports(List<VU360Report> ownedReports) {
        this.ownedReports = ownedReports;
        
        resetFavoriteAndCategoryReports();
    }

    public void addOwnedReport(VU360Report report) {
        if (ownedReports == null) {
            ownedReports = new ArrayList<>();
        }
        ownedReports.add(report);
        
        resetFavoriteAndCategoryReports();
    }

    /**
     * Helper method to get the reports organized by category and Favorite
     * reports to be used in left menu.
     * @return 
     */
    public Map<String, ArrayList<VU360Report>> getReportsByCategory() {
        return reportMap;
    }

    public ArrayList<VU360Report> getFavouriteReports() {
        return favourites;
    }

    public VU360Report getCurrentReport() {
        return currentReport;
    }

    public void setCurrentReport(VU360Report currentReport) {
        this.currentReport = currentReport;
    }

    public VU360ReportExecutionSummary getCurrentReportLastExecutionSummary() {
        return currentReportLastExecutionSummary;
    }

    public void setCurrentReportLastExecutionSummary(
            VU360ReportExecutionSummary currentReportLastExecutionSummary) {
        this.currentReportLastExecutionSummary = currentReportLastExecutionSummary;
    }

    public VU360Report getReportSummaryEdit() {
        return reportSummaryEdit;
    }

    public void setReportSummaryEdit(VU360Report reportSummaryEdit) {
        this.reportSummaryEdit = reportSummaryEdit;
    }

    public List<VU360ReportField> getReportFieldsEdit() {
        return reportFieldsEdit;
    }

    public void setReportFieldsEdit(List<VU360ReportField> reportFieldsEdit) {
        this.reportFieldsEdit = reportFieldsEdit;
    }

    public Map<String, List<VU360ReportFilterOperand>> getOperandMap() {
        return operandMap;
    }

    public void setOperandMap(Map<String, List<VU360ReportFilterOperand>> operandMap) {
        this.operandMap = operandMap;
    }

    public List<ReportFilterItem> getReportFilterItems() {
        return reportFilterItems;
    }

    public void setReportFilterItems(List<ReportFilterItem> reportFilterItems) {
        this.reportFilterItems = reportFilterItems;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    private void resetFavoriteAndCategoryReports() {
        
        favourites = new ArrayList<>();
        if (ownedReports != null) {
            ownedReports.stream().filter((report) -> (report.isFavorite())).forEachOrdered((report) -> {
                favourites.add(report);
            });
        }
        
        reportMap = new LinkedHashMap<>();
        if (ownedReports != null) {
            ownedReports.forEach((report) -> {
                String category = report.getCategory();
                if (reportMap.containsKey(category)) {
                    ArrayList<VU360Report> categoryReports = reportMap.get(category);
                    categoryReports.add(report);
                } else {
                    ArrayList<VU360Report> categoryReports;
                    categoryReports = new ArrayList<>();
                    categoryReports.add(report);
                    reportMap.put(category, categoryReports);
                }
            });
        }
    }
    
}