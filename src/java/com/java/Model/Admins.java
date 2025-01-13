
package com.java.Model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Admins{
      public static ArrayList<Adminbeans>login(Adminbeans AB){
   try
       {        
   Statement st=DBconnect.dbconnect();
   String Sql="SELECT * from admin where username='"+AB.getAdmin_id()+"'and password='"+AB.getPassword()+"'";
   ArrayList<Adminbeans>l=new ArrayList<>();
   ResultSet rs=st.executeQuery(Sql);   
   while(rs.next())
   {
       l.add(new Adminbeans(rs.getString("username"),rs.getString("password")));
   }   
   return l;
       }catch(SQLException e)
       {
           System.out.println(e.getMessage());
       }
    
   return null;
    } 
}
