package com.kendoui.spring.controllers.timeline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("timeline-keyboard-navigation-controller")
@RequestMapping(value="/timeline/")
public class KeyboardNavigationController {
    
    @RequestMapping(value = "/keyboard-navigation", method = RequestMethod.GET)
    public String index() {
        return "timeline/keyboard-navigation";
    }
}