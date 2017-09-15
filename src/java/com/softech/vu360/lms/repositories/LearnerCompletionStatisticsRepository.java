package com.softech.vu360.lms.repositories;

import com.softech.vu360.lms.model.LearnerCompletionStatistics;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author ramiz.uddin
 */
public interface LearnerCompletionStatisticsRepository extends CrudRepository<LearnerCompletionStatistics, Long> {

    public LearnerCompletionStatistics findByLearnerEnrollmentId(long id);
    
}
