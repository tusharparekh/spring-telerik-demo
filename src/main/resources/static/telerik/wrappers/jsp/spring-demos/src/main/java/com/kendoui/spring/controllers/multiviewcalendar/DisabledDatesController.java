package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-disabled-dates-controller")
@RequestMapping(value="/multiviewcalendar/")
public class DisabledDatesController {
    
    @RequestMapping(value = {"/disabled-dates"}, method = RequestMethod.GET)
    public String index() {       
        return "multiviewcalendar/disabled-dates";
    }    
}