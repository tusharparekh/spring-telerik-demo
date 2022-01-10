package com.kendoui.spring.controllers.grid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;
import com.kendoui.spring.models.OrderDao;

@Controller("pager-functionality-controller")
@RequestMapping(value="/grid/")
public class PagerFunctionalityController {

    @RequestMapping(value = "/pager-functionality", method = RequestMethod.GET)
    public String index() {
        return "grid/pager-functionality";
    }
}