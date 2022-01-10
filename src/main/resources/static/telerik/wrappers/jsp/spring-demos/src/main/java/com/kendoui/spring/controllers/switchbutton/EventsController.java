package com.kendoui.spring.controllers.switchbutton;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("switch-events-controller")
@RequestMapping(value="/switch/")
public class EventsController {
    @RequestMapping(value = {"/", "/events"}, method = RequestMethod.GET)
    public String index() {       
        return "switch/events";
    }  
}
