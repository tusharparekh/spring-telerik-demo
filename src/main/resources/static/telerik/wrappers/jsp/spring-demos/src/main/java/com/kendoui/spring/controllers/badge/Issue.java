package com.kendoui.spring.controllers.badge;

public class Issue{
   private int id;
   private String title;
   private String additionalInfo;
   private String type;
   private boolean approved;
   
   public Issue(int id, String title, String additionalInfo, String type, boolean approved) {
       this.id = id;
       this.title = title;
       this.additionalInfo = additionalInfo;
       this.type = type;
       this.approved = approved;
   }
   
   public Issue(){
   }
   
   public int getId() {
       return id;
   }
   
   public String getTitle() {
       return title;
   }
   
   public String getAdditionalInfo() {
       return additionalInfo;
   }
   
   public String getType() {
       return type;
   }
   
   public boolean getApproved() {
       return approved;
   }
   

}