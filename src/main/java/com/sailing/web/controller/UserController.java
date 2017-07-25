package com.sailing.web.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.sailing.constant.UserConstants;
import com.sailing.entity.User;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * 此类实现的是有关于用户操作的一些实现
 *
 *
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
    @RequestMapping("/getUserInfo")
    @ResponseBody
    public User getUserinfo(){
        return (User) session.getAttribute(UserConstants.CURRENT_USER);
    }

    @RequestMapping("/editUserInfo")
    public String userEditInfo(){
        return "user/editUserInfo";
    }

    @RequestMapping("/headPic/upload")
    @ResponseBody
    public String uploadHeadPic(@RequestParam("doc") MultipartFile file, HttpServletRequest request) throws IOException {
        if(!file.isEmpty()) {
            String path = request.getServletContext().getRealPath("/resources/data/headPic");
            File parent = new File(path);
            if (!parent.exists()) parent.mkdirs();

            String oldname = file.getOriginalFilename();
            int position = oldname.lastIndexOf(".");
            String extension = "";
            if (position != -1)
                extension = oldname.substring(position);
            String filename = new Md5Hash(String.valueOf(System.currentTimeMillis()), session.getAttribute(UserConstants.CURRENT_USER_ID)).toString();
            file.transferTo(new File(parent, filename + extension));

            return "/resources/data/headPic/"+filename+extension;

        }
        return "";
    }

    @RequestMapping("/main")
    public String getMainPage(){
        return "user/main";
    }
    @RequestMapping("/course")
    public String getCoursePage(){
        return "user/course";
    }
    @RequestMapping("/note")
    public String getNotePage(){
        return "user/note";
    }



}
