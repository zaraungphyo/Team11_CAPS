package TEAM11.CAPS.model;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "course")
public class Course {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "COURSEID")
	private Integer courseid;
	
	@Basic
	@Column(name = "COURSE_NAME")
	private String courseName;
	
	@Column(name = "ROLE_DESCRIPTION")
	private String courseDescription;
	
	@Column(name = "CLASS_SIZE")
	private Integer classSize;
	
	@Column(name = "NUMBER_REGISTERED")
	private Integer numberRegistered;
	
	@Column(name = "CREDIT")
	private Integer credit;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "START_DATE")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date startDate;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "END_DATE")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date endDate;
	
	
	@Column(name = "WEEKDAY")
	private String weedDay;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "START_TIME")
	private Date startTime;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "END_TIME")
	private Date endTime;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "EXAM_TIME")
	private Date ExamStartTime;
	
/*	@Column(name = "ASSIGNED_LECTURERID")
	private Integer assignedLecturerid;*/

	@ManyToOne
	@JoinColumn(name="COURSEID", insertable=false, updatable=false)
	private StudentEnrolment studentEnrolment;
	
	@OneToMany(mappedBy="course")
	//@JoinColumn(name="USERID",referencedColumnName="ASSIGNED_LECTURERID")//ASSIGNED_LECTURERID
	private List<User> users;

	public Course() {	}



	public Course(Integer courseid, String courseName, String courseDescription, Integer classSize,
			Integer numberRegistered, Integer credit, Date startDate, Date endDate, String weedDay, Date startTime,
			Date endTime, Date examStartTime, Integer assignedLecturerid, StudentEnrolment studentEnrolment,
			List<User> users) {
		super();
		this.courseid = courseid;
		this.courseName = courseName;
		this.courseDescription = courseDescription;
		this.classSize = classSize;
		this.numberRegistered = numberRegistered;
		this.credit = credit;
		this.startDate = startDate;
		this.endDate = endDate;
		this.weedDay = weedDay;
		this.startTime = startTime;
		this.endTime = endTime;
		this.ExamStartTime = examStartTime;
		//this.assignedLecturerid = assignedLecturerid;
		this.studentEnrolment = studentEnrolment;
		this.users = users;
	}



	public Integer getCourseid() {
		return courseid;
	}

	public String getCourseName() {
		return courseName;
	}

	public String getCourseDescription() {
		return courseDescription;
	}

	public Integer getClassSize() {
		return classSize;
	}

	public Integer getNumberRegistered() {
		return numberRegistered;
	}

	public Integer getCredit() {
		return credit;
	}

	public Date getStartDate() {
		return startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public String getWeedDay() {
		return weedDay;
	}

	public Date getStartTime() {
		return startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public Date getExamStartTime() {
		return ExamStartTime;
	}

/*	public Integer getAssignedLecturerid() {
		return assignedLecturerid;
	}*/

	public StudentEnrolment getStudentEnrolment() {
		return studentEnrolment;
	}

	public List<User> getUsers() {
		return users;
	}
	
	
}
