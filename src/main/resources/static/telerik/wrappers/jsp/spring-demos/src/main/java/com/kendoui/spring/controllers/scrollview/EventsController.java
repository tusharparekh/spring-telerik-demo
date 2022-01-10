package com.kendoui.spring.controllers.scrollview;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("scrollview-events-controller")
@RequestMapping(value="/scrollview/")
public class EventsController {
    
    @RequestMapping(value = {"/events"}, method = RequestMethod.GET)
    public String index() {       
        return "scrollview/events";
    }
}