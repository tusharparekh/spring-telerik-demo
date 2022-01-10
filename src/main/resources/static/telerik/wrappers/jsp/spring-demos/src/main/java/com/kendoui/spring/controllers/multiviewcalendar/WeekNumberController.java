package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-week-column-controller")
@RequestMapping(value="/multiviewcalendar/")
public class WeekNumberController {
    
    @RequestMapping(value = {"/week-column"}, method = RequestMethod.GET)
    public String index() {       
        return "multiviewcalendar/week-column";
    }
}