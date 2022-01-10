package com.kendoui.spring.controllers.badge;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("badge-labels-controller")
@RequestMapping(value="/badge/")
public class LabelsController {
    @RequestMapping(value = { "/labels"}, method = RequestMethod.GET)
    public String index(Model model) {
        ArrayList<Issue> data = new ArrayList<Issue>();
        data.add(new Issue(1, "Implement lazy loading", "opened 13 days ago by starku", "feature", false));        
        data.add(new Issue(2, "Scrolling freezes in IE 8", "opened 2 days ago by gink","bug", true ));        
        data.add(new Issue(3, "Keyboard navigation throws an exception",   "opened 1 days ago by toydivas", "bug", true));        
        data.add(new Issue(4,"Improve searching performance", "opened 12 days ago by peterC", "enhancement", false ));        
        data.add(new Issue(5, "Add documentation for lazy loading","opened 11 days ago by starku","documentation", true  ));
        model.addAttribute("data", data);
        
        return "/badge/labels";
    }
}