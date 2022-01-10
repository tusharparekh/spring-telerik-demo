package com.kendoui.spring.controllers.drawer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("drawer-functionality-controller")
@RequestMapping(value="/drawer/")
public class FunctionalityController {
    
    @RequestMapping(value = "/functionality", method = RequestMethod.GET)
    public String index() {
        return "drawer/functionality";
    }
}