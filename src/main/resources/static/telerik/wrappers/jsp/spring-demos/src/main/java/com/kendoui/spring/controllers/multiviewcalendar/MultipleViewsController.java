package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-multipleviews-controller")
@RequestMapping(value="/multiviewcalendar/")
public class MultipleViewsController {
    
    @RequestMapping(value = {"/multiple-views"}, method = RequestMethod.GET)
    public String index() {       
        return "multiviewcalendar/multiple-views";
    }
}