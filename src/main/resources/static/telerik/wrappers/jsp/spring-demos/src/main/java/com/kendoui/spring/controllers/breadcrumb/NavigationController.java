package com.kendoui.spring.controllers.breadcrumb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("breadcrumb-navigation-controller")
@RequestMapping(value="/breadcrumb/")
public class NavigationController {
    
    @RequestMapping(value = {"/navigation"}, method = RequestMethod.GET)
    public String index() {       
        return "breadcrumb/navigation";
    }    
}