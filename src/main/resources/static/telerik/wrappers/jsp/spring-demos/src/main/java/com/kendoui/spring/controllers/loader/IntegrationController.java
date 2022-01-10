package com.kendoui.spring.controllers.loader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.ProductDao;

@Controller("loader-integration-controller")
@RequestMapping(value="/loader/")
public class IntegrationController {
    @Autowired 
    private ProductDao product;
    
    @RequestMapping(value = { "/integration"}, method = RequestMethod.GET)
    public String index() {        

        
        return "loader/integration";
    }      
}