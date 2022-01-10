package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-activeview-controller")
@RequestMapping(value="/multiviewcalendar/")
public class ViewSelectionController {
    
    @RequestMapping(value = {"/view-selection"}, method = RequestMethod.GET)
    public String index() {       
        return "multiviewcalendar/view-selection";
    }    
}