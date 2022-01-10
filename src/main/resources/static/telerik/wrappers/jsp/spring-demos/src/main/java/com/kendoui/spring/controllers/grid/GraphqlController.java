package com.kendoui.spring.controllers.grid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.ProductDao;

@Controller("grid-graphql-controller")
@RequestMapping(value="/grid/")
public class GraphqlController {

    @RequestMapping(value = {"/graphql"}, method = RequestMethod.GET)
    public String index() {
        return "grid/graphql";
    }
}