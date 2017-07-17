package com.sailing.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController{
    @RequestMapping("/admin")
    public String getAdminPage(){
        return "admin/admin";
    }
}
