package com.sailing.web.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.sailing.entity.CourseFile;
import com.sailing.service.course.CourseFileService;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class VideoFilter extends AccessControlFilter {
    @Autowired
    CourseFileService courseFileService;

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        HttpServletRequest req= (HttpServletRequest) request;
        Integer videoId;
        try {
            videoId = Integer.valueOf(req.getParameter("videoId"));
        }catch (NumberFormatException e){
            request.setAttribute("error","无效的视频路径！");
            request.setAttribute("courseFileService",courseFileService.toString());
            return false;
        }
        request.setAttribute("error","无效的视频路径！");
        request.setAttribute("courseFileService",courseFileService.toString());
        return false;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletRequest req= (HttpServletRequest) request;
        req.getRequestDispatcher("index.jsp").forward(req,response);
        return false;
    }
}
