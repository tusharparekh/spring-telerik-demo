package com.kendoui.spring.controllers.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("chat-healthcare-controller")
@RequestMapping(value="/chat")
public class HealthCareController {
    
    @RequestMapping(value = {"healthcare"}, method = RequestMethod.GET)
    public String index() {       
        return "chat/healthcare";
    }    
}