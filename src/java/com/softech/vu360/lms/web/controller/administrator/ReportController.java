/**
 * 
 */
package com.softech.vu360.lms.web.controller.administrator;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindException;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.NoSuchRequestHandlingMethodException;

import com.softech.vu360.lms.exception.ReportNotExecutableException;
import com.softech.vu360.lms.model.Customer;
import com.softech.vu360.lms.model.Distributor;
import com.softech.vu360.lms.model.VU360Report;
import com.softech.vu360.lms.model.VU360ReportExecutionSummary;
import com.softech.vu360.lms.model.VU360ReportField;
import com.softech.vu360.lms.model.VU360ReportFilter;
import com.softech.vu360.lms.model.VU360ReportFilterOperand;
import com.softech.vu360.lms.model.VU360ReportFilterValue;
import com.softech.vu360.lms.service.ReportExecutionService;
import com.softech.vu360.lms.service.ReportingConfigurationService;
import com.softech.vu360.lms.util.UserPermissionChecker;
import com.softech.vu360.lms.web.controller.VU360BaseMultiActionController;
import com.softech.vu360.lms.web.controller.model.ReportFilterItem;
import com.softech.vu360.lms.web.controller.model.ReportForm;
import com.softech.vu360.lms.web.controller.validator.ReportConfigurationValidator;
import com.softech.vu360.lms.web.filter.AdminSearchType;
import com.softech.vu360.lms.web.filter.VU360UserAuthenticationDetails;
import com.softech.vu360.lms.web.filter.VU360UserMode;
import com.softech.vu360.util.RedirectUtils;
import java.math.BigInteger;
import java.text.ParseException;
import java.util.function.BiConsumer;
import org.springframework.security.core.Authentication;

/**
 * @author Somnath
 *
 */
public class ReportController extends VU360BaseMultiActionController{

	private ReportingConfigurationService reportingConfigurationService;
	private ReportExecutionService reportExecutionService;
	private String redirectTemplate;
	private String summaryTemplate;
	private String fieldMenuTemplate;
	private String fieldSelectionTemplate;
	private String fieldOrderTemplate;
	private String fieldSortTemplate;
	private String editReportTemplate;
	private String filterReportTemplate;
	private String htmlViewTemplate;
        private String failureTemplate = null;

        private final String DEFAULT_START_DATE = "2001-01-01 00:00:00";
        private final String DB_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
        private final String INPUT_DATE_FORMAT = "MM/dd/yyyy HH:mm:ss";
        private final SimpleDateFormat DATE_FORMATTER = new SimpleDateFormat("MM/dd/yyyy");
        private final String TIMESTAMP_OF_ALMOST_AN_HOUR = " 23:59:59";
        private final String TIMESTAMP_OF_ZERO_SECONDS = " 00:00:00";

        final String SQLTEMPLATE_FOR_CUSTOMER_REPORT = "vm/reportsql/admin_customersreport.vm";

        Logger log = Logger.getLogger(ReportController.class);

	public ReportController() {
		super();
	}

	public ReportController(Object delegate) {
		super(delegate);
	}

	
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
			DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
			CustomDateEditor editor = new CustomDateEditor(df, false);
			binder.registerCustomEditor(Date.class, editor);
			HttpSession ssn=request.getSession();
			if(StringUtils.isBlank(request.getParameter("fav"))){
				//Do Nothing. Only to avoid null condition
			}else if(request.getParameter("fav").toString().equals("true")){
				ssn.setAttribute("fav","true");
			}else{
				ssn.removeAttribute("fav");
			}
			super.initBinder(request, binder);
	}
	
        protected void onBind(HttpServletRequest request, Object command, String methodName) throws Exception {
            ReportForm form = (ReportForm) command;
            com.softech.vu360.lms.vo.VU360User owner = (com.softech.vu360.lms.vo.VU360User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            String userMode = "Administrator";

            if (!form.getUserMode().equalsIgnoreCase(userMode)) {
                
                form.setUserMode(userMode);
                
                List<VU360Report> ownedReports = reportingConfigurationService.getOwnedReports(owner.getId(), userMode);
                form.setOwnedReports(ownedReports);
                
                // filter favorites report by permission
                form.getFavouriteReports().removeIf(r -> "Performance".equals(r.getCategory()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0004", owner, request.getSession(true)));
                form.getFavouriteReports().removeIf(r -> "Customers".equals(r.getCategory()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0056", owner, request.getSession(true)));

                // filter categories of report by permission
                form.getReportsByCategory().entrySet().removeIf(r -> "Performance".equals(r.getKey()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0004", owner, request.getSession(true)));
                form.getReportsByCategory().entrySet().removeIf(r -> "Customers".equals(r.getKey()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0056", owner, request.getSession(true)));
                
                //set the current report as current report
                List<VU360Report> favourites = form.getFavouriteReports();
                if (favourites.size() > 0) {
                    form.setCurrentReport(favourites.get(0));
                } else {
                    Map<String, ArrayList<VU360Report>> reportMap = form.getReportsByCategory();
                    if (!reportMap.keySet().isEmpty()) {
                        while (reportMap.keySet().iterator().hasNext()) {
                            String category = reportMap.keySet().iterator().next();
                            ArrayList<VU360Report> categoryReports = reportMap.get(category);
                            if (categoryReports.size() > 0) {
                                form.setCurrentReport(categoryReports.get(0));
                                break;
                            }
                        }
                    }
                }
            } else {

                // filter favorites report by permission
                form.getFavouriteReports().removeIf(r -> "Performance".equals(r.getCategory()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0004", owner, request.getSession(true)));
                form.getFavouriteReports().removeIf(r -> "Customers".equals(r.getCategory()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0056", owner, request.getSession(true)));

                // filter categories of report by permission
                form.getReportsByCategory().entrySet().removeIf(r -> "Performance".equals(r.getKey()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0004", owner, request.getSession(true)));
                form.getReportsByCategory().entrySet().removeIf(r -> "Customers".equals(r.getKey()) && !UserPermissionChecker.hasAccessToFeature("LMS-ADM-0056", owner, request.getSession(true)));
            }
            
            if (methodName.equals("saveReportFilters")) {
                String strHasFilters = request.getParameter("hasFilters");
                if (!StringUtils.isBlank(strHasFilters)) {
                    if (strHasFilters.equals("false")) {
                        form.getReportFilterItems().clear();
                    } else {
                        List<ReportFilterItem> filterItems = form.getReportFilterItems();

    //					for(int i=filterItems.size()-1; i>=0; i--){
    //						ReportFilterItem item = filterItems.get(i);
    //						if(item.isMarkedForDeletion())
    //							filterItems.remove(i);
    //					}
                    }
                }
            }
        }

	protected void validate(HttpServletRequest request, Object command, BindException errors, String methodName) throws Exception {
		ReportForm form = (ReportForm)command;
		ReportConfigurationValidator reportConfigValidator = (ReportConfigurationValidator)this.getValidator();
		log.debug("methodName=>"+methodName);
		if(methodName.equals("saveReportSummary")){
			//TODO do the necessary validation on the edit object
			reportConfigValidator.validateSystemOwnedReport(form, errors);
			reportConfigValidator.validateEditReport(form, errors);
		}else if(methodName.equals("cloneReport")){
			//TODO do the necessary validation on the edit object
			//reportConfigValidator.validateSystemOwnedReport(form, errors);
			reportConfigValidator.validateEditReport(form, errors);
		}else if(methodName.equals("setFavouriteReport")){
			//TODO do the necessary validation on the edit object
			reportConfigValidator.validateSystemOwnedReport(form, errors);
		}else if(methodName.equals("saveReportFields")){
			//TODO do the necessary validation on the edit object
			reportConfigValidator.validateSystemOwnedReport(form, errors);
		}else if(methodName.equals("saveReportFieldsOrder")){
			//TODO do the necessary validation on the edit object
			reportConfigValidator.validateSystemOwnedReport(form, errors);
		}else if(methodName.equals("saveReportFieldsSortOrder")){
			//TODO do the necessary validation on the edit object
			reportConfigValidator.validateSystemOwnedReport(form, errors);
		}else if(methodName.equals("saveReportFilters")){
			//TODO do the necessary validation on the edit object
			reportConfigValidator.validateSystemOwnedReport(form, errors);
		}
		
	}

	protected ModelAndView handleNoSuchRequestHandlingMethod(NoSuchRequestHandlingMethodException ex, HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map context = new HashMap();
		context.put("target", "browseReports");
		ModelAndView view = new ModelAndView(redirectTemplate,"context",context); 
		return view;
	}

	public void globalExceptionHandler(HttpServletRequest request, HttpServletResponse response,  Exception ex) throws IOException{
		//Map context = new HashMap();
		//context.put("target", "browseReports");
		//ModelAndView view = new ModelAndView(redirectTemplate,"context",context); 
		//return view;

		String url = "/adm_ManageReports.do?method=browseReports";
		RedirectUtils.sendRedirect(request, response, url, false);
	}
	
	/**
	 * 1.
	 * The Reports Summary section...
	 * Contains the methods for edit/create report
	 * Also contains methods for executing reports
	 */
	//default landing page for the report user
	public ModelAndView browseReports(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		//setup the current report last execution summary in form object
		ReportForm form = (ReportForm)command;
		
		VU360Report report = form.getCurrentReport();
                
                if(form.getCurrentReport().getSqlTemplateUri().equalsIgnoreCase(SQLTEMPLATE_FOR_CUSTOMER_REPORT)) {
                    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                    if (auth.getDetails() != null && auth.getDetails() instanceof VU360UserAuthenticationDetails) {
                        VU360UserAuthenticationDetails details = (VU360UserAuthenticationDetails) auth.getDetails();
                        if (details.getCurrentMode() == VU360UserMode.ROLE_LMSADMINISTRATOR) {
                            if (details.getCurrentSearchType() != AdminSearchType.DISTRIBUTOR) {
                                return new ModelAndView(failureTemplate, "isRedirect", "d");
                            }
                        }
                    }
                }
                
		if(report!=null){
			com.softech.vu360.lms.vo.VU360User user = (com.softech.vu360.lms.vo.VU360User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			VU360ReportExecutionSummary executionSummary = reportingConfigurationService.lastExecutionSummary(report,user.getId());
			form.setCurrentReportLastExecutionSummary(executionSummary);
		}
		
		//forward to the view template
		ModelAndView view = new ModelAndView(summaryTemplate); 
		return view;
	}
	
	//display the default summary page with a report selected
	public ModelAndView selectReport(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		//TODO setup the current report from form
		String strSelectedReportId = request.getParameter("reportId");
		ReportForm form = (ReportForm)command;
		if(!StringUtils.isBlank(strSelectedReportId)){
			try{
				Long selectedReportId = Long.parseLong(strSelectedReportId);
				List<VU360Report> reportList = form.getOwnedReports();
				if(reportList!=null && reportList.size()>0){
					for(VU360Report report:reportList){
						if(report.getId().longValue() == selectedReportId){
							form.setCurrentReport(report);
							break;
						}
					}
				}
			}catch(NumberFormatException ne){}
		}
                
                if(form.getCurrentReport().getSqlTemplateUri().equalsIgnoreCase(SQLTEMPLATE_FOR_CUSTOMER_REPORT)) {
                    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                    if (auth.getDetails() != null && auth.getDetails() instanceof VU360UserAuthenticationDetails) {
                        VU360UserAuthenticationDetails details = (VU360UserAuthenticationDetails) auth.getDetails();
                        if (details.getCurrentMode() == VU360UserMode.ROLE_LMSADMINISTRATOR) {
                            if (details.getCurrentSearchType() != AdminSearchType.DISTRIBUTOR) {
                                return new ModelAndView(failureTemplate, "isRedirect", "d");
                            }
                        }
                    }
                }
                
		return this.browseReports(request, response, command, errors);
	}
	
	//set/unset the current report as favourite
	public ModelAndView setFavouriteReport(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report report = form.getCurrentReport();
		if(report==null)
			throw new Exception("current report not selected");
		
		reportingConfigurationService.changeReportFavouriteStatus(report, !report.isFavorite());
		ModelAndView view = new ModelAndView(summaryTemplate); 
		return view;
	}
	
	//display the edit summary page for a selected report
	public ModelAndView selectReportForEdit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		//setup the report object to be edited from current report
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		VU360Report edit_report = new VU360Report();
		edit_report.setId(curr_report.getId());
		edit_report.setCategory(curr_report.getCategory());
		edit_report.setTitle(curr_report.getTitle());
		edit_report.setDescription(curr_report.getDescription());
		form.setReportSummaryEdit(edit_report);
		
		return new ModelAndView(editReportTemplate);
	}
	
	//implementation of the **save as new** of a selected report 
	public ModelAndView cloneReport(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		if(errors.hasErrors())
			return new ModelAndView(editReportTemplate);
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		VU360Report edit_report = form.getReportSummaryEdit();
		com.softech.vu360.lms.vo.VU360User loggedInUserVO = (com.softech.vu360.lms.vo.VU360User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		VU360Report clonedReport = reportingConfigurationService.cloneReport(curr_report, edit_report.getTitle(),
				edit_report.getCategory(), edit_report.getDescription(), loggedInUserVO);
		
		form.addOwnedReport(clonedReport);
		form.setCurrentReport(clonedReport);
		
		form.setReportSummaryEdit(null);
		return new ModelAndView(summaryTemplate); 
	}
	
	//save the edited report summary
	public ModelAndView saveReportSummary(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		if(errors.hasErrors())
			return new ModelAndView(editReportTemplate);
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		VU360Report edit_report = form.getReportSummaryEdit();
		reportingConfigurationService.editReportSummary(edit_report);

		curr_report.setCategory(edit_report.getCategory());
		curr_report.setTitle(edit_report.getTitle());
		curr_report.setDescription(edit_report.getDescription());
		form.setReportSummaryEdit(null);
		return new ModelAndView(summaryTemplate); 
	}
	
//	set backToDefaults to the edited report
	public ModelAndView backToDefaults(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		if(errors.hasErrors())
			return new ModelAndView(editReportTemplate);
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		VU360Report edit_report = form.getReportSummaryEdit();
		edit_report.setSystemOwned(true);
		reportingConfigurationService.editReportSummary(edit_report);

		curr_report.setCategory(edit_report.getCategory());
		curr_report.setTitle(edit_report.getTitle());
		curr_report.setDescription(edit_report.getDescription());
		form.setReportSummaryEdit(null);
		return new ModelAndView(summaryTemplate); 
	}
	
	//cancel the editing of selected report
	public ModelAndView cancelReportSummary(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		ReportForm form = (ReportForm)command;
		form.setReportSummaryEdit(null);
		
		return new ModelAndView(summaryTemplate); 
	}
	
	public ModelAndView executeReport(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception {
		
            ReportForm form; 
            VU360Report report;
            List<VU360ReportFilter> customFitlers;
            com.softech.vu360.lms.vo.Distributor distributor;
            
            form = (ReportForm) command;
            report = form.getCurrentReport();
            report = reportingConfigurationService.getReportCopy(report.getId());
            distributor = (com.softech.vu360.lms.vo.Distributor) request.getSession(true).getAttribute("adminSelectedDistributor");
            
            if (report == null) {
                throw new Exception("current report not selected");
            }

            if (form.getCurrentReport() != null && form.getCurrentReport().getSqlTemplateUri().equalsIgnoreCase(SQLTEMPLATE_FOR_CUSTOMER_REPORT)) {

                if(form.getCurrentReport().getSqlTemplateUri().equalsIgnoreCase(SQLTEMPLATE_FOR_CUSTOMER_REPORT)) {
                    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                    if (auth.getDetails() != null && auth.getDetails() instanceof VU360UserAuthenticationDetails) {
                        VU360UserAuthenticationDetails details = (VU360UserAuthenticationDetails) auth.getDetails();
                        if (details.getCurrentMode() == VU360UserMode.ROLE_LMSADMINISTRATOR) {
                            if (details.getCurrentSearchType() != AdminSearchType.DISTRIBUTOR) {
                                return new ModelAndView(failureTemplate, "isRedirect", "d");
                            }
                        }
                    }
                }
                
                if (validateCustomerReport(form, request.getSession())) {
                    return new ModelAndView(summaryTemplate);
                }

                if (form.getCurrentReport() != null) {
                    customFitlers = setAndgetCustomerReportFilter(form, report, distributor.getId());
                    form.getCurrentReport().setFilters(null);
                    form.getCurrentReport().setFilters(reportingConfigurationService.getVU360ReportFilter(form.getCurrentReport()));
                    form.getCurrentReport().getFilters().addAll(customFitlers);
                    report.getFilters().addAll(form.getCurrentReport().getFilters());
                }
            }

            com.softech.vu360.lms.vo.VU360User owner = (com.softech.vu360.lms.vo.VU360User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            reportExecutionService.executeReport(report, owner);

            VU360ReportExecutionSummary executionSummary = reportingConfigurationService.lastExecutionSummary(report, owner.getId());
            form.setCurrentReportLastExecutionSummary(executionSummary);

            return new ModelAndView(summaryTemplate);
	}
	
	//execute all the favourite reports
	public ModelAndView executeAllFavouriteReports(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if( curr_report == null ) {
			throw new Exception("current report not selected");
		}
		List<VU360Report> favourites = form.getFavouriteReports();
		com.softech.vu360.lms.vo.VU360User owner = (com.softech.vu360.lms.vo.VU360User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		for(int i=0; i<favourites.size(); i++){
			try {
				VU360Report report = favourites.get(i); 
				reportExecutionService.executeReport(report, owner);
				if(report.getId().longValue()==curr_report.getId().longValue()){
					VU360ReportExecutionSummary executionSummary = reportingConfigurationService.lastExecutionSummary(report,owner.getId());
					form.setCurrentReportLastExecutionSummary(executionSummary);
				}
			} catch (ReportNotExecutableException e) {
				e.printStackTrace();//TODO how to handle this error???
			}
		}
		return new ModelAndView(summaryTemplate);
	}

	//display the html view of the selected report as was last run
	public ModelAndView displayReportResultsHTML(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		String htmlData="";
		String filePath="";

		String filename = form.getCurrentReportLastExecutionSummary().getHtmlLocation();
		try{
			htmlData=FileCopyUtils.copyToString(new FileReader(filePath+filename));
		}catch (Exception e){
			System.out.println(e);
		}
		return new ModelAndView(htmlViewTemplate,"htmlData",htmlData); 
	}
	
	//download the csv view of the selected report as was last run
	public ModelAndView displayReportResultsCSV(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		String filename = form.getCurrentReportLastExecutionSummary().getCsvLocation();
		try{
		String filePath="";
		
		File f= new File(filePath+filename);
		
		FileInputStream in = new FileInputStream(f);
		
		response.setContentType("application/csv");
		response.setContentLength( (int)f.length() );
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");

		ServletOutputStream ouputStream=response.getOutputStream();
		FileCopyUtils.copy(in, ouputStream);
		in.close();
		ouputStream.flush();ouputStream.close();
		
		}catch (Exception e){
			System.out.println(e);
		}
		return new ModelAndView(summaryTemplate); 
	}
	
	/**
	 * 2. 
	 * The Reports Fields Section...
	 * Contains the methods for editing the report fields details
	 * of a given report.
	 */
	//default landing page for the report fields...
	//shows the fields menu page
	public ModelAndView reportFieldMenu(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");
		return new ModelAndView(fieldMenuTemplate);
	}

	//shows the report fields...with checkboxes
	//to select for making them visible/invisible in the results
	public ModelAndView displayReportFields(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
                curr_report = reportingConfigurationService.getReportCopy(curr_report.getId());
		if(curr_report==null)
			throw new Exception("current report not selected");
		List<VU360ReportField> curr_reportFields = curr_report.getFields();

		form.setReportFieldsEdit(this.getReportFieldEditList(curr_reportFields,"DISPLAYORDER"));
		
		return new ModelAndView(fieldSelectionTemplate);
	}
	
	//save the selected report fields as visible for this report
	public ModelAndView saveReportFields(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		if(errors.hasErrors()){
			return new ModelAndView(fieldSelectionTemplate);
		}
		//the save routine of the selected fields
		List<VU360ReportField> curr_reportFields = form.getCurrentReport().getFields();
		
		List<VU360ReportField> edit_reportFields = form.getReportFieldsEdit();
		VU360Report savedReport = reportingConfigurationService.saveReportFieldVisibility(curr_report, edit_reportFields);
		List<VU360ReportField> saved_reportFields = savedReport.getFields();
		
		for(int i = 0; i<curr_reportFields.size(); i++){
			VU360ReportField currField = curr_reportFields.get(i);
			for(int j = 0; j<saved_reportFields.size(); j++){
				VU360ReportField editedField = saved_reportFields.get(j);
				if(editedField.getId().longValue() == currField.getId().longValue()){
					currField.setVisible(editedField.getVisible());
					break;
				}
			}
		}

		form.setReportFieldsEdit(null);
		return new ModelAndView(fieldMenuTemplate);
	}

	//cancel the editing of fields visible for this report
	public ModelAndView cancelReportFields(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		ReportForm form = (ReportForm)command;
		
		form.setReportFieldsEdit(null);
		return new ModelAndView(fieldMenuTemplate);
	}

	//display the ordered list of visible report fields for this report
	public ModelAndView displayReportFieldsOrder(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
                curr_report = reportingConfigurationService.getReportCopy(curr_report.getId());
		if(curr_report==null)
			throw new Exception("current report not selected");

		List<VU360ReportField> curr_reportFields = curr_report.getFields();
		form.setReportFieldsEdit(this.getReportFieldEditList(curr_reportFields,"DISPLAYORDER"));
		return new ModelAndView(fieldOrderTemplate);
	}
	
	//save the order of visible report fields for this report
	public ModelAndView saveReportFieldsOrder(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
                curr_report = reportingConfigurationService.getReportCopy(curr_report.getId());
		if(curr_report==null)
			throw new Exception("current report not selected");
		
		if(errors.hasErrors()){
			return new ModelAndView(fieldOrderTemplate);
		}
		//the save routine of the selected fields

		List<VU360ReportField> curr_reportFields = form.getCurrentReport().getFields();
		
		List<VU360ReportField> edit_reportFields = form.getReportFieldsEdit();
		VU360Report savedReport = reportingConfigurationService.saveReportFieldOrder(curr_report, edit_reportFields);
		//TODO setup the current report field order
		List<VU360ReportField> saved_reportFields = savedReport.getFields();
		
		for(int i = 0; i<curr_reportFields.size(); i++){
			VU360ReportField currField = curr_reportFields.get(i);
			for(int j = 0; j<saved_reportFields.size(); j++){
				VU360ReportField editedField = saved_reportFields.get(j);
				if(editedField.getId().longValue() == currField.getId().longValue()){
					currField.setSortOrder(editedField.getDisplayOrder());
					break;
				}
			}
		}
		
		form.setReportFieldsEdit(null);
		return new ModelAndView(fieldMenuTemplate);
	}
	
	//cancel the editing of fields order for this report
	public ModelAndView cancelReportFieldsOrder(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		ReportForm form = (ReportForm)command;
		
		form.setReportFieldsEdit(null);
		return new ModelAndView(fieldMenuTemplate);
	}
	
	//display the sort order for each of the visible report fields for this report
	public ModelAndView displayReportFieldsSortOrder(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
                curr_report = reportingConfigurationService.getReportCopy(curr_report.getId());
		if(curr_report==null)
			throw new Exception("current report not selected");

		List<VU360ReportField> curr_reportFields = curr_report.getFields();

		form.setReportFieldsEdit(this.getReportFieldEditList(curr_reportFields,"SORTORDER"));

		return new ModelAndView(fieldSortTemplate);
	}
	
	//save the sort order of visible report fields for this report
	public ModelAndView saveReportFieldsSortOrder(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");
		
		if(errors.hasErrors()){
			return new ModelAndView(fieldSortTemplate);
		}
		//the save routine of the selected fields
		List<VU360ReportField> curr_reportFields = form.getCurrentReport().getFields();
		
		List<VU360ReportField> edit_reportFields = form.getReportFieldsEdit();

		VU360Report savedReport = reportingConfigurationService.saveReportFieldSortOrder(curr_report, edit_reportFields);
		//setup the current report field sort order
		List<VU360ReportField> saved_reportFields = savedReport.getFields();
		
		for(int i = 0; i<curr_reportFields.size(); i++){
			VU360ReportField currField = curr_reportFields.get(i);
			for(int j = 0; j<saved_reportFields.size(); j++){
				VU360ReportField editedField = saved_reportFields.get(j);
				if(editedField.getId().longValue() == currField.getId().longValue()){
					currField.setSortOrder(editedField.getSortOrder());
					break;
				}
			}
		}

		form.setReportFieldsEdit(null);
		return new ModelAndView(fieldMenuTemplate);

	}
	
	//cancel the editing of fields sort order for this report
	public ModelAndView cancelReportFieldsSortOrder(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		ReportForm form = (ReportForm)command;
		
		form.setReportFieldsEdit(null);
		return new ModelAndView(fieldMenuTemplate);
	}
	
	/**
	 * 3. 
	 * The Reports Filter Section...
	 * Contains the methods for editing the report filters details
	 * of a given report.
	 */
	//display the filters for this report
	public ModelAndView displayReportFilters(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
                curr_report = reportingConfigurationService.getReportCopy(curr_report.getId());
		if(curr_report==null)
			throw new Exception("current report not selected");
		
		Map<String, List<VU360ReportFilterOperand>> operandMap = reportingConfigurationService.getReportFilterOperandMap();
		form.setOperandMap(operandMap);
		this.createFilterList(form);
		
		return new ModelAndView(filterReportTemplate);
	}
	
	//save the filters for this report
	public ModelAndView saveReportFilters(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception{
		ReportForm form = (ReportForm)command;
		VU360Report curr_report = form.getCurrentReport();
		if(curr_report==null)
			throw new Exception("current report not selected");

		if(errors.hasErrors()){
			Map<String, List<VU360ReportFilterOperand>> operandMap = reportingConfigurationService.getReportFilterOperandMap();
			form.setOperandMap(operandMap);
			return new ModelAndView(filterReportTemplate);
		}
		List<ReportFilterItem> filterItems = form.getReportFilterItems();
		VU360Report edited_report = reportingConfigurationService.saveReportFilters(curr_report, filterItems);
		curr_report.setFilters(edited_report.getFilters());
		this.createFilterList(form);
		return new ModelAndView(filterReportTemplate);
	}
	
	//cancel the editing of filters for this report
	public ModelAndView cancelReportFilters(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors){
		ReportForm form = (ReportForm)command;

		this.createFilterList(form);

		return new ModelAndView(filterReportTemplate);
	}

	
	/**
	 * Spring Injection methods
	 */
	/**
	 * @param redirectTemplate the redirectTemplate to set
	 */
	public void setRedirectTemplate(String redirectTemplate) {
		this.redirectTemplate = redirectTemplate;
	}

	/**
	 * @param reportingConfigurationService the reportingConfigurationService to set
	 */
	public void setReportingConfigurationService(ReportingConfigurationService reportingConfigurationService) {
		this.reportingConfigurationService = reportingConfigurationService;
	}

	public void setSummaryTemplate(String summaryTemplate) {
		this.summaryTemplate = summaryTemplate;
	}

	/**
	 * @param fieldMenuTemplate the fieldMenuTemplate to set
	 */
	public void setFieldMenuTemplate(String fieldMenuTemplate) {
		this.fieldMenuTemplate = fieldMenuTemplate;
	}

	public void setEditReportTemplate(String editReportTemplate) {
		this.editReportTemplate = editReportTemplate;
	}

	/**
	 * @param fieldSelectionTemplate the fieldSelectionTemplate to set
	 */
	public void setFieldSelectionTemplate(String fieldSelectionTemplate) {
		this.fieldSelectionTemplate = fieldSelectionTemplate;
	}

	public void setFieldOrderTemplate(String fieldOrderTemplate) {
		this.fieldOrderTemplate = fieldOrderTemplate;
	}

	public void setFieldSortTemplate(String fieldSortTemplate) {
		this.fieldSortTemplate = fieldSortTemplate;
	}
	
	public void setFilterReportTemplate(String filterReportTemplate) {
		this.filterReportTemplate = filterReportTemplate;
	}
	/**
	 * Helper Methods Section...
	 */

	private List<VU360ReportField> getReportFieldEditList(List<VU360ReportField> curr_reportFields, String orderField){
		List<VU360ReportField> edit_reportFields = new ArrayList<VU360ReportField>(); 
		for(VU360ReportField field:curr_reportFields){
			VU360ReportField editfield = new VU360ReportField();
			editfield.setId(field.getId());
			editfield.setDisplayOrder(field.getDisplayOrder());
			editfield.setDisplayName(field.getDisplayName());
			editfield.setVisible(field.getVisible());
			editfield.setSortOrder(field.getSortOrder());
			editfield.setSortType(field.getSortType());
			edit_reportFields.add(editfield);
		}
		Collections.sort(edit_reportFields, new ReportFieldComparator(orderField));
		return edit_reportFields;
	}
	
	private class ReportFieldComparator implements Comparator<VU360ReportField>{
		private String sortField = "DISPLAYORDER";
		public ReportFieldComparator() {
			super();
		}

		public ReportFieldComparator(String sortField) {
			super();
			this.sortField = sortField;
		}

		/* (non-Javadoc)
		 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
		 */
		public int compare(VU360ReportField arg0, VU360ReportField arg1) {
			if(arg0==null && arg1 == null) return 0;
			if(arg0==null && arg1 != null) return 1;
			if(arg0!=null && arg1 == null) return -1;
			if(sortField.equalsIgnoreCase("DISPLAYORDER"))
				return new Integer(arg0.getDisplayOrder()).compareTo(new Integer(arg1.getDisplayOrder()));
			else if(sortField.equalsIgnoreCase("SORTORDER"))
				return new Integer(arg0.getSortOrder()).compareTo(new Integer(arg1.getSortOrder()));
			else	
				return new Integer(arg0.getDisplayOrder()).compareTo(new Integer(arg1.getDisplayOrder()));
		}
		
	}

	private void createFilterList(ReportForm form){
		List<VU360ReportFilter> currFilters = form.getCurrentReport().getFilters();
		form.getReportFilterItems().clear();
		if(currFilters!=null && currFilters.size()>0){
			for(int i=0; i<currFilters.size(); i++){
				VU360ReportFilter filter = currFilters.get(i);
				ReportFilterItem item = form.getReportFilterItems().get(i);
				item.setId(filter.getId());
				
				VU360ReportField field = filter.getField();
				item.setReportFieldId(field.getId());
				String fieldDatatype = field.getDataType();
				item.setReportFieldDatatype(fieldDatatype);
				
				item.setFilterOperandId(filter.getOperand().getId());
				
				//String filterType = filter.getReportFilterType();
				String filterType = filter.getReportFilterType()==null?VU360ReportFilter.STRING_TYPE:filter.getReportFilterType();//temporary fix
				item.setFilterType(filterType);
				
				VU360ReportFilterValue itemValue = filter.getValue();
				if(fieldDatatype.equalsIgnoreCase(VU360ReportField.DT_STRING))
					item.setFilterStringValue(itemValue.getStringValue());
				else if(fieldDatatype.equalsIgnoreCase(VU360ReportField.DT_INTEGER))
					item.setFilterIntegerValue(Integer.parseInt(itemValue.getNumericValue().toString()));
				else if(fieldDatatype.equalsIgnoreCase(VU360ReportField.DT_DOUBLE))
					item.setFilterDoubleValue(Double.parseDouble(itemValue.getNumericValue().toString()));
				else if(fieldDatatype.equalsIgnoreCase(VU360ReportField.DT_DATE))
					item.setFilterDateValue(itemValue.getDateValue());//formatting???
				else if(fieldDatatype.equalsIgnoreCase(VU360ReportField.DT_BOOLEAN)){
					Integer boolVal=Integer.parseInt(itemValue.getNumericValue().toString());
					item.setFilterBooleanValue(boolVal>0?true:false);
				}else
					item.setFilterValue(itemValue.getStringValue());//others to come..this is not correct
				//form.getReportFilterItems().add(item);
			}
		}
	}

        private boolean validateCustomerReport(ReportForm form, HttpSession session) {

            boolean isError = false;
                      
            if ((form.getStartDate() == null || form.getStartDate().equals(""))
                    && (form.getEndDate() == null || form.getEndDate().equals(""))) {
                session.setAttribute("errorOnPerformanceReport","lms.proctor.proctorReport.error.selectStartorEndDate.Message");
                isError = true;
            } 
            else {

                boolean isStartDateFormated = false, isEndDateFormated = false;

                Date startDate = null, endDate = null;

                if (!form.getStartDate().equals("")) {
                    try {
                        startDate = DATE_FORMATTER.parse(form.getStartDate().concat(TIMESTAMP_OF_ZERO_SECONDS));
                        isStartDateFormated = true;
                    } catch (ParseException e) {
                        session.setAttribute("errorOnPerformanceReport", "lms.proctor.proctorReport.error.IncorrectStartorEndDate.Message");
                        isError = true;
                        isStartDateFormated = false;
                    }
                }

                if (!form.getEndDate().equals("")) {
                    try {
                        endDate = DATE_FORMATTER.parse(form.getEndDate().concat(TIMESTAMP_OF_ALMOST_AN_HOUR));
                        isEndDateFormated = true;
                    } catch (ParseException e) {
                        session.setAttribute("errorOnPerformanceReport",
                                "lms.proctor.proctorReport.error.IncorrectStartorEndDate.Message");
                        isError = true;
                        isEndDateFormated = false;
                    }
                }

                if(isStartDateFormated && isEndDateFormated) {
                    if(startDate.after(endDate)) {
                        session.setAttribute("errorOnPerformanceReport", "lms.proctor.proctorReport.error.IncorrectStartorEndDate.Message");
                        isError = true;
                        isStartDateFormated = false;
                    }
                    if(endDate.before(startDate)) {
                        session.setAttribute("errorOnPerformanceReport",
                                "lms.proctor.proctorReport.error.IncorrectStartorEndDate.Message");
                        isError = true;
                        isEndDateFormated = false;
                    }
                }

                if(isStartDateFormated || isEndDateFormated)
                    session.setAttribute("errorOnPerformanceReport", null);
            }
            return isError;
        }    

        private List<VU360ReportFilter> setAndgetCustomerReportFilter(ReportForm form, VU360Report report, long selectedDistributorId) throws ParseException {
                       
            VU360ReportField enrollmentStartDateField;
            VU360ReportField distributorIdField;
            
            VU360ReportFilter enrollmentStartDateGreaterThanFilter;
            VU360ReportFilter enrollmentStartDateLessThanFilter;
            VU360ReportFilter distributorIdEqualsToFilter;
            
            VU360ReportFilterValue enrollmentStartDateStartRangeFilterValue;
            VU360ReportFilterValue enrollmentStartDateEndDateRangeFilterValue;
            VU360ReportFilterValue distributorIdEqualsToFilterValue;
            
            VU360ReportFilterOperand enrollmentStartDateGreaterThanAndEqualFilterOperand;
            VU360ReportFilterOperand enrollmentStartDateLessThanAndEqualFilterOperand;
            VU360ReportFilterOperand distributorIdEqualsToFilterOperand;
            
            Date startDate, endDate;
            SimpleDateFormat dateFormat;
            long distributorId;
            
            List<VU360ReportFilter> filters;
            
            enrollmentStartDateField = new VU360ReportField();
            distributorIdField = new VU360ReportField();
            
            enrollmentStartDateLessThanFilter = new VU360ReportFilter();
            enrollmentStartDateGreaterThanFilter = new VU360ReportFilter();
            distributorIdEqualsToFilter = new VU360ReportFilter();
            
            enrollmentStartDateStartRangeFilterValue = new VU360ReportFilterValue();
            enrollmentStartDateEndDateRangeFilterValue = new VU360ReportFilterValue();
            distributorIdEqualsToFilterValue = new VU360ReportFilterValue();
            
            enrollmentStartDateLessThanAndEqualFilterOperand = new VU360ReportFilterOperand();
            enrollmentStartDateGreaterThanAndEqualFilterOperand = new VU360ReportFilterOperand();
            distributorIdEqualsToFilterOperand = new VU360ReportFilterOperand();
            
            filters = new ArrayList<>();
            
            enrollmentStartDateField.setDataType(VU360ReportField.DT_DATE);
            enrollmentStartDateField.setColumnFormat(VU360ReportField.FORMAT_DATETIME);
            enrollmentStartDateField.setDbColumnName("EnrollmentStartDate");
            enrollmentStartDateField.setFilterable(true);
            enrollmentStartDateField.setVu360report(report);

            distributorIdField.setDataType(VU360ReportField.DT_INTEGER);
            distributorIdField.setColumnFormat(VU360ReportField.FORMAT_INTEGER);
            distributorIdField.setDbColumnName("DISTRIBUTOR_ID");
            distributorIdField.setFilterable(true);
            distributorIdField.setVu360report(report);
            
            dateFormat = new SimpleDateFormat(DB_DATE_FORMAT);

            startDate = dateFormat.parse(getStartDate(form));
            endDate = dateFormat.parse(getEndDate(form));
            
            distributorId = selectedDistributorId;
            
            enrollmentStartDateStartRangeFilterValue.setDateValue(startDate);
            enrollmentStartDateEndDateRangeFilterValue.setDateValue(endDate);
            distributorIdEqualsToFilterValue.setNumericValue(new BigInteger(String.valueOf(distributorId)));
            
            enrollmentStartDateGreaterThanAndEqualFilterOperand.setValue(VU360ReportFilterOperand.GREATER_THAN_OR_EQUAL_OP);
            enrollmentStartDateLessThanAndEqualFilterOperand.setValue(VU360ReportFilterOperand.LESS_THAN_OR_EQUAL_OP);
            distributorIdEqualsToFilterOperand.setValue(VU360ReportFilterOperand.EQUALS_OP);
            
            enrollmentStartDateGreaterThanFilter.setOperand(enrollmentStartDateGreaterThanAndEqualFilterOperand);
            enrollmentStartDateGreaterThanFilter.setReportFilterType(VU360ReportFilter.DATE_TYPE);
            enrollmentStartDateGreaterThanFilter.setField(enrollmentStartDateField);
            enrollmentStartDateGreaterThanFilter.setValue(enrollmentStartDateStartRangeFilterValue);
            enrollmentStartDateGreaterThanFilter.setId(Long.valueOf(1));
            
            enrollmentStartDateLessThanFilter.setOperand(enrollmentStartDateLessThanAndEqualFilterOperand);
            enrollmentStartDateLessThanFilter.setReportFilterType(VU360ReportFilter.DATE_TYPE);
            enrollmentStartDateLessThanFilter.setField(enrollmentStartDateField);
            enrollmentStartDateLessThanFilter.setValue(enrollmentStartDateEndDateRangeFilterValue);
            enrollmentStartDateLessThanFilter.setId(Long.valueOf(2));
            
            distributorIdEqualsToFilter.setOperand(distributorIdEqualsToFilterOperand);
            distributorIdEqualsToFilter.setReportFilterType(VU360ReportFilter.NUMERIC_TYPE);
            distributorIdEqualsToFilter.setField(distributorIdField);
            distributorIdEqualsToFilter.setValue(distributorIdEqualsToFilterValue);
            distributorIdEqualsToFilter.setId(Long.valueOf(2));

            filters.add(enrollmentStartDateGreaterThanFilter);
            filters.add(enrollmentStartDateLessThanFilter);
            filters.add(distributorIdEqualsToFilter);

            return filters;

        }

        /**
         * Get a valid start date
         *
         * @param form
         * @return
         * @throws ParseException
         */
        private String getStartDate(ReportForm form) throws ParseException {

            String result = DEFAULT_START_DATE;
            String startDate = form.getStartDate();

            if((startDate != null) && (startDate.trim().length() > 0)) {

                result = ConvertToDBDateFormat(startDate.concat(TIMESTAMP_OF_ZERO_SECONDS));

            }
            return result;
        }

        /**
         * Get a valid end date
         *
         * @param form
         * @return
         * @throws ParseException
         */
        private String getEndDate(ReportForm form) throws ParseException {

            String result;
            String endDate = form.getEndDate();

            if((endDate == null) || (endDate.trim().length() == 0)) {
                result = ConvertToDBDateFormat((new SimpleDateFormat(INPUT_DATE_FORMAT)).format(new Date()));
            } else {
                result = ConvertToDBDateFormat(endDate.concat(TIMESTAMP_OF_ALMOST_AN_HOUR));
            }
            return result;
        }
        
        private String ConvertToDBDateFormat(String input) throws ParseException {
            SimpleDateFormat dateFormat = new SimpleDateFormat(INPUT_DATE_FORMAT);
            Date date = dateFormat.parse(input.concat(TIMESTAMP_OF_ZERO_SECONDS));
            dateFormat.applyPattern(DB_DATE_FORMAT);
            return dateFormat.format(date);
        }        
        
	public void setHtmlViewTemplate(String htmlViewTemplate) {
		this.htmlViewTemplate = htmlViewTemplate;
	}

	/**
	 * @return the reportExecutionService
	 */
	public ReportExecutionService getReportExecutionService() {
		return reportExecutionService;
	}

	/**
	 * @param reportExecutionService the reportExecutionService to set
	 */
	public void setReportExecutionService(
			ReportExecutionService reportExecutionService) {
		this.reportExecutionService = reportExecutionService;
	}
        
        public String getFailureTemplate() {
            return failureTemplate;
        }

        public void setFailureTemplate(String failureTemplate) {
            this.failureTemplate = failureTemplate;
        }

}
