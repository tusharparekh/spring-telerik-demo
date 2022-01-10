package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-selection-controller")
@RequestMapping(value="/multiviewcalendar/")
public class SelectionController {
    
    @RequestMapping(value = {"/selection"}, method = RequestMethod.GET)
    public String index() {       
        return "multiviewcalendar/selection";
    }
}