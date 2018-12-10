package TEAM11.CAPS.model;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity // This tells Hibernate to make a table out of this class
@Table(name = "user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "USERID")
	private Integer userid;
	@Basic
	@Column(name = "FIRST_MID_NAME")
	private String first_mid_name;
	
	@Column(name = "LAST_NAME")
	private String last_name;

	@Temporal(TemporalType.DATE)
	@Column(name = "DATE_JOINED")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date date_joined;

	@Basic
	@Column(name = "EMAIL")
	private String email;

	@Column(name = "PASSWORD")
	private String password;
	
	@Column(name = "STATUS")
	private String status;

	/*@OneToOne(targetEntity = Role.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "userrole", joinColumns = {
			@JoinColumn(name = "userid", referencedColumnName = "userid") }, inverseJoinColumns = {
			@JoinColumn(name = "roleid", referencedColumnName = "roleid") }
				)*/
	//private Role roleSet;
	
	@OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ROLEID", insertable=false, updatable=false)
    private Role role;

	@ManyToOne
	@JoinColumn(name="STUDENTID")
	private StudentEnrolment studentEnrolment;
	
	@ManyToOne
	@JoinColumn(name="ASSIGNED_LECTURERID")
	private Course course;
	
	public User() {
	}

	public User(Integer userid, String first_mid_name, String last_name, Date date_joined, String email,
			String password, String status, Role role, StudentEnrolment studentEnrolment, Course course) {
		super();
		this.userid = userid;
		this.first_mid_name = first_mid_name;
		this.last_name = last_name;
		this.date_joined = date_joined;
		this.email = email;
		this.password = password;
		this.status = status;
		this.role = role;
		this.studentEnrolment = studentEnrolment;
		this.course = course;
	}

	public Integer getUserid() {
		return userid;
	}

	public String getFirst_mid_name() {
		return first_mid_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public Date getDate_joined() {
		return date_joined;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getStatus() {
		return status;
	}

	public Role getRole() {
		return role;
	}
	public StudentEnrolment getStudentEnrolment() {
		return studentEnrolment;
	}

	public Course getCourse() {
		return course;
	}

}