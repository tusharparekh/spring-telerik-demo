package com.kendoui.spring.controllers.pager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("pager-integration-controller")
@RequestMapping(value="/pager/")
public class IntegrationController {
    
    @RequestMapping(value = {"/", "/integration"}, method = RequestMethod.GET)
    public String index() {       
        return "pager/integration";
    }    
}