package com.kendoui.spring.controllers.tilelayout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("tilelayout-keyboard-navigation-controller")
@RequestMapping(value="/tilelayout/")
public class KeyboardNavigationController {

    @RequestMapping(value = {"/", "/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {
        return "tilelayout/keyboard-navigation";
    }
}