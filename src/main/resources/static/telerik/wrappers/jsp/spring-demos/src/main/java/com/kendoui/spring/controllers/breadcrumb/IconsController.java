package com.kendoui.spring.controllers.breadcrumb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("breadcrumb-icons-controller")
@RequestMapping(value="/breadcrumb/")
public class IconsController {
    
    @RequestMapping(value = {"/icons"}, method = RequestMethod.GET)
    public String index() {       
        return "breadcrumb/icons";
    }    
}