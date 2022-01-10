package com.kendoui.spring.controllers.expansionpanel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("expansionpanel-api-controller")
@RequestMapping(value="/expansionpanel/")
public class ApiController {
    
    @RequestMapping(value = {"/api"}, method = RequestMethod.GET)
    public String index() {       
        return "expansionpanel/api";
    }
}