
package com.java.Model;

public class Cartbeans {
    public int CID;
    public String name;
    public  int price;
    public String quality;
    public int quantity;
    public int PID;
    public String Picture;

    public int getPID() {
        return PID;
    }

    public Cartbeans(int CID, String name, int price, String quality, String Picture) {
        this.CID = CID;
        this.name = name;
        this.price = price;
        this.quality = quality;
        this.Picture = Picture;
    }
    

    public void setPID(int PID) {
        this.PID = PID;
    }

    public Cartbeans(int CID, String name, int price, String quality, int quantity) {
        this.CID = CID;
        this.name = name;
        this.price = price;
        this.quality = quality;
        this.quantity = quantity;
    }
     public Cartbeans(String name, int price,  int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }
    

    public Cartbeans(String name, int price, String quality, int quantity) {
        this.name = name;
        this.price = price;
        this.quality = quality;
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Cartbeans(int CID, String name, int price, String quality) {
        this.CID = CID;
        this.name = name;
        this.price = price;
        this.quality = quality;
    }

    public Cartbeans() {
    }

    public int getCID() {
        return CID;
    }

    public void setCID(int CID) {
        this.CID = CID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getPicture() {
        return Picture;
    }

    public void setPicture(String Picture) {
        this.Picture = Picture;
    }
    
    
}
