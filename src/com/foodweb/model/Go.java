package com.foodweb.model;



/**
 * Go entity. @author MyEclipse Persistence Tools
 */

public class Go  implements java.io.Serializable {


    // Fields    

     private Integer goId;
     private String foodname;
     private String customername;
     private String goCusTotal;
     private String goTime;


    // Constructors

    /** default constructor */
    public Go() {
    }

    
    /** full constructor */
    public Go(String foodname, String customername, String goCusTotal, String goTime) {
        this.foodname = foodname;
        this.customername = customername;
        this.goCusTotal = goCusTotal;
        this.goTime = goTime;
    }

   
    // Property accessors

    public Integer getGoId() {
        return this.goId;
    }
    
    public void setGoId(Integer goId) {
        this.goId = goId;
    }

    public String getFoodname() {
        return this.foodname;
    }
    
    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public String getCustomername() {
        return this.customername;
    }
    
    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getGoCusTotal() {
        return this.goCusTotal;
    }
    
    public void setGoCusTotal(String goMsg) {
        this.goCusTotal = goMsg;
    }

    public String getGoTime() {
        return this.goTime;
    }
    
    public void setGoTime(String goTime) {
        this.goTime = goTime;
    }
   








}