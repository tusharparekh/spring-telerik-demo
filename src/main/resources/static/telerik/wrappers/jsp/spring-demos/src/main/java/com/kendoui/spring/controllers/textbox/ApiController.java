package com.kendoui.spring.controllers.textbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textbox-api-controller")
@RequestMapping(value="/textbox/")
public class ApiController {

    @RequestMapping(value = {"api"}, method = RequestMethod.GET)
    public String index() {
        return "textbox/api";
    }
}