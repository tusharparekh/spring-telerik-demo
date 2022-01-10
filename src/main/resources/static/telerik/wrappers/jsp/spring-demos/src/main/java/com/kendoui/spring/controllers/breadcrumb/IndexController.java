package com.kendoui.spring.controllers.breadcrumb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("breadcrumb-home-controller")
@RequestMapping(value="/breadcrumb/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "breadcrumb/index";
    }    
}