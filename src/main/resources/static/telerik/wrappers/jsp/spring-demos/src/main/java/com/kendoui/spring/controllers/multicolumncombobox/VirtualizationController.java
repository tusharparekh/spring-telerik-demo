package com.kendoui.spring.controllers.multicolumncombobox;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;
import com.kendoui.spring.models.OrderDao;


@Controller("multicolumncombobox-virtualization-controller")
@RequestMapping(value="/multicolumncombobox/")
public class VirtualizationController {
    @Autowired 
    private OrderDao order;
    
    @RequestMapping(value = {"/virtualization"}, method = RequestMethod.GET)
    public String index() {
        return "multicolumncombobox/virtualization";
    }
       
    @RequestMapping(value = "/orders", method = RequestMethod.POST)
    public @ResponseBody DataSourceResult customers(@RequestBody DataSourceRequest request) {
        return order.getList(request);
    }
}
