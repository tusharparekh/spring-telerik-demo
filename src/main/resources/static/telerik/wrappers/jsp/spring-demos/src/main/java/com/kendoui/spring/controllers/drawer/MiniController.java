package com.kendoui.spring.controllers.drawer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("drawer-mini-controller")
@RequestMapping(value="/drawer/")
public class MiniController {
    
    @RequestMapping(value = "/mini", method = RequestMethod.GET)
    public String index() {
        return "drawer/mini";
    }
}