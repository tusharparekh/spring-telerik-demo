package com.kendoui.spring.controllers.filter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("filter-custom-editors-controller")
@RequestMapping(value="/filter/")
public class CustomEditorsController {
    
    @RequestMapping(value = {"/", "/custom-editors"}, method = RequestMethod.GET)
    public String index() {
        
        return "filter/custom-editors";
    }
}

