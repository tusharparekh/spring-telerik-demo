package com.kendoui.spring.controllers.form;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.text.SimpleDateFormat;

@Controller("form-home-controller")
@RequestMapping(value="/form/")
public class IndexController {
    public class FormModel {  
        private String Username;  
        private String Password; 
        private String Email; 
        private Date Birth;
        private Boolean Agree;
        
  
        
        public String getUsername() {  
            return Username;  
        }  
        public void setUsername(String name) {  
            this.Username = name;  
        }  
        
        public String getPassword() {  
            return Password;  
        }  
        public void setPassword(String password) {  
            this.Password = password;  
        }  
        public String getEmail() {  
            return Email;  
        }  
        public void setEmail(String email) {  
            this.Email = email;  
        } 
        
        public Date getBirth() {  
            return Birth;  
        }  
        public void setBirth(Date birthDate) {  
            this.Birth = birthDate;  
        } 
        
        public Boolean getAgree() {  
            return Agree;  
        }  
        public void setAgree(Boolean isAgreed) {  
            this.Agree = isAgreed;  
        } 
          
    }
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) { 
        
        FormModel form = new FormModel();
        form.Username = "";
        form.Password = "";
        form.Email = "";
        form.Birth = new Date();
        form.Agree = false;
        model.addAttribute("formData", form);
        
        return "form/index";
    }             
}