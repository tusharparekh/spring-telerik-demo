package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-precision-controller")
@RequestMapping(value="/rating/")
public class PrecisionController {
    @RequestMapping(value = {"/", "/precision"}, method = RequestMethod.GET)
    public String index() {
        return "rating/precision";
    }
}
