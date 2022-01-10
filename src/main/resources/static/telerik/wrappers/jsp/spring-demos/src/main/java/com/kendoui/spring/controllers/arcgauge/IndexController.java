package com.kendoui.spring.controllers.arcgauge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("dataviz-arc_gauge-home-controller")
@RequestMapping(value="/arc-gauge/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "/arc-gauge/index";
    }
}
