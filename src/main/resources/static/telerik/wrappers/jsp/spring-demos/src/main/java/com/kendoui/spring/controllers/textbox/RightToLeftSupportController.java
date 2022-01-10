package com.kendoui.spring.controllers.textbox;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textbox-rtl-controller")
@RequestMapping(value="/textbox/")
public class RightToLeftSupportController {

    @RequestMapping(value = {"/right-to-left-support"}, method = RequestMethod.GET)
    public String index() {
        return "textbox/right-to-left-support";
    }
}