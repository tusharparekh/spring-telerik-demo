package com.kendoui.spring.controllers.breadcrumb;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("breadcrumb-editing-controller")
@RequestMapping(value="/breadcrumb/")
public class EditingController {
    
    @RequestMapping(value = {"/editing"}, method = RequestMethod.GET)
    public String index() {       
        return "breadcrumb/editing";
    }    
}