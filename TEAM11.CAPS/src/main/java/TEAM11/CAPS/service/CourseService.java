package TEAM11.CAPS.service;

import java.util.List;

import TEAM11.CAPS.model.Course;

public interface CourseService {
	List<Course> getAllCourses();
	List<String> getCourseNames();
}
