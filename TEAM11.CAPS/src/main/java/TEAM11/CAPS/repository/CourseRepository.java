package TEAM11.CAPS.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import TEAM11.CAPS.model.Course;

@Repository
@Transactional
public interface CourseRepository extends JpaRepository<Course,Integer> {
	
	@Query("SELECT r FROM Course r")
	public List<Course> getAll();
	
	@Query("SELECT r.courseName FROM Course r")
	List<String> getCourseName();
}
