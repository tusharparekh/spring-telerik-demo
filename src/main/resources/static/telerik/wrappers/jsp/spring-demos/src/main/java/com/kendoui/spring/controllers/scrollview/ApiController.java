package com.kendoui.spring.controllers.scrollview;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("scrollview-api-controller")
@RequestMapping(value="/scrollview/")
public class ApiController {
    
    @RequestMapping(value = {"/api"}, method = RequestMethod.GET)
    public String index() {       
        return "scrollview/api";
    }
}