package com.kendoui.spring.controllers.textarea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("textarea-rtl-controller")
@RequestMapping(value="/textarea/")
public class RightToLeftSupportController {

    @RequestMapping(value = {"/right-to-left-support"}, method = RequestMethod.GET)
    public String index() {
        return "textarea/right-to-left-support";
    }
}