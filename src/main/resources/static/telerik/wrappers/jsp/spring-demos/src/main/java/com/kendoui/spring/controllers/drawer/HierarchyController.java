package com.kendoui.spring.controllers.drawer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("drawer-hierarchy-controller")
@RequestMapping(value="/drawer/")
public class HierarchyController {
    
    @RequestMapping(value = "/hierarchy", method = RequestMethod.GET)
    public String index() {
        return "drawer/hierarchy";
    }
}