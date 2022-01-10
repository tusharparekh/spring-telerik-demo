package com.kendoui.spring.controllers.rangeareacharts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("dataviz-range_area_charts-home-controller")
@RequestMapping(value="/range-area-charts/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "/range-area-charts/index";
    }
}
