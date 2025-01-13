package com.java.Model;
public class Beans {    
    private int cid;
    private String name;
    private int price;
    private String quality;
    private int Int;
    //private byte[] image;
 public Beans(int cid, String name, int price, String quality, int Int, byte[] image) {
        this.cid = cid;
        this.name = name;
        this.price = price;
        this.quality = quality;
        this.Int = Int;
        //this.image = image;
    }
 public byte[] getImage(){
       // return image;
       return null;
    }

 public void setImage(byte[] image) {
        //this.image = image;
    }

public Beans(int cid, String name, int price, String Customer) {
        this.cid = cid;
        this.name = name;
        this.price = price;
        this.quality = Customer;
    }

public Beans() {
    }

public int getCid() {
        return cid;
    }
 public void setCid(int cid) {
        this.cid = cid;
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

 public int getInt() {
        return Int;
    }

 public void setInt(int Int) {
        this.Int = Int;
    }  
}
