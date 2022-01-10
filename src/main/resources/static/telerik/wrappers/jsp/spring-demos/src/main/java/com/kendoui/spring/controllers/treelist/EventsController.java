package com.kendoui.spring.controllers.treelist;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.EmployeeDirectory;
import com.kendoui.spring.models.EmployeeDirectoryDao;


@Controller("treelist-events-controller")
@RequestMapping(value="/treelist/")
public class EventsController {
    
    @Autowired 
    private EmployeeDirectoryDao employeeDirectory;
    
    @RequestMapping(value = "/events", method = RequestMethod.GET)
    public String index() {
        return "treelist/events";
    }
    
    @RequestMapping(value = "/events/read", method = RequestMethod.POST)
    public @ResponseBody List<EmployeeDirectory> read() {
        return employeeDirectory.getList();
    }
    
    @RequestMapping(value = "/events/update", method = RequestMethod.POST)
    public @ResponseBody EmployeeDirectory update(@RequestBody Map<String, Object> model) throws ParseException {
        EmployeeDirectory target = new EmployeeDirectory();
        
        SimpleDateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
        
        target.setEmployeeId((Integer)model.get("employeeId"));
        target.setFirstName((String)model.get("firstName"));
        target.setLastName((String)model.get("lastName"));
        target.setPosition((String)model.get("position"));
        target.setPhone((String)model.get("phone"));
        target.setExtension((int)model.get("extension"));
        target.setHireDate(iso8601.parse((String)model.get("hireDate")));
                
        employeeDirectory.saveOrUpdate(target);
        
        return target;
    }
    
    @RequestMapping(value = "/events/create", method = RequestMethod.POST)
    public @ResponseBody EmployeeDirectory create(@RequestBody Map<String, Object> model) throws ParseException {
        EmployeeDirectory target = new EmployeeDirectory();
        
        SimpleDateFormat iso8601 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        iso8601.setTimeZone(TimeZone.getTimeZone("UTC"));
        
        target.setFirstName((String)model.get("firstName"));
        target.setLastName((String)model.get("lastName"));
        target.setPosition((String)model.get("position"));
        target.setPhone((String)model.get("phone"));
        target.setExtension((int)model.get("extension"));                
        target.setReportsTo((Integer)model.get("reportsTo"));
        target.setHireDate(iso8601.parse((String)model.get("hireDate")));
        
        employeeDirectory.saveOrUpdate(target);
        
        return target;
    }
    
    @RequestMapping(value = "/events/destroy", method = RequestMethod.POST)
    public @ResponseBody EmployeeDirectory destroy(@RequestBody Map<String, Object> model) {
        EmployeeDirectory target = new EmployeeDirectory();
        
        target.setEmployeeId((Integer)model.get("employeeId"));
        
        employeeDirectory.delete(target);
        
        return target;
    }      
}

