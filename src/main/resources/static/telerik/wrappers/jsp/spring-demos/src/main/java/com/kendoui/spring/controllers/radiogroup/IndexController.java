package com.kendoui.spring.controllers.radiogroup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("radiogroup-home-controller")
@RequestMapping(value="/radiogroup/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "radiogroup/index";
    }    
}