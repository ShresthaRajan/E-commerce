
package com.java.Model;

/**
 *
 * @author Rajan
 */

public class UserDao {
boolean type=false; 
String user;
    public String login(Userbeans ub) {       
    if((ub.getUsername().equals("Rajan"))&&(ub.getPassword().equals("shrestha")))
    {
        type = true; 
    }     
  return "Admin";
    }
}
