package com.kendoui.spring.controllers.window;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("window-containment-controller")
@RequestMapping(value="/window/")
public class ConstrainMovementController {    
    
    @RequestMapping(value = {"/", "/constrain-movement"}, method = RequestMethod.GET)
    public String index() {
        return "window/constrain-movement";
    }
}

