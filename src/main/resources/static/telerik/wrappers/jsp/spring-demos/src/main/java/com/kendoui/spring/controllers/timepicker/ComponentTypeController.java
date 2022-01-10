package com.kendoui.spring.controllers.timepicker;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("timepicker-component-type-controller")
@RequestMapping(value="/timepicker/")
public class ComponentTypeController {
    
    @RequestMapping(value = {"/component-type"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("now", new Date());
        model.addAttribute("types", new String[] {
                "modern",
                "classic"
            });
            
        return "timepicker/component-type";
    }
}