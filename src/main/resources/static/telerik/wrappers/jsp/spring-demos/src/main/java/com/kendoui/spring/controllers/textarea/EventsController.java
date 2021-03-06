package com.kendoui.spring.controllers.textarea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textarea-events-controller")
@RequestMapping(value="/textarea/")
public class EventsController {

    @RequestMapping(value = {"/events"}, method = RequestMethod.GET)
    public String index() {
        return "textarea/events";
    }
}