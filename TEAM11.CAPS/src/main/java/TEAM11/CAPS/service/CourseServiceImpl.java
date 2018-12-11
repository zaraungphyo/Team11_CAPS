package TEAM11.CAPS.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import TEAM11.CAPS.model.Course;
import TEAM11.CAPS.repository.CourseRepository;

@Service
public class CourseServiceImpl implements CourseService {
	
	//@Resource
	@Autowired
	private CourseRepository courseRepository;
	
	@Override
	@Transactional
	public List<Course> getAllCourses() {
		return (List<Course> )courseRepository.getAll();
	}

	@Override
	@Transactional
	public List<String> getCourseNames() {
		List<String> a =(List<String>) courseRepository.getCourseName();
		return a;
	}

}
