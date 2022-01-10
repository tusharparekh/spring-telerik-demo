package com.kendoui.spring.controllers.filter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("filter-operators-controller")
@RequestMapping(value="/filter/")
public class OperatorsController {
    @RequestMapping(value = {"/", "/operators"}, method = RequestMethod.GET)
    public String index() {
       
       return "filter/operators";
    }
}

