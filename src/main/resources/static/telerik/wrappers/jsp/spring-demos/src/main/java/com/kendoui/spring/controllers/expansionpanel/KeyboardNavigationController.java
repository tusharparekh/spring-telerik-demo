package com.kendoui.spring.controllers.expansionpanel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("expansionpanel-navigation-controller")
@RequestMapping(value="/expansionpanel/")
public class KeyboardNavigationController {
    
    @RequestMapping(value = {"/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {       
        return "expansionpanel/keyboard-navigation";
    }    
}