package com.kendoui.spring.controllers.imageeditor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("imageeditor-home-controller")
@RequestMapping(value="/imageeditor/")
public class IndexController {

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index() {
        return "imageeditor/index";
    }
}