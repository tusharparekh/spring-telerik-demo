package com.kendoui.spring.controllers.daterangepicker;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("daterangepicker-api-controller")
@RequestMapping(value="/daterangepicker/")
public class ApiController {

    @RequestMapping(value = {"/api"}, method = RequestMethod.GET)
    public String index() {
        return "daterangepicker/api";
    }
}