package com.kendoui.spring.controllers.dropdownlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.CustomerDao;
import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;


@Controller("dropdownlist-grouping-controller")
@RequestMapping(value="/dropdownlist/")
public class GroupingController {
    @Autowired 
    private CustomerDao customer;
    
    @RequestMapping(value = {"/grouping"}, method = RequestMethod.GET)
    public String index() {
        return "dropdownlist/grouping";
    }
    
    @RequestMapping(value = "/customers", method = RequestMethod.POST)
    public @ResponseBody DataSourceResult customers(@RequestBody DataSourceRequest request) {
        return customer.getList(request);
    }
}
