package com.kendoui.spring.controllers.textarea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textarea-floating-label-controller")
@RequestMapping(value="/textarea/")
public class FloatingLabelController {

    @RequestMapping(value = {"/floating-label"}, method = RequestMethod.GET)
    public String index() {
        return "textarea/floating-label";
    }
}