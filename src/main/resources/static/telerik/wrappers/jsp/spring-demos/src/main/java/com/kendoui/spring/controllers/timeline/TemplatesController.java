package com.kendoui.spring.controllers.timeline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("timeline-templates-controller")
@RequestMapping(value="/timeline/")
public class TemplatesController {
    
    @RequestMapping(value = {"/", "/templates"}, method = RequestMethod.GET)
    public String index() {       
        return "timeline/templates";
    }    
}