package com.sailing.web.controller.admin;

import com.sailing.entity.Course;
import com.sailing.entity.Organization;
import com.sailing.service.OrganizationService;
import com.sailing.service.course.CourseService;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sailing.service.course.CourseFileService;
import com.sailing.web.controller.BaseController;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/admin/course")
public class AdminCourseController extends BaseController {
	@Autowired
	CourseService courseService;

	@RequestMapping("/getAllCourses")
	@ResponseBody
	public List<Course> getAllCourses(){
		List<Course> courses =courseService.selectAll();
		return courses;
	}

}
