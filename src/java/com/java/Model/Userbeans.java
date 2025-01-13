package com.java.Model;

public class Userbeans {
    public String username;
    public String password;
    public int UID;

    
    public Userbeans() {
    }

    
    public Userbeans(int UID,String username,String password ) {
        this.username = username;
        this.password = password;
        this.UID = UID;
    }

  

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
    
    
}
