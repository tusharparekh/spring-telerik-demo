package com.kendoui.spring.controllers.listview;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;
import com.kendoui.spring.models.ProductDao;

@Controller("listview-endless-scrolling-controller")
@RequestMapping(value="/listview/")
public class EndlessScrollingController {
    @Autowired 
    private ProductDao product;
    
    @RequestMapping(value = "/endless-scrolling", method = RequestMethod.GET)
    public String index() {        
        
        return "listview/endless-scrolling";
    }
    
    @RequestMapping(value = "/endless-products", method = RequestMethod.POST)
    public @ResponseBody DataSourceResult products(@RequestBody DataSourceRequest request) {

        return product.getList(request);
    }
}

