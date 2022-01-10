package com.kendoui.spring.controllers.numerictextbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("numerictextbox-floating-label-controller")
@RequestMapping(value="/numerictextbox/")
public class FloatingLabelController {

    @RequestMapping(value = {"/floating-label"}, method = RequestMethod.GET)
    public String index() {
        return "numerictextbox/floating-label";
    }
}