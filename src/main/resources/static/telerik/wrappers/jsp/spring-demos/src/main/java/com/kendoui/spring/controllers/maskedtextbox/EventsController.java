package com.kendoui.spring.controllers.maskedtextbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("maskedtextbox-events-controller")
@RequestMapping(value="/maskedtextbox/")
public class EventsController {

    @RequestMapping(value = {"/events"}, method = RequestMethod.GET)
    public String index() {
        return "maskedtextbox/events";
    }
}
