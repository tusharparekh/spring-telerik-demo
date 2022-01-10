package com.kendoui.spring.controllers.calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("calendar-selection-controller")
@RequestMapping(value="/calendar/")
public class SelectionController {
    
    @RequestMapping(value = {"/selection"}, method = RequestMethod.GET)
    public String index() {       
        return "calendar/selection";
    }
}