package com.kendoui.spring.controllers.expansionpanel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("expansionpanel-events-controller")
@RequestMapping(value="/expansionpanel/")
public class EventsController {
    
    @RequestMapping(value = {"/events"}, method = RequestMethod.GET)
    public String index() {       
        return "expansionpanel/events";
    }
}