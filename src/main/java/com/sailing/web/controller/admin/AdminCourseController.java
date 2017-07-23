package com.sailing.web.controller.admin;

import com.sailing.entity.Organization;
import com.sailing.service.OrganizationService;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sailing.service.course.CourseFileService;
import com.sailing.web.controller.BaseController;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminCourseController extends BaseController {
	@Autowired
	OrganizationService organizationService;



}
