package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-templates-controller")
@RequestMapping(value="/rating/")
public class TemplatesController {
    @RequestMapping(value = {"/", "/templates"}, method = RequestMethod.GET)
    public String index() {
        return "rating/templates";
    }
}
