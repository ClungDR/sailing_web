package com.sailing.web.controller;

/**
 * Created by 25824 on 2017/7/1.
 */

import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sailing.constant.UserConstants;
import com.sailing.entity.User;
import com.sailing.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

@Controller
public class LoginController extends BaseController {
	@Autowired
	private Producer captchaProducer;

	@Autowired
	private UserService userService;

	/**
	 * 显示登录界面
	 * 
	 * @return
	 */
	@RequestMapping("/showLoginForm")
	public String showLogin() {
		return "login";
	}

	@RequestMapping(value = "/login",method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam("id")String id, String password, String verify) {
		System.out.println("heehda"+id+ "==="+password);
		String error = "success";
		String kaptchaTxt = (String) session
		        .getAttribute(Constants.KAPTCHA_SESSION_KEY);
		if (!verify.equals(kaptchaTxt)) {
			return "wrong verify";
		}
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(id,
		        password);
		try {
			subject.login(token);
		} catch (UnknownAccountException e) {
			error = "wrong id or password";
		} catch (IncorrectCredentialsException e) {
			error = "wrong id or password";
		} catch (AuthenticationException e) {
			// 其他错误，比如锁定，如果想单独处理请单独catch处理
			error = "wrong";
			e.printStackTrace();
		}

		if (subject.isAuthenticated()) {
			User user = userService.selectById(id);
			user.setPassword("");
			session.setAttribute(UserConstants.CURRENT_USER_ID,
			        subject.getPrincipal());
			session.setAttribute(UserConstants.CURRENT_USER, user);
		}
		return error;
	}

	/**
	 * 验证码生成
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/kaptchaImg")
	public ModelAndView getKaptchaImage(HttpServletRequest request,
	        HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		// 获取验证码
		// String code = (String)
		// session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
		// String code = (String) session.getAttribute("Kaptcha_Code");
		// 清除浏览器的缓存
		response.setDateHeader("Expires", 0);
		// Set standard HTTP/1.1 no-cache headers.
		response.setHeader("Cache-Control",
		        "no-store, no-cache, must-revalidate");
		// Set IE extended HTTP/1.1 no-cache headers (use addHeader).
		response.addHeader("Cache-Control", "post-check=0, pre-check=0");
		// Set standard HTTP/1.0 no-cache header.
		response.setHeader("Pragma", "no-cache");
		// return a jpeg
		response.setContentType("image/jpeg");
		// 浏览器记忆功能-----当前过浏览器和服务器交互成功以后下载的图片和资源会进行缓存一次。下次刷新的时候就不会在到服务器去下载。
		// 获取KAPTCHA验证的随机文本
		String capText = captchaProducer.createText();
		// 讲生成好的图片放入会话中
		session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);

		// create the image with the text
		BufferedImage bi = captchaProducer.createImage(capText);
		ServletOutputStream out = response.getOutputStream();
		// write the data out
		ImageIO.write(bi, "jpg", out);
		try {
			out.flush();
		} finally {
			out.close();// 关闭
		}
		return null;
	}

	/*
	 * 
	 * 注册的内容
	 */
    @RequestMapping("/showSignForm")
    public String showSign() {
        return "sign_up";
    }


	@RequestMapping("/signUp")
    @ResponseBody
	public String signUp(User user, String verify) {
        String kaptchaTxt = (String) session
                .getAttribute(Constants.KAPTCHA_SESSION_KEY);
        if (!verify.equals(kaptchaTxt)) {
            return "验证码错误";
        }
        try {
            userService.insertUser(user);
        }catch (Exception bue){
            return "用户名已存在！";
        }

        if (user.getId() != null) {
			return "success";
		}
		return "error";
	}
}
