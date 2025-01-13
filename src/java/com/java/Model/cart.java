
package com.java.Model;
import java.sql.SQLException;
import java.sql.Statement;
public class cart {
    public static void delete(int Cid) {
    Statement st;
    try
    {
        
    st= DBconnect.dbconnect();  
    st = (Statement) DBconnect.dbconnect();
        System.out.println("st"+""+st);
        System.out.println("connection is Enter");
    String sql = "Delete  from cart_item where PID ='"+Cid+"'";
    st.execute(sql);
    System.out.println(sql);
  
    }
    catch(SQLException ex)
    {
      System.out.println(ex.getMessage());
    }    
}
    
}
