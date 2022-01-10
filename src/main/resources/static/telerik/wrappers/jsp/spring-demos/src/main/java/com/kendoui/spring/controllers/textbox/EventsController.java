package com.kendoui.spring.controllers.textbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textbox-events-controller")
@RequestMapping(value="/textbox/")
public class EventsController {

    @RequestMapping(value = {"/events"}, method = RequestMethod.GET)
    public String index() {
        return "textbox/events";
    }
}