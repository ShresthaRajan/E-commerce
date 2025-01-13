package com.java.Model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class vieworder {
    public static ArrayList<Orderbeans>displayorder() {        
     Statement st;
        try
        {
       st=DBconnect.dbconnect();
       ArrayList<Orderbeans>order= new ArrayList<Orderbeans>();
       String sql="select * from checkout_products";
       try{
           ResultSet rs=st.executeQuery(sql);             
           System.out.println(rs);      
    while(rs.next()){             
    order.add(new Orderbeans(rs.getInt("CPID"),rs.getString("Email"),rs.getString("FirstName"),rs.getString("LastName"),rs.getInt("Contact"),rs.getString("Address1"),rs.getString("Address2"),rs.getString("City"),rs.getString("State"),rs.getInt("Zip"),rs.getInt("Amount"),rs.getString("Product")));              
     }
      return order;
    }
       
      catch(SQLException e){
                   System.out.println(e);
                   }
    }
        catch(SQLException e)
        {
            System.out.println(e);
        }                 
 return null;     
}
}  
        

    

