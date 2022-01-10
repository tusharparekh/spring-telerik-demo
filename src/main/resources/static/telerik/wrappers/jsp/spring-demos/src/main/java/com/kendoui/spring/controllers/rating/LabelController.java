package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-label-controller")
@RequestMapping(value="/rating/")
public class LabelController {
    @RequestMapping(value = {"/", "/label"}, method = RequestMethod.GET)
    public String index() {
        return "rating/label";
    }
}