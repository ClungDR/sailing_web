package com.sailing.web.controller;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * 用于测试的文件
 *
 *
 */
@Controller
public class TestController {
    @RequestMapping("/userCenter")
    public String showUserCenter(){
        return "user-center";
    }

    @RequestMapping("/userCenter2")
    public String showUserCenter2(){
        return "user/user-center";
    }



}
