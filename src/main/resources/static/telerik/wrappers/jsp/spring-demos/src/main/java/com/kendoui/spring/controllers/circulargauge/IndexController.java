package com.kendoui.spring.controllers.circulargauge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("dataviz-circular_gauge-home-controller")
@RequestMapping(value="/circular-gauge/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "/circular-gauge/index";
    }
}
