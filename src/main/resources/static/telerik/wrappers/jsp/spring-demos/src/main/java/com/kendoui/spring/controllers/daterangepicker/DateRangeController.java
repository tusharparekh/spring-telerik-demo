package com.kendoui.spring.controllers.daterangepicker;

import java.util.Calendar;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("daterangepicker-date-range-controller")
@RequestMapping(value="/daterangepicker/")
public class DateRangeController {

    @RequestMapping(value = {"/date-range"}, method = RequestMethod.GET)
    public String index(Model model) {
        Calendar start = Calendar.getInstance();
        model.addAttribute("startDate", start.getTime());
        Calendar end = Calendar.getInstance();
        end.add(Calendar.DATE, 10);
        model.addAttribute("endDate", end.getTime());

        return "daterangepicker/date-range";
    }
}