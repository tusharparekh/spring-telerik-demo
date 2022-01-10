package com.kendoui.spring.controllers.tooltip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("tooltip-template-controller")
@RequestMapping(value="/tooltip/")
public class TemplateController {    
    
    @RequestMapping(value = {"/template"}, method = RequestMethod.GET)
    public String template() {
        return "tooltip/template";
    }
}

