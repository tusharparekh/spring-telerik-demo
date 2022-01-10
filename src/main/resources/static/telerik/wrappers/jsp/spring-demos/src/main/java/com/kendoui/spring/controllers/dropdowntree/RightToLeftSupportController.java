package com.kendoui.spring.controllers.dropdowntree;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

import com.kendoui.spring.models.CategoryItem;
import com.kendoui.spring.models.TreeViewItem;

@Controller("dropdowntree-right-to-left-support-controller")
@RequestMapping(value="/dropdowntree/")

public class RightToLeftSupportController {
    
    @RequestMapping(value = {"/right-to-left-support"}, method = RequestMethod.GET)
    public String index(Model model) {                                  
        
        model.addAttribute("inline", getInlineData());
        return "dropdowntree/right-to-left-support";
    }     
    
    private List<CategoryItem> getInlineData()
    {
        List<CategoryItem> inlineData = new ArrayList<CategoryItem>();
        CategoryItem storage = new CategoryItem();
        inlineData.add(storage);
        storage.setCategoryName("Storage");
        storage.AddSubItem().setSubCategoryName("Wall Shelving");
        storage.AddSubItem().setSubCategoryName("Floor Shelving");
        storage.AddSubItem().setSubCategoryName("Kids Storage");
        
        CategoryItem lights = new CategoryItem();
        inlineData.add(lights);
        lights.setCategoryName("Lights");
        lights.AddSubItem().setSubCategoryName("Ceiling");
        lights.AddSubItem().setSubCategoryName("Table");
        lights.AddSubItem().setSubCategoryName("Floor");
        
        return inlineData;
    }        
}


