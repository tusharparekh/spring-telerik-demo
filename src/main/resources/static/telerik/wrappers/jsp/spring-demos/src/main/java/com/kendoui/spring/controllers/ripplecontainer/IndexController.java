package com.kendoui.spring.controllers.ripplecontainer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("ripplecontainer-home-controller")
@RequestMapping(value="/ripplecontainer/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("tools", new String[] {
         "moveUp", 
         "moveDown", 
         "transferTo", 
         "transferFrom", 
         "transferAllTo", 
         "transferAllFrom",
         "remove"
        });
        model.addAttribute("data", new String[] {
         "Steven White",
         "Nancy King",
         "Nancy Davolio",
         "Robert Davolio",
         "Michael Leverling",
         "Andrew Callahan",
         "Michael Suyama"
        });
        model.addAttribute("selected", new String[]{});
        return "ripplecontainer/index";
     }
}