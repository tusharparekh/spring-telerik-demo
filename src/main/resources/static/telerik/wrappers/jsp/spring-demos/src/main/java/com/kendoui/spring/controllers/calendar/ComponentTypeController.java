package com.kendoui.spring.controllers.calendar;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("calendar-component-type-controller")
@RequestMapping(value="/calendar/")
public class ComponentTypeController {
    
    @RequestMapping(value = {"/component-type"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("types", new String[] {
                "modern",
                "classic"
            });
        
        return "calendar/component-type";
    }    
}