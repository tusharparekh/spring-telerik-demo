package com.kendoui.spring.controllers.maskedtextbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("maskedtextbox-floating-label-controller")
@RequestMapping(value="/maskedtextbox/")
public class FloatingLabelController {

    @RequestMapping(value = {"/floating-label"}, method = RequestMethod.GET)
    public String index() {
        return "maskedtextbox/floating-label";
    }
}