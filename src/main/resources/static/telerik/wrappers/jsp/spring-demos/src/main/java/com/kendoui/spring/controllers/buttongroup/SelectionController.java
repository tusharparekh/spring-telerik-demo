package com.kendoui.spring.controllers.buttongroup;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("buttongroup-selection-controller")
@RequestMapping(value="/buttongroup/")
public class SelectionController {
    @RequestMapping(value = {"/", "/selection"}, method = RequestMethod.GET)
    public String index() {       
        return "buttongroup/selection";
    }  
}
