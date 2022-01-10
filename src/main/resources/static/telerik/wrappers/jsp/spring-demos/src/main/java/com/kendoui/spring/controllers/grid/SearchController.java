package com.kendoui.spring.controllers.grid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("grid-search-controller")
@RequestMapping(value="/grid/")
public class SearchController {

    @RequestMapping(value = { "/search"}, method = RequestMethod.GET)
    public String index() {
        return "grid/search";
    }
}

