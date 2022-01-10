package com.kendoui.spring.controllers.arcgauge;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("dataviz-arc_gauge-circular-controller")
@RequestMapping(value="/arc-gauge/")
public class CircularController {
    @RequestMapping(value = "/circular", method = RequestMethod.GET)
    public String index() {
        return "/arc-gauge/circular";
    }
}
