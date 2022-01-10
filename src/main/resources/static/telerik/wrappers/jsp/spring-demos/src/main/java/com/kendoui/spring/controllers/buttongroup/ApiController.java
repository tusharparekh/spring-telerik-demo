package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-api-controller")
@RequestMapping(value="/buttongroup/")
public class ApiController {
    @RequestMapping(value = {"/", "/api"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/api";
    }  
}
