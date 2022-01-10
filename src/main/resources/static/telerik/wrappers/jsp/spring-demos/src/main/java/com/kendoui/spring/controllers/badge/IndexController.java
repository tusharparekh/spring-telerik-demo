package com.kendoui.spring.controllers.badge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("badge-home-controller")
@RequestMapping(value="/badge/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        
        return "/badge/index";
    }
}