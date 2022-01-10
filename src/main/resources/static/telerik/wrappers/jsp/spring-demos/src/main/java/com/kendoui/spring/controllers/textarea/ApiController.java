package com.kendoui.spring.controllers.textarea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textarea-api-controller")
@RequestMapping(value="/textarea/")
public class ApiController {

    @RequestMapping(value = {"api"}, method = RequestMethod.GET)
    public String index() {
        return "textarea/api";
    }
}