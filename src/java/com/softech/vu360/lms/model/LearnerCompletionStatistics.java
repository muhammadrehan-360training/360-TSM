package com.softech.vu360.lms.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/**
 *
 * @author ramiz.uddin
 */
@Entity
@DiscriminatorValue("CompletionStatistic")
public class LearnerCompletionStatistics extends LearnerStatistic {
    
    @Basic
    @Column(name = "COURSECOMPLETETF")
    private Boolean courseComplete;

    @Basic
    @Column(name = "POSTASSESSMENTMASTERYACHIEVEDTF")
    private Boolean postAssessmentMasteryAchieved;

    public LearnerCompletionStatistics() {
        this.postAssessmentMasteryAchieved = null;
        this.courseComplete = null;
    }
    
    public boolean getCourseComplete() {
        return courseComplete;
    }

    public void setCourseComplete(Boolean courseComplete) {
        this.courseComplete = courseComplete;
    }

    public boolean getPostAssessmentMasteryAchieved() {
        return postAssessmentMasteryAchieved;
    }

    public void setPostAssessmentMasteryAchieved(Boolean postAssessmentMasteryAchieved) {
        this.postAssessmentMasteryAchieved = postAssessmentMasteryAchieved;
    }
    
}
