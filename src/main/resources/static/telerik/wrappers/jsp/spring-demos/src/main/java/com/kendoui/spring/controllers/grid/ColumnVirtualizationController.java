package com.kendoui.spring.controllers.grid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DataSourceRequest;
import com.kendoui.spring.models.DataSourceResult;

@Controller("grid-column-virtualization-controller")
@RequestMapping(value="/grid/")
public class ColumnVirtualizationController {

    @RequestMapping(value = "/column-virtualization", method = RequestMethod.GET)
    public String index() {        
        return "grid/column-virtualization";
    }
}

