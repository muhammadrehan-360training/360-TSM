package com.softech.vu360.lms.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "COURSEAPPROVAL_RESTRICTEDCOURSE")
public class RestrictedCourse implements Serializable {

    @Id
	@javax.persistence.TableGenerator(name = "ID", table = "VU360_SEQ", pkColumnName = "TABLE_NAME", valueColumnName = "NEXT_ID", pkColumnValue = "COURSEAPPROVAL_RESTRICTEDCOURSE", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "ID")
    private Long id;
    
    @ManyToOne(optional = false, targetEntity = Course.class)
    @JoinColumn(name = "COURSE_ID", referencedColumnName = "ID")
    private Course course;

    @ManyToOne(optional = false, targetEntity = CourseApproval.class)
    @JoinColumn(name = "COURSEAPPROVAL_ID", referencedColumnName = "ID")
    private CourseApproval courseApproval;

    @ManyToOne(optional = true, targetEntity = CourseGroup.class)
    @JoinColumn(name = "COURSEGROUP_ID", referencedColumnName = "ID")
    private CourseGroup courseGroup;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public Course getCourse() {
        return this.course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public CourseApproval getCourseApproval() {
        return this.courseApproval;
    }

    public void setCourseApproval(CourseApproval courseapproval) {
        this.courseApproval = courseapproval;
    }

    public CourseGroup getCourseGroup() {
        return this.courseGroup;
    }

    public void setCourseGroup(CourseGroup coursegroup) {
        this.courseGroup = coursegroup;
    }

    @Override
    public int hashCode() {
      final int prime = 31;
      int result = 1;
      result = prime * result
          + ((courseApproval == null) ? 0 : courseApproval.hashCode());
      result = prime * result
          + ((course == null) ? 0 : course.hashCode());
      result = prime * result
        + ((courseGroup == null) ? 0 : courseGroup.hashCode());
      return result;
    }
    
    @Override
    public boolean equals(Object obj) {
      if (this == obj)
        return true;
      if (obj == null)
        return false;
      if (getClass() != obj.getClass())
        return false;
      
      RestrictedCourse other = (RestrictedCourse) obj;
      
      if (courseApproval == null) {
        if (other.courseApproval != null)
          return false;
      } else if (courseApproval.getId().longValue() != other.courseApproval.getId().longValue())
        return false;
      
      if (course == null) {
        if (other.course != null)
          return false;
      } else if (course.getId().longValue() != other.course.getId().longValue())
        return false;
      
      if (courseGroup == null) {
        if (other.courseGroup != null)
          return false;
      } else if (courseGroup.getId().longValue() != other.courseGroup.getId().longValue())
        return false;
      
      return true;
    }
    
}