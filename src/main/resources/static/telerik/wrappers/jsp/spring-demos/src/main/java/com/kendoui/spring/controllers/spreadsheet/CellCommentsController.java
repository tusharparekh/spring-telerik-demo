package com.kendoui.spring.controllers.spreadsheet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller("spreadsheet-cellcomments-controller")
@RequestMapping(value="/spreadsheet/")
public class CellCommentsController {
    @RequestMapping(value = {"/cell-comments"}, method = RequestMethod.GET)
    public String index() {
        return "spreadsheet/cell-comments";
    }
}

