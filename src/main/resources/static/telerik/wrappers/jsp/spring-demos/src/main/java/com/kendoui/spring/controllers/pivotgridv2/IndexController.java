package com.kendoui.spring.controllers.pivotgridv2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("pivotgridv2-home-controller")
@RequestMapping(value="/pivotgridv2/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "pivotgridv2/index";
    }
    
}

