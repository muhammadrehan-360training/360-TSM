package com.softech.vu360.lms.rest;

import com.softech.vu360.lms.model.LearnerAssessmentResultStatistic;
import com.softech.vu360.lms.model.LearnerCompletionStatistics;
import com.softech.vu360.lms.model.LearnerCourseStatistics;
import com.softech.vu360.lms.model.LearnerEnrollment;
import com.softech.vu360.lms.service.EntitlementService;
import com.softech.vu360.lms.service.StatisticsService;
import com.softech.vu360.util.LearnersToBeMailedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author ramiz.uddin
 */
@RestController
public class Enrollment {

    @Autowired
    private EntitlementService entitlementService;
    @Autowired
    private StatisticsService statisticsService;
    @Autowired
    private LearnersToBeMailedService learnersToBeMailedService;

    @RequestMapping(value = "/learner/enrollment/{learnerEnrollmentId}/status/complete")
    @ResponseBody
    public String complete(@PathVariable long learnerEnrollmentId) throws Exception {
        
        String result;
        LearnerEnrollment learnerEnrollment;
        LearnerCourseStatistics courseStatistics;

        courseStatistics = null;
        result = "Invalid LearnerEnrollment Id";
        
        learnerEnrollment = entitlementService.getLearnerEnrollmentById(learnerEnrollmentId);

        if(learnerEnrollment != null) {
            result = "Invalid LearnerCourseStatistics Id";
            courseStatistics = learnerEnrollment.getCourseStatistics();
            if(courseStatistics != null) {
                courseStatistics.setStatus(LearnerCourseStatistics.COMPLETED);
                courseStatistics.setCompleted(true);
                
                result = "Success";
            }
        }

        if(result.equals("Success")) {
            statisticsService.updateLearnerCourseStatistics(courseStatistics.getId(), courseStatistics);
            learnersToBeMailedService.emailCourseCompletionCertificate(learnerEnrollment.getId());
        }
        
        return result;
    }
    
    @RequestMapping(value = "/learner/enrollment/{learnerEnrollmentId}/status/pending")
    @ResponseBody
    public String pending(@PathVariable long learnerEnrollmentId) throws Exception {
        
        StringBuilder result;
        
        LearnerEnrollment enrollment;
        LearnerCourseStatistics courseStat;
        LearnerCompletionStatistics completionStat;
        LearnerAssessmentResultStatistic assessmentStat;
        
        enrollment = entitlementService.getLearnerEnrollmentById(learnerEnrollmentId);
        courseStat = enrollment == null ? null : enrollment.getCourseStatistics();
        completionStat = enrollment == null ? null : statisticsService.getLearnerCompletionStatisticsByEnrollmentId(enrollment.getId());
        assessmentStat = enrollment == null ? null : statisticsService.getLearnerAssessmentStatisticByEnrollmentId(enrollment.getId());

        result = new StringBuilder();
        result.append("Failed. Invalid LearnerEnrollment Id");
        
        if(enrollment != null)
            result.setLength(0);
        
        if(enrollment != null && courseStat == null)
            result.append("Failed. No LearnerCourseStatistics found");
        if(enrollment != null && completionStat == null)
            result.append("Failed. No LearnerCompletionStatistics found");
        if(enrollment != null && assessmentStat == null)
            result.append("Failed. No LearnerAssessmentResultStatistic found");
        
        if(enrollment != null && courseStat != null && completionStat != null && assessmentStat != null) {
            
            courseStat.setStatus(LearnerCourseStatistics.IN_PROGRESS);
            courseStat.setCompleted(false);

            completionStat.setCourseComplete(Boolean.FALSE);
            completionStat.setPostAssessmentMasteryAchieved(Boolean.FALSE);


            assessmentStat.setAcheivedAssessmentMastery(Boolean.FALSE);
            assessmentStat.setAssessmentAttemptNumber(0);

            result.setLength(0);
            result.append("OK");
        }

        if(result.toString().equals("OK")) {
            
            statisticsService.updateLearnerCourseStatistics(courseStat.getId(), courseStat);
            statisticsService.updateLearnerCompletionStatistics(completionStat);
            statisticsService.updateLearnerAssessmentResultStatistic(assessmentStat);
            
            result.setLength(0);
            result.append("Success");
        }
        
        return result.toString();
    }
}