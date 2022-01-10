package com.kendoui.spring.controllers.drawer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("drawer-keyboard-navigation-controller")
@RequestMapping(value="/drawer/")
public class KeyboardNavigationController {
    
    @RequestMapping(value = "/keyboard-navigation", method = RequestMethod.GET)
    public String index() {
        return "drawer/keyboard-navigation";
    }
}