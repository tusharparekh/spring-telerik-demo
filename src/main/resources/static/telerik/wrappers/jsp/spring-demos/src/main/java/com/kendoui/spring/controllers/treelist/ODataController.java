package com.kendoui.spring.controllers.treelist;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("treelist-odata-controller")
@RequestMapping(value="/treelist/")
public class ODataController {
 
    @RequestMapping(value = "/odata", method = RequestMethod.GET)
    public String index(Locale locale, Model model) {        
        return "treelist/odata";
    }
}
