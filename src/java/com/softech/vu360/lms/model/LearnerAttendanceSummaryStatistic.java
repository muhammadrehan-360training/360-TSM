package com.softech.vu360.lms.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/**
 * 
 * @author haider.ali
 * 
 */

@Entity
@DiscriminatorValue("AttendanceStatistic")
public class LearnerAttendanceSummaryStatistic extends LearnerStatistic implements Serializable {
	
	@Column(name = "MAXPERCENTCOURSEATTENDED")
	private double maxPercentCourseAttended = 0;

         @Column(name = "BOOKMARKGUID")
        private String bookmarkGUID;

	public double getMaxPercentCourseAttended() {
		return maxPercentCourseAttended;
	}

	public void setMaxPercentCourseAttended(double maxPercentCourseAttended) {
		this.maxPercentCourseAttended = maxPercentCourseAttended;
	}
        
        public String getBookmarkGUID() {
            return bookmarkGUID;
        }

        public void setBookmarkGUID(String bookmarkGUID) {
            this.bookmarkGUID = bookmarkGUID;
        }
}
