package com.kendoui.spring.controllers.grid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("grid-foreignkeycolumnbinding-controller")
@RequestMapping(value="/grid/")
public class ForeignKeyColumnBindingController {
    
    @RequestMapping(value = "/foreignkeycolumnbinding", method = RequestMethod.GET)
    public String index() {
        return "grid/foreignkeycolumnbinding";
    }
      
}

