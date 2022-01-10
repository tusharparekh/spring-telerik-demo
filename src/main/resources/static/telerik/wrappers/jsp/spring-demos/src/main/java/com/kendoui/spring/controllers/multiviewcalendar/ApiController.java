package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-api-controller")
@RequestMapping(value="/multiviewcalendar/")
public class ApiController {
    
    @RequestMapping(value = {"api"}, method = RequestMethod.GET)
    public String index() {
        return "multiviewcalendar/api";
    }
}