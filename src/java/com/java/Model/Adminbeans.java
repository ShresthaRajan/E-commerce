
package com.java.Model;
public class Adminbeans {
    public String Admin_id;
    public String password;

    public Adminbeans(String Admin_id, String password) {
        this.Admin_id = Admin_id;
        this.password = password;
    }

    public String getAdmin_id(){
        return Admin_id;
    }

    public void setAdmin_id(String Admin_id) {
        this.Admin_id = Admin_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Adminbeans() {
    }
    
}
