package com.sailing.web.controller.admin;

import java.util.List;

import com.sailing.util.ListUtil;
import org.apache.commons.collections.ListUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sailing.entity.CourseOrganization;
import com.sailing.service.course.CourseFileService;
import com.sailing.service.course.CourseOrganizationService;
import com.sailing.service.course.CourseService;
import com.sailing.web.controller.BaseController;

@Controller
@RequestMapping("/admin/courseOrgan")
public class AdminCoureseOrganController extends BaseController {
    @Autowired
    CourseOrganizationService courseOrganizationService;

	@RequestMapping("/getAllCourseOrgan")
    @ResponseBody
    public List<CourseOrganization> getCourseOrgan(){
	    return courseOrganizationService.selectAll();
    }


    @RequestMapping("/setCourseOrgan")
    @ResponseBody
    public String setCourseOrgan(Integer organId,String courseIds){
        System.out.println(organId+"===="+courseIds);
        List<Integer> cIds= ListUtil.getListFromJSON(courseIds);
        if (cIds==null) {
            courseOrganizationService.deleteByOrganId(organId);
            return "success";
        }
        courseOrganizationService.deleteByOrganId(organId);
        for (Integer cId : cIds) {
            courseOrganizationService.insert(new CourseOrganization(cId,organId));
        }
        return "success";
    }


    @RequestMapping("/deleteCourseOrgan")
    @ResponseBody
    public String deleteCourseOrgan(Integer organId,Integer courseId){
        courseOrganizationService.deleteByCourseOrgan(courseId,organId);
        return "success";
    }

}
