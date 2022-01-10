package com.kendoui.spring.controllers.timeline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("timeline-events-controller")
@RequestMapping(value="/timeline/")
public class EventsController {
    
    @RequestMapping(value = {"/", "/events"}, method = RequestMethod.GET)
    public String index() {       
        return "timeline/events";
    }    
}