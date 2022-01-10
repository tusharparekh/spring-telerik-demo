package com.kendoui.spring.controllers.datepicker;

import java.util.Calendar;
import java.util.Date;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("datepicker-component-type-controller")
@RequestMapping(value="/datepicker/")
public class ComponentTypeController {
    
    @RequestMapping(value = {"/component-type"}, method = RequestMethod.GET)
    public String index(Model model) {   
        model.addAttribute("date", new Date());
        model.addAttribute("types", new String[] {
                "modern",
                "classic"
        });

        return "datepicker/component-type";
    }    
}