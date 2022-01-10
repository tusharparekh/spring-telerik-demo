package com.kendoui.spring.controllers.checkboxgroup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("checkboxgroup-home-controller")
@RequestMapping(value="/checkboxgroup/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "checkboxgroup/index";
    }    
}