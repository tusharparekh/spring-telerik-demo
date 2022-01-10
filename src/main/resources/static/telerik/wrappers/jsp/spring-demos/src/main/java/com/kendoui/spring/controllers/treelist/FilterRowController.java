package com.kendoui.spring.controllers.treelist;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.EmployeeDirectory;
import com.kendoui.spring.models.EmployeeDirectoryDao;;

@Controller("treelist-filter-row")
@RequestMapping(value="/treelist/")
public class FilterRowController {
    @Autowired 
    private EmployeeDirectoryDao employeeDirectory;
    
    @RequestMapping(value = "/filter-row", method = RequestMethod.GET)
    public String index(Locale locale, Model model) {
        model.addAttribute("employees", employeeDirectory.getList());
        
        return "treelist/filter-row";
    }
    @RequestMapping(value = "filter-row/read", method = RequestMethod.GET)
    public @ResponseBody List<EmployeeDirectory> read() {
        return employeeDirectory.getList();
    }
}

