package com.kendoui.spring.controllers.daterangepicker;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("daterangepicker-events-controller")
@RequestMapping(value="/daterangepicker/")
public class EventsController {

    @RequestMapping(value = {"/events"}, method = RequestMethod.GET)
    public String index() {
        return "daterangepicker/events";
    }
}