package com.kendoui.spring.controllers.switchbutton;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("switch-api-controller")
@RequestMapping(value="/switch/")
public class ApiController {
    @RequestMapping(value = {"/", "/api"}, method = RequestMethod.GET)
    public String index() {       
        return "switch/api";
    }  
}
