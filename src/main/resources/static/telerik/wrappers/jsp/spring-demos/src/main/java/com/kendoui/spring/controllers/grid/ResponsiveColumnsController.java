package com.kendoui.spring.controllers.grid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("grid-responsive-columns-controller")
@RequestMapping(value="/grid/")
public class ResponsiveColumnsController {
    
    @RequestMapping(value = "/responsive-columns", method = RequestMethod.GET)
    public String index() {
        return "grid/responsive-columns";
    }
 
}

