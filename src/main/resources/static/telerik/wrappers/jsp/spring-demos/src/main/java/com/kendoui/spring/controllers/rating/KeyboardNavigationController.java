package com.kendoui.spring.controllers.rating;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("rating-navigation-controller")
@RequestMapping(value="/rating/")
public class KeyboardNavigationController {
    @RequestMapping(value = {"/", "/keyboard-navigation"}, method = RequestMethod.GET)
    public String index() {
        return "rating/keyboard-navigation";
    }
}
