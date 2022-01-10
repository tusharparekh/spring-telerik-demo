
package com.kendoui.spring.controllers.tilelayout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("tilelayout-reordering-controller")
@RequestMapping(value="/tilelayout/")
public class ReorderingController {
    @RequestMapping(value = {"/", "/reordering"}, method = RequestMethod.GET)
    public String index() {       
        return "tilelayout/reordering";
    }  
}