package com.kendoui.spring.controllers.treelist;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.EmployeeDirectoryDao;;

@Controller("treelist-checkbox-selection-controller")
@RequestMapping(value="/treelist/")
public class CheckboxSelectionController {
    @Autowired 
    private EmployeeDirectoryDao employeeDirectory;
    
    @RequestMapping(value = "/checkbox-selection", method = RequestMethod.GET)
    public String index(Locale locale, Model model) {
        model.addAttribute("employees", employeeDirectory.getList());
        
        return "treelist/checkbox-selection";
    }
}