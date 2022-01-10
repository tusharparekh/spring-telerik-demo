package com.kendoui.spring.controllers.treelist;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.DetailedEmployeeDirectory;
import com.kendoui.spring.models.EmployeeDirectoryDao;


@Controller("treelist-multicolumnheaders-controller")
@RequestMapping(value="/treelist/")
public class MulticolumnheadersController {
    
    @Autowired
    private EmployeeDirectoryDao employeeDirectory;

    @RequestMapping(value = {"/multicolumnheaders"}, method = RequestMethod.GET)
    public String index() {
        return "treelist/multicolumnheaders";
    }

    @RequestMapping(value = "/multicolumnheaders/read", method = RequestMethod.POST)
    public @ResponseBody List<DetailedEmployeeDirectory> read(@RequestBody Map<String, Object> model) {
        return employeeDirectory.getByEmployeeId((Integer)model.get("id"));
    }
}

