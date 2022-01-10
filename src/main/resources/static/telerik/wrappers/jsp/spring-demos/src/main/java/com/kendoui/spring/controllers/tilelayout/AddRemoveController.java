package com.kendoui.spring.controllers.tilelayout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("tilelayout-add-remove-controller")
@RequestMapping(value="/tilelayout/")
public class AddRemoveController {

    @RequestMapping(value = {"/", "/add-remove"}, method = RequestMethod.GET)
    public String index() {
        return "tilelayout/add-remove";
    }
}