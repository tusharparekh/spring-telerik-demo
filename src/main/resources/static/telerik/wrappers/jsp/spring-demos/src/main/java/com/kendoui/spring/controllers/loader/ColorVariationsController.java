package com.kendoui.spring.controllers.loader;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.DropDownListItem;
import com.kendoui.spring.models.ProductDao;

@Controller("loader-color-variations-controller")
@RequestMapping(value="/loader/")
public class ColorVariationsController {
    @Autowired 
    private ProductDao product;
    
    @RequestMapping(value = { "/color-variations"}, method = RequestMethod.GET)
    public String index(Model model) {        
        model.addAttribute("type", new DropDownListItem[] {
                new DropDownListItem("pulsing", "1"),
                new DropDownListItem("infinite-spinner", "2"),
                new DropDownListItem("converging-spinner", "3")
        });
        
        return "loader/color-variations";
    }      
}