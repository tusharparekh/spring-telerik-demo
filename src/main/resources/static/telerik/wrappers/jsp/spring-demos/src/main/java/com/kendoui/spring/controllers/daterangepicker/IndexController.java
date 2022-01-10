package com.kendoui.spring.controllers.daterangepicker;

import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("daterangepicker-home-controller")
@RequestMapping(value="/daterangepicker/")
public class IndexController {

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        Calendar cal = Calendar.getInstance();

        cal.set(2019,10,10);
        model.addAttribute("startDate", cal.getTime());
        cal.set(2019,10,15);
        model.addAttribute("endDate", cal.getTime());

        return "daterangepicker/index";
    }
}