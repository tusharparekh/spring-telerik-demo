package com.kendoui.spring.controllers.grid;

import java.util.List;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.kendoui.spring.models.Customer;
//import com.kendoui.spring.models.CustomerDao;
import com.kendoui.spring.models.Category;
import com.kendoui.spring.models.Country;


@Controller("grid-home-controller")
@RequestMapping(value="/grid/")
public class IndexController {
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        Category defaultCategory = new Category();
        defaultCategory.setCategoryId(8);
        defaultCategory.setCategoryName("Seafood");
        model.addAttribute("defaultCategory", defaultCategory);
        
        Country defaultCountry = new Country();
        defaultCountry.setCountryNameShort("bg");
        defaultCountry.setCountryNameLong("Bulgaria");
        model.addAttribute("defaultCountry", defaultCountry);
        
        Dictionary dict = new Hashtable();
        dict.put("class", "checkbox-align");
        model.addAttribute("myAttributes", dict);
        
        return "grid/index";
    }
    
    //@RequestMapping(value = "/customers", method = RequestMethod.GET)
    //public @ResponseBody List<Customer> customers() {

        //return customer.getList();
   // }
}

