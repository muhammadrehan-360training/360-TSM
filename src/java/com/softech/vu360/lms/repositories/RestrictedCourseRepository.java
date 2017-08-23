/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.softech.vu360.lms.repositories;

import com.softech.vu360.lms.model.RestrictedCourse;
import org.springframework.data.repository.CrudRepository;
/**
 *
 * @author ramiz.uddin
 */
public interface RestrictedCourseRepository extends CrudRepository<RestrictedCourse, Long> {
}
