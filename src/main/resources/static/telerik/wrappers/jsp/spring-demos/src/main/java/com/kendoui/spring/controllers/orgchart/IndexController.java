package com.kendoui.spring.controllers.orgchart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("orgchart-home-controller")
@RequestMapping(value="/orgchart/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "orgchart/index";
    }   
}

