package TEAM11.CAPS.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "student_enrolment")
public class StudentEnrolment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "STUDENT_ENROL_ID")
	private Integer StudentEnrollID;

	@Basic
	@Temporal(TemporalType.DATE)
	@Column(name = "DATE_REGISTERED")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date DateRegistered;
	
	@Basic
	@Column(name = "STATUS_ENROLL")
	private String StatusEnroll;
	
	@Column(name = "SCORE")
	private Integer Score;
	
	@OneToMany(mappedBy="studentEnrolment",cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	//@JoinColumn(name="COURSEID")
	private List<Course> courses =  new ArrayList<Course>();
	
	@OneToMany(mappedBy="studentEnrolment")
	//@JoinColumn(name="STUDENTID")
	private List<User> users;

	
	public StudentEnrolment() {}

	public StudentEnrolment(Integer studentEnrollID, Date dateRegistered, String statusEnroll, Integer score,
			List<Course> courses, List<User> users) {
		super();
		StudentEnrollID = studentEnrollID;
		DateRegistered = dateRegistered;
		StatusEnroll = statusEnroll;
		Score = score;
		this.courses = courses;
		this.users = users;
	}

	public Integer getStudentEnrollID() {
		return StudentEnrollID;
	}

	public Date getDateRegistered() {
		return DateRegistered;
	}

	public String getStatusEnroll() {
		return StatusEnroll;
	}

	public Integer getScore() {
		return Score;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public List<User> getUsers() {
		return users;
	}
	
	
}
