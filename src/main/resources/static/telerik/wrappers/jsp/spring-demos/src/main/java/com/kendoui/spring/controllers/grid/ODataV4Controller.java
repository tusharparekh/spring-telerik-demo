package com.kendoui.spring.controllers.grid;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("grid-odatav4-controller")
@RequestMapping(value="/grid/")
public class ODataV4Controller {
    
    @RequestMapping(value = "/odatav4", method = RequestMethod.GET)
    public String index(Locale locale, Model model) {        
        return "grid/odatav4";
    }   
}