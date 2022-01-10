package com.kendoui.spring.controllers.bottomnavigation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller("bottomnavigation-home-controller")
@RequestMapping(value="/bottomnavigation/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {   
        return "/bottomnavigation/index";
    }
}
