package com.kendoui.spring.controllers.appbar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("appbar-position-controller")
@RequestMapping(value="/appbar/")
public class PositionController {
    
   @RequestMapping(value = "/position", method = RequestMethod.GET)
    public String index() {
        return "/appbar/position";
    }
}
