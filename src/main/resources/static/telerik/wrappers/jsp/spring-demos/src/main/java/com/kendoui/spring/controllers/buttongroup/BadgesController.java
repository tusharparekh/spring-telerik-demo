package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-badges-controller")
@RequestMapping(value="/buttongroup/")
public class BadgesController {
    @RequestMapping(value = {"/", "/badges"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/badges";
    }  
}
