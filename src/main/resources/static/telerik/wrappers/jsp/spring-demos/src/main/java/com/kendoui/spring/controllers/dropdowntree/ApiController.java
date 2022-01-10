package com.kendoui.spring.controllers.dropdowntree;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DetailedEmployee;
import com.kendoui.spring.models.EmployeeDao;

@Controller("dropdowntree-api-controller")
@RequestMapping(value="/dropdowntree/")

public class ApiController {
    
     @Autowired 
    private EmployeeDao employee;

    @RequestMapping(value = "/api", method = RequestMethod.GET)
    public String index() {
        return "dropdowntree/api";
    }
    
    @RequestMapping(value = "/api/read", method = RequestMethod.POST)
    public @ResponseBody List<DetailedEmployee> read(@RequestBody Map<String, Object> model) {
        return employee.getDetailedListByEmployeeId((Integer)model.get("employeeId"));
    }
}

