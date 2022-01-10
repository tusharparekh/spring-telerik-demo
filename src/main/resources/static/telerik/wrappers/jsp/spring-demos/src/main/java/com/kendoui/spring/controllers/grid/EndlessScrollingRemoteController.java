package com.kendoui.spring.controllers.grid;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("endless-scrolling-remote-controller")
@RequestMapping(value="/grid/")
public class EndlessScrollingRemoteController {
    
    @RequestMapping(value = "/endless-scrolling-remote", method = RequestMethod.GET)
    public String index() {
        return "grid/endless-scrolling-remote";
    }
}
