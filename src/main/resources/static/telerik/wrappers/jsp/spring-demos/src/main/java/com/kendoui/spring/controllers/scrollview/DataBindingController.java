package com.kendoui.spring.controllers.scrollview;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("scrollview-databinding-controller")
@RequestMapping(value="/scrollview/")
public class DataBindingController {
    
    @RequestMapping(value = {"/databinding"}, method = RequestMethod.GET)
    public String index() {       
        return "scrollview/databinding";
    }
}