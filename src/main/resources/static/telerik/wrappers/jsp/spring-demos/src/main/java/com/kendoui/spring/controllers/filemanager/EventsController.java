package com.kendoui.spring.controllers.filemanager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("filemanager-events-controller")
@RequestMapping(value="/filemanager/")
public class EventsController {
    
    @RequestMapping(value = {"/", "/events"}, method = RequestMethod.GET)
    public String index() {       
        return "filemanager/events";
    }    
}