package com.kendoui.spring.controllers.pdfviewer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("pdfviewer-home-controller")
@RequestMapping(value="/pdfviewer/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {       
        return "pdfviewer/index";
    }    
}