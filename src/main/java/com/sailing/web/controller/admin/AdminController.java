package com.sailing.web.controller.admin;

import com.sailing.entity.Course;
import com.sailing.entity.CourseOrganization;
import com.sailing.entity.Organization;
import com.sailing.service.OrganizationService;
import com.sailing.service.course.CourseFileService;
import com.sailing.service.course.CourseOrganizationService;
import com.sailing.service.course.CourseService;
import com.sailing.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {
    @Autowired
    CourseFileService courseFileService;
    @Autowired
	CourseService courseService;

    @Autowired
    CourseOrganizationService courseOrganizationService;

    @RequestMapping("/admin")
	public String getAdminPage() {
		return "admin/user-authority";
	}

	@RequestMapping("/authority")
	public String getUserAuthorityPage() {
		return "admin/user-authority";
	}

	@RequestMapping("/upload")
	public String getFilePage() {
		return "admin/file-upload";
	}

	@RequestMapping("/course")
	public String getCoursePage(){
    	return "admin/admin-course";
	}


}
