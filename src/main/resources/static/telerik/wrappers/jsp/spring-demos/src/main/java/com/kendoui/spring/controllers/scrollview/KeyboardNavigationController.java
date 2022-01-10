package com.kendoui.spring.controllers.scrollview;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("scrollview-keyboard-navigation-controller")
@RequestMapping(value="/scrollview/")
public class KeyboardNavigationController {

    @RequestMapping(value = {"/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {
        return "scrollview/keyboard-navigation";
    }
}