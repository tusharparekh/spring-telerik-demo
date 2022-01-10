
package com.kendoui.spring.controllers.tilelayout;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("tilelayout-resizing-controller")
@RequestMapping(value="/tilelayout/")
public class ResizingController {
    @RequestMapping(value = {"/", "/resizing"}, method = RequestMethod.GET)
    public String index() {       
        return "tilelayout/resizing";
    }  
}