package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-api-controller")
@RequestMapping(value="/rating/")
public class ApiController {
    @RequestMapping(value = {"/", "/api"}, method = RequestMethod.GET)
    public String index() {
        return "rating/api";
    }
}
