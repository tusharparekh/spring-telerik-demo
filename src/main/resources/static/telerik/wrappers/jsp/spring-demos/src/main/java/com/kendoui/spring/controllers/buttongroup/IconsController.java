package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-icons-controller")
@RequestMapping(value="/buttongroup/")
public class IconsController {
    @RequestMapping(value = {"/", "/icons"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/icons";
    }  
}
