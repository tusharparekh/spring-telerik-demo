package com.kendoui.spring.controllers.grid;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.Customer;
import com.kendoui.spring.models.CustomerDao;

@Controller("grid-basic-usage-controller")
@RequestMapping(value="/grid/")
public class BasicUsageController {
    @Autowired 
    private CustomerDao customer;
    
    @RequestMapping(value = {"/","/basic-usage"}, method = RequestMethod.GET)
    public String index() {
        return "grid/basic-usage";
    }
    
    @RequestMapping(value = "/customers", method = RequestMethod.GET)
    public @ResponseBody List<Customer> customers() {
        return customer.getList();
    }
}

