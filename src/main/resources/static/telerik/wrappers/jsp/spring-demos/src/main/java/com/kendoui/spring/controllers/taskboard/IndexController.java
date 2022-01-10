package com.kendoui.spring.controllers.taskboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("taskboard-home-controller")
@RequestMapping(value="/taskboard/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "taskboard/index";
    }    
}