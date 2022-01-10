package com.kendoui.spring.controllers.breadcrumb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("breadcrumb-api-controller")
@RequestMapping(value="/breadcrumb/")
public class ApiController {
    
    @RequestMapping(value = {"/api"}, method = RequestMethod.GET)
    public String index() {       
        return "breadcrumb/api";
    }    
}