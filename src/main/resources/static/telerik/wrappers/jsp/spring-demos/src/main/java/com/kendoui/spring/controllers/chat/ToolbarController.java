package com.kendoui.spring.controllers.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("chat-toolbar-controller")
@RequestMapping(value="/chat/")
public class ToolbarController {
    
    @RequestMapping(value = {"/toolbar"}, method = RequestMethod.GET)
    public String index() {      
        return "chat/toolbar";
    }
}