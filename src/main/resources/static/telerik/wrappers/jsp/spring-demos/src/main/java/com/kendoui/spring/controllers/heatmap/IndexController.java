package com.kendoui.spring.controllers.heatmap;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.Commit;

@Controller("dataviz-heatmap-home-controller")
@RequestMapping(value="/heatmap/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        
        List<Commit> data = new ArrayList<Commit>();
        data.add(new Commit("Cully", new Date(2021, 7, 7), 4));
        data.add(new Commit("Cully", new Date(2021, 7, 6), 20));
        data.add(new Commit("Cully", new Date(2021, 7, 5), 11));
        data.add(new Commit("Cully", new Date(2021, 7, 4), 8));
        data.add(new Commit("Cully", new Date(2021, 7, 3), 15));
        data.add(new Commit("Cully", new Date(2021, 7, 2), 14));
        data.add(new Commit("Cully", new Date(2021, 7, 1), 3));
        data.add(new Commit("Maria", new Date(2021, 7, 7), 8));
        data.add(new Commit("Maria", new Date(2021, 7, 6), 5));
        data.add(new Commit("Maria", new Date(2021, 7, 5), 13));
        data.add(new Commit("Maria", new Date(2021, 7, 4), 14));
        data.add(new Commit("Maria", new Date(2021, 7, 3), 15));
        data.add(new Commit("Maria", new Date(2021, 7, 2), 2));
        data.add(new Commit("Maria", new Date(2021, 7, 1), 4));
        data.add(new Commit("Idell", new Date(2021, 7, 7), 15));
        data.add(new Commit("Idell", new Date(2021, 7, 6), 1));
        data.add(new Commit("Idell", new Date(2021, 7, 5), 4));
        data.add(new Commit("Idell", new Date(2021, 7, 4), 19));
        data.add(new Commit("Idell", new Date(2021, 7, 3), 7));
        data.add(new Commit("Idell", new Date(2021, 7, 2), 17));
        data.add(new Commit("Idell", new Date(2021, 7, 1), 12));
        data.add(new Commit("Joe", new Date(2021, 7, 7), 7));
        data.add(new Commit("Joe", new Date(2021, 7, 6), 17));
        data.add(new Commit("Joe", new Date(2021, 7, 5), 4));
        data.add(new Commit("Joe", new Date(2021, 7, 4), 9));
        data.add(new Commit("Joe", new Date(2021, 7, 3), 24));
        data.add(new Commit("Joe", new Date(2021, 7, 2), 4));
        data.add(new Commit("Joe", new Date(2021, 7, 1), 6));
        data.add(new Commit("Boyd", new Date(2021, 7, 7), 3));
        data.add(new Commit("Boyd", new Date(2021, 7, 6), 20));
        data.add(new Commit("Boyd", new Date(2021, 7, 5), 6));
        data.add(new Commit("Boyd", new Date(2021, 7, 4), 4));
        data.add(new Commit("Boyd", new Date(2021, 7, 3), 11));
        data.add(new Commit("Boyd", new Date(2021, 7, 2), 0));
        data.add(new Commit("Boyd", new Date(2021, 7, 1), 19));
        data.add(new Commit("Curtis", new Date(2021, 7, 7), 20));
        data.add(new Commit("Curtis", new Date(2021, 7, 6), 13));
        data.add(new Commit("Curtis", new Date(2021, 7, 5), 7));
        data.add(new Commit("Curtis", new Date(2021, 7, 4), 12));
        data.add(new Commit("Curtis", new Date(2021, 7, 3), 1));
        data.add(new Commit("Curtis", new Date(2021, 7, 2), 16));
        data.add(new Commit("Curtis", new Date(2021, 7, 1), 16));
        data.add(new Commit("Tom", new Date(2021, 7, 7), 4));
        data.add(new Commit("Tom", new Date(2021, 7, 6), 3));
        data.add(new Commit("Tom", new Date(2021, 7, 5), 19));
        data.add(new Commit("Tom", new Date(2021, 7, 4), 2));
        data.add(new Commit("Tom", new Date(2021, 7, 3), 21));
        data.add(new Commit("Tom", new Date(2021, 7, 2), 10));
        data.add(new Commit("Tom", new Date(2021, 7, 1), 7));       

        model.addAttribute("data", data);
        
        return "/heatmap/index";
    }
}
