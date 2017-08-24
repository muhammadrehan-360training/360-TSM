/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.softech.vu360.lms.repositories;

import com.softech.vu360.lms.model.RestrictedCourse;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;
/**
 *
 * @author ramiz.uddin
 */
public interface RestrictedCourseRepository extends CrudRepository<RestrictedCourse, Long> {

    @Query(value="select cast(count(ca_rc.id) as bit) from learnerenrollment _le, course _c, courseapproval ca, courseapproval_restrictedcourse ca_rc where _le.id in (\n" +
                    "select distinct lcs.learnerenrollment_id from learner l, learnerenrollment le, learnercoursestatistics lcs, course c\n" +
                    "where l.id = ?1\n" +
                    "and le.learner_id = l.id\n" +
                    "and upper(le.enrollmentstatus) in (upper('active'))\n" +
                    "and lcs.learnerenrollment_id = le.id and upper(lcs.status) not in (upper('completed'), upper('notstarted'))\n" +
                    ")\n" +
                    "and _c.id = _le.course_id\n" +
                    "and ca.id = ?2\n" +
                    "and ca_rc.courseapproval_id = ca.id\n" +
                    "and ca_rc.course_id in (_c.id)", 
            nativeQuery=true)
    public boolean isRestrictedCourse(Long learnerId, Long courseApprovalId);
}
