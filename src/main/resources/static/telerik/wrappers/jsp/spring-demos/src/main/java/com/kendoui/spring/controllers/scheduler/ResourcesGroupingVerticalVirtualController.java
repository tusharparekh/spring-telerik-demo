package com.kendoui.spring.controllers.scheduler;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("scheduler-resources-grouping-vertical-virtual-controller")
@RequestMapping(value="/scheduler/")
public class ResourcesGroupingVerticalVirtualController {
   
    @RequestMapping(value = "/resources-grouping-vertical-virtual", method = RequestMethod.GET)
    public String resources(Locale locale, Model model) {        
        return "scheduler/resources-grouping-vertical-virtual";
    }
}