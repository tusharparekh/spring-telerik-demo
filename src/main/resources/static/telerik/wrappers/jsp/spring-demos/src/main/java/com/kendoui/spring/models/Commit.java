package com.kendoui.spring.models;

import java.util.Date;

public class Commit {
    private String name;
    private Date date;
    private int count;
    
    public Commit(String name, Date date, int count)
    {
        this.name = name;
        this.date = date;
        this.count = count;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public Date getDate() {
        return date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    
    public int getCount() {
        return count;
    }
    
    public void setCount(int count) {
        this.count = count;
    }
}
