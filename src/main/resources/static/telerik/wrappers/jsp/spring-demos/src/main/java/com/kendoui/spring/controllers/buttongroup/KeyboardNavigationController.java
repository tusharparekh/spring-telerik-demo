package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-navigation-controller")
@RequestMapping(value="/buttongroup/")
public class KeyboardNavigationController {
    @RequestMapping(value = {"/", "/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/keyboard-navigation";
    }  
}
