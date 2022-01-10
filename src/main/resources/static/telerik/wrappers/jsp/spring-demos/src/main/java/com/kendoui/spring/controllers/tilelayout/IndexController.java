package com.kendoui.spring.controllers.tilelayout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("tilelayout-home-controller")
@RequestMapping(value="/tilelayout/")
public class IndexController {

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "tilelayout/index";
    }
}