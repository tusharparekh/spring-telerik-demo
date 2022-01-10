package com.kendoui.spring.controllers.actionsheet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller("actionsheet-home-controller")
@RequestMapping(value="/actionsheet/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {   
        return "/actionsheet/index";
    }
}
