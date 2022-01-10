package com.kendoui.spring.controllers.scheduler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kendoui.spring.models.Meeting;
import com.kendoui.spring.models.MeetingDao;

@Controller("scheduler-selection-controller")
@RequestMapping(value="/scheduler/")
public class SelectionController {
    @Autowired 
    private MeetingDao meeting;
    
    @RequestMapping(value = "/selection", method = RequestMethod.GET)
    public String selection(Locale locale, Model model) {        
        return "scheduler/selection";
    }
}