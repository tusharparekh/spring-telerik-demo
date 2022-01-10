package com.kendoui.spring.controllers.timeline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("timeline-horizontal-controller")
@RequestMapping(value="/timeline/")
public class HorizontalController {
    
    @RequestMapping(value = {"/", "/horizontal"}, method = RequestMethod.GET)
    public String index() {       
        return "timeline/horizontal";
    }    
}