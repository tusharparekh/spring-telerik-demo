package com.kendoui.spring.controllers.editor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("editor-format-painter-controller")
@RequestMapping(value="/editor/")
public class FormatPainterController {
    
    @RequestMapping(value = "/format-painter", method = RequestMethod.GET)
    public String index() {       
        return "editor/format-painter";
    }    
}