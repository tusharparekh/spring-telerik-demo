package com.kendoui.spring.controllers.switchbutton;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("switch-rtl-controller")
@RequestMapping(value="/switch/")
public class RightToLeftSupportController {
    @RequestMapping(value = {"/", "/right-to-left-support"}, method = RequestMethod.GET)
    public String index() {       
        return "switch/right-to-left-support";
    }  
}
