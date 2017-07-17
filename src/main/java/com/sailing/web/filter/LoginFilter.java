package com.sailing.web.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;

/**
 * 拦截所有未登陆的请求
 *将未登陆的请求重定向到登录页面
 *
 */
public class LoginFilter extends AccessControlFilter{
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        Subject subject= SecurityUtils.getSubject();
        return subject.isAuthenticated()||subject.isRemembered();
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        HttpServletResponse resp= (HttpServletResponse) response;
        resp.sendRedirect("/showLoginForm");
        return false;
    }
}
