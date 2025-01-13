
package com.java.Model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Login { 
  public boolean check (String name, String password) throws SQLException {
   try        
   {
   Statement st;
   st = (Statement) DBconnect.dbconnect();
   boolean user= false;
   String sql="select Username, Password from user where BINARY Username='"+name+"'and BINARY Password='"+password+"'";//where clause
   ResultSet rs=st.executeQuery(sql);                   
   while(rs.next()){                        
           user=true;
           return user;                   
         }  
       //System.out.println("user not in database"+user);
   return user;
     }    
   catch(SQLException ex)
   {
       System.out.println(ex);
   }
        return false;
}
}
    
    

