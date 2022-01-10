package com.kendoui.spring.controllers.timeline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("timeline-api-controller")
@RequestMapping(value="/timeline/")
public class ApiController {
    
    @RequestMapping(value = {"/", "/api"}, method = RequestMethod.GET)
    public String index() {       
        return "timeline/api";
    }    
}