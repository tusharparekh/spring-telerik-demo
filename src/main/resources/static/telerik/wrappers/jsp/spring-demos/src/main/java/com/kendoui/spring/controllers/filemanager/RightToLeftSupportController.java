package com.kendoui.spring.controllers.filemanager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("filemanager-right-to-left-support-controller")
@RequestMapping(value="/filemanager/")
public class RightToLeftSupportController {
    
    @RequestMapping(value = {"/", "/right-to-left-support"}, method = RequestMethod.GET)
    public String index() {       
        return "filemanager/right-to-left-support";
    }    
}