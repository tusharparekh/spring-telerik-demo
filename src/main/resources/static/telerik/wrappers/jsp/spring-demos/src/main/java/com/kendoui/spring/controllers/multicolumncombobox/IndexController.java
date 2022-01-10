package com.kendoui.spring.controllers.multicolumncombobox;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.DropDownListItem;

@Controller("multicolumncombobox-home-controller")
@RequestMapping(value="/multicolumncombobox/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("fabrics", new DropDownListItem[] {
                new DropDownListItem("Cotton", "1"),
                new DropDownListItem("Polyester", "2"),
                new DropDownListItem("Cotton/Polyester", "3"),
                new DropDownListItem("Rib Knit", "4")
        });
        
        model.addAttribute("sizes", new DropDownListItem[] {
            new DropDownListItem("X-Small","XS"),
            new DropDownListItem("Small","S"),
            new DropDownListItem("Medium","M"),
            new DropDownListItem("Large","L"),
            new DropDownListItem("X-Large","XL"),
            new DropDownListItem("2X-Large", "XXL")
        });
        
        return "multicolumncombobox/index";
    }    
}