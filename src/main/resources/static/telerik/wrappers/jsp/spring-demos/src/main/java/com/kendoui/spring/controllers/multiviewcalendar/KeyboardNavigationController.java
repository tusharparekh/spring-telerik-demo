package com.kendoui.spring.controllers.multiviewcalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("multiviewcalendar-navigation-controller")
@RequestMapping(value="/multiviewcalendar/")
public class KeyboardNavigationController {
    
    @RequestMapping(value = {"/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {       
        return "multiviewcalendar/keyboard-navigation";
    }    
}