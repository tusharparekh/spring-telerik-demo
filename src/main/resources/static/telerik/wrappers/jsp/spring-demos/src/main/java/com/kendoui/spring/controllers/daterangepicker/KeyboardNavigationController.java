package com.kendoui.spring.controllers.daterangepicker;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("daterangepicker-navigation-controller")
@RequestMapping(value="/daterangepicker/")
public class KeyboardNavigationController {

    @RequestMapping(value = {"/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {
        return "daterangepicker/keyboard-navigation";
    }
}