package com.kendoui.spring.controllers.datetimepicker;

import java.util.Date;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("datetimepicker-component-type-controller")
@RequestMapping(value="/datetimepicker/")
public class ComponentTypeController {
    
    @RequestMapping(value = {"/component-type"}, method = RequestMethod.GET)
    public String index(Model model) {    
        model.addAttribute("today", new Date());
        model.addAttribute("types", new String[] {
                "modern",
                "classic"
            });
        
        return "datetimepicker/component-type";
    }    
}