package com.kendoui.spring.controllers.floatingactionbutton;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("floatingactionbutton-home-controller")
@RequestMapping(value="/floatingactionbutton/")
public class IndexController {

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "floatingactionbutton/index";
    }
}