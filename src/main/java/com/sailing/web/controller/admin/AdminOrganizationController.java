package com.sailing.web.controller.admin;

import com.sailing.entity.Organization;
import com.sailing.service.OrganizationService;
import com.sailing.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@RequestMapping("/admin/organization")
@Controller
public class AdminOrganizationController extends BaseController {
    @Autowired
    OrganizationService organizationService;

    @RequestMapping("/getAllOrganizations")
    @ResponseBody
    public List<Organization> getAllOrganizations(){
        List<Organization> organizations=organizationService.selectAll();
        return organizations;
    }


}
