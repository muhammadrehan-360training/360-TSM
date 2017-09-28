package com.softech.vu360.lms.repositories;

import com.softech.vu360.lms.model.LearnerAttendanceSummaryStatistic;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author ramiz.uddin
 */
public interface LearnerAttendanceStatisticRepository extends CrudRepository<LearnerAttendanceSummaryStatistic, Long> {
    LearnerAttendanceSummaryStatistic findTopByLearnerEnrollmentIdOrderByIdDesc(Long id);
}
