package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-home-controller")
@RequestMapping(value="/buttongroup/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/index";
    }  
}
