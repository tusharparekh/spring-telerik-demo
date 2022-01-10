package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-tooltip-controller")
@RequestMapping(value="/rating/")
public class TooltipController {
    @RequestMapping(value = {"/", "/tooltip"}, method = RequestMethod.GET)
    public String index() {
        return "rating/tooltip";
    }
}
