package com.kendoui.spring.controllers.filemanager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("filemanager-api-controller")
@RequestMapping(value="/filemanager/")
public class ApiController {
    
    @RequestMapping(value = {"/", "/api"}, method = RequestMethod.GET)
    public String index() {       
        return "filemanager/api";
    }    
}