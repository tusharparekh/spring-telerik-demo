package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-rtl-controller")
@RequestMapping(value="/rating/")
public class RightToLeftController {
    @RequestMapping(value = {"/", "/right-to-left-support"}, method = RequestMethod.GET)
    public String index() {
        return "rating/right-to-left-support";
    }
}
