package com.kendoui.spring.controllers.badge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("badge-templates-controller")
@RequestMapping(value="/badge/")
public class TemplatesController {
    @RequestMapping(value = { "/templates"}, method = RequestMethod.GET)
    public String index() {
        
        return "/badge/templates";
    }
}