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

    @Query(value="select cast(count(ca_rc.id) as bit) \n" +
        "from learnerenrollment le, courseapproval ca, \n" +
        "courseapproval_restrictedcourse ca_rc \n" +
        "where le.id in (\n" +
        "  select distinct _lcs.learnerenrollment_id \n" +
        "  from learner _l, learnerenrollment _le, \n" +
        "  learnercoursestatistics _lcs\n" +
        "  where _l.id = ?1\n" +
        "  and _le.learner_id = _l.id\n" +
        "  and upper(_le.enrollmentstatus) in (upper('active'))\n" +
        "  and _lcs.learnerenrollment_id = _le.id \n" +
        "  and upper(_lcs.status) in (upper('inprogress'))\n" +
        ")\n" +
        "and ca.id = ?2\n" +
        "and ca_rc.courseapproval_id = ca.id\n" +
        "and ca_rc.course_id in (le.course_id)", 
            nativeQuery=true)
    public boolean isRestrictedCourse(Long learnerId, Long courseApprovalId);

    public void deleteByCourseApprovalId(Long courseApprovalId);
}
