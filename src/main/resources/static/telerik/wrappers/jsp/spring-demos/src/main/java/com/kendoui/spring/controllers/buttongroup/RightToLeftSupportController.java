package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-rtl-controller")
@RequestMapping(value="/buttongroup/")
public class RightToLeftSupportController {
    @RequestMapping(value = {"/", "/right-to-left-support"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/right-to-left-support";
    }  
}
