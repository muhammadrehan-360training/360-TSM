package com.softech.vu360.lms.rest;

import com.softech.vu360.lms.model.LearnerAssessmentResultStatistic;
import com.softech.vu360.lms.model.LearnerCompletionStatistics;
import com.softech.vu360.lms.model.LearnerCourseStatistics;
import com.softech.vu360.lms.model.LearnerEnrollment;
import com.softech.vu360.lms.model.LearningSession;
import com.softech.vu360.lms.service.EntitlementService;
import com.softech.vu360.lms.service.StatisticsService;
import com.softech.vu360.lms.web.controller.learner.LaunchCourseController;
import com.softech.vu360.util.LearnersToBeMailedService;
import org.apache.log4j.Logger;
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

    private static final Logger LOGGER = Logger.getLogger(Enrollment.class.getName());
    
    @RequestMapping(value = "/learner/session/{learningSessionId}/enrollment/status/complete")
    @ResponseBody
    public String complete(@PathVariable String learningSessionId) throws Exception {
        
        StringBuilder result;
        
        LearningSession session;
        LearnerEnrollment enrollment;
        LearnerCourseStatistics courseStatistics;

        courseStatistics = null;
        result = new StringBuilder();
        
        session = statisticsService.getLearningSessionByLearningSessionId(learningSessionId);
        
        if(session == null)
            result.append("Failed. Invalid LearningSession");
        
        enrollment = session == null ? null : entitlementService.getLearnerEnrollmentById(session.getEnrollmentId());

        if(session != null && enrollment == null)
            result.append("Failed. No enrollment found against LearningSession");
        
        if(enrollment != null) {
            result.append("Invalid LearnerCourseStatistics Id");
            courseStatistics = enrollment.getCourseStatistics();
            if(courseStatistics != null) {
                courseStatistics.setStatus(LearnerCourseStatistics.COMPLETED);
                courseStatistics.setCompleted(true);
                
                result.setLength(0);
                result.append("Success");
            }
        }

        if(result.toString().equals("Success")) {
            statisticsService.updateLearnerCourseStatistics(courseStatistics.getId(), courseStatistics);
            learnersToBeMailedService.emailCourseCompletionCertificate(enrollment.getId());
        }
        
        return result.toString();
    }
    
    @RequestMapping(value = "/learner/session/{learningSessionId}/enrollment/status/pending")
    @ResponseBody
    public String pending(@PathVariable String learningSessionId) throws Exception {
        
        StringBuilder result;
        
        LearningSession session;
        LearnerEnrollment enrollment;
        LearnerCourseStatistics courseStat;
        LearnerCompletionStatistics completionStat;
        LearnerAssessmentResultStatistic assessmentStat;
        
        session = statisticsService.getLearningSessionByLearningSessionId(learningSessionId);
        
        enrollment = session == null ? null : entitlementService.getLearnerEnrollmentById(session.getEnrollmentId());
        courseStat = enrollment == null ? null : enrollment.getCourseStatistics();
        completionStat = enrollment == null ? null : statisticsService.getLearnerCompletionStatisticsByEnrollmentId(enrollment.getId());
        assessmentStat = enrollment == null ? null : statisticsService.getLearnerAssessmentStatisticByEnrollmentId(enrollment.getId());

        result = new StringBuilder();
        
        if(session == null)
            result.append("Failed. Invalid LearningSession");
        
        if(session != null && enrollment == null)
            result.append("Failed. No enrollment found against LearningSession");
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
            learnersToBeMailedService.emailLearnerOnDisqualifiedByProctor(enrollment.getId());
            result.setLength(0);
            result.append("Success");
        }
        
        return result.toString();
    }
}