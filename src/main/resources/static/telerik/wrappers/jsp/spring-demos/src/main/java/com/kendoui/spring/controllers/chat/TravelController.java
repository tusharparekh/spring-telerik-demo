package com.kendoui.spring.controllers.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("chat-travel-controller")
@RequestMapping(value="/chat/")
public class TravelController {
    
    @RequestMapping(value = {"/travel"}, method = RequestMethod.GET)
    public String index() {       
        return "chat/travel";
    }    
}