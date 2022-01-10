package com.kendoui.spring.controllers.button;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("button-badges-controller")
@RequestMapping(value="/button/")
public class BadgesController {
    
    @RequestMapping(value = {"/badges"}, method = RequestMethod.GET)
    public String index() {       
        return "button/badges";
    }    
}