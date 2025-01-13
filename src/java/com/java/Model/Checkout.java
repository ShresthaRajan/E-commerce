package com.java.Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Rajan
 */
public class Checkout {
       public ArrayList<Cartbeans> view(int cid) throws SQLException {
           Statement st;
    st=DBconnect.dbconnect();
    try
    {   
        ArrayList<Cartbeans>l=new ArrayList<Cartbeans>();
        String sql="Select ProductName,ProductPrice,ProductQuantity from cart_item where PID ='"+cid+"'";
        System.out.println(sql); 
        
        ResultSet rs= st.executeQuery(sql);                
    while(rs.next())                        
        {
           String Name= rs.getString("ProductName");
           int Price= rs.getInt("ProductPrice");
           int quantity=rs.getInt("ProductQuantity");
          l.add(new Cartbeans(Name,Price,quantity));
        } 
    return l;
   }    
    catch(SQLException ex)
    {
        System.out.println(ex.getMessage());
    }
     return null;
    }   
}

