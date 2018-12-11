package TEAM11.CAPS.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import TEAM11.CAPS.model.Course;
import TEAM11.CAPS.model.User;
import TEAM11.CAPS.service.CourseService;
import TEAM11.CAPS.service.UserService;

@Controller
@RequestMapping(value = "/course")
public class courseController {
	@Autowired
	private CourseService cService;
	
	/*@Autowired
	private UserService uService;*/
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView logic() {
		ModelAndView mav = new ModelAndView("courseindex");
		//User u = uService.authenticate("Jade@gmail.com", "Password1");
		List<Course> courselst = cService.getAllCourses();
	//	List<String> courselst = cService.getCourseNames();
		mav.addObject("courselst", courselst);
		return mav;
	}
}
