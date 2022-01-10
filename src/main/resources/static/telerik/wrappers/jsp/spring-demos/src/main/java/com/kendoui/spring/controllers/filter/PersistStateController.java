package com.kendoui.spring.controllers.filter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("filter-persist-state-controller")
@RequestMapping(value="/filter/")
public class PersistStateController {
    
    @RequestMapping(value = {"/", "/persist-state"}, method = RequestMethod.GET)
    public String index() {
        return "filter/persist-state";
    }
    
}

