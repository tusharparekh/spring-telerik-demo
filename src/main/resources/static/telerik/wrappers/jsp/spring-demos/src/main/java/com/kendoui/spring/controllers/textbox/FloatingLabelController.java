package com.kendoui.spring.controllers.textbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textbox-floating-label-controller")
@RequestMapping(value="/textbox/")
public class FloatingLabelController {

    @RequestMapping(value = {"/floating-label"}, method = RequestMethod.GET)
    public String index() {
        return "textbox/floating-label";
    }
}