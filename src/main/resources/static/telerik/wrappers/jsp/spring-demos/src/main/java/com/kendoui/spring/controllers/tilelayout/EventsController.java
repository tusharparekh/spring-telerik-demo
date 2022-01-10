
package com.kendoui.spring.controllers.tilelayout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("tilelayout-events-controller")
@RequestMapping(value="/tilelayout/")
public class EventsController {
    @RequestMapping(value = {"/", "/events"}, method = RequestMethod.GET)
    public String index() {       
        return "tilelayout/events";
    }  
}