package com.kendoui.spring.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class Country{
    
    public byte countryID;
    public String countryNameShort;
    public String countryNameLong;
   
    @Id
    @Column(name="CountryID")
    public int getCountryID() {
        return countryID;
    }

    public void setCountryID(byte countryID) {
        this.countryID = countryID;
    }

    @Column(name="CountryNameShort")
    public String getCountryNameShort() {
        return countryNameShort;
    }

    public void setCountryNameShort(String countryNameShort) {
        this.countryNameShort = countryNameShort;
    }

    @Column(name="CountryNameLong")
    public String getCountryNameLong() {
        return countryNameLong;
    }

    public void setCountryNameLong(String countryNameLong) {
        this.countryNameLong = countryNameLong;
    }
}
