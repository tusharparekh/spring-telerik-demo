package com.kendoui.spring.controllers.listview;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;

@Controller("listview-grouping-controller")
@RequestMapping(value="/listview/")
public class GroupingController {
    @Autowired 
    
    @RequestMapping(value = "/grouping", method = RequestMethod.GET)
    public String index() {        
        
        return "listview/grouping";
    }
}

