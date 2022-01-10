package com.kendoui.spring.controllers.switchbutton;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("switch-navigation-controller")
@RequestMapping(value="/switch/")
public class KeyboardNavigationController {
    @RequestMapping(value = {"/", "/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {       
        return "switch/keyboard-navigation";
    }  
}
