
package com.java.Model;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class view {
    public static ArrayList<Beans> display()
    {
      Statement st;
        try
        {
         st=DBconnect.dbconnect();
       ArrayList<Beans> l= new ArrayList<Beans>();
       String sql="select * from cart";
       try{
           ResultSet rs=st.executeQuery(sql);             
           System.out.println(rs);      
    while(rs.next()){             
    l.add(new Beans(rs.getInt("CID"),rs.getString("Name"),rs.getInt("Price"),rs.getString("Quality")));           
   
     }

     System.out.println(l);
      return l;
    }
       
      catch(SQLException e){
                   System.out.println(e);
                   }
    }
        catch(SQLException e)
        {
            System.out.println(e);
        }            
      return  null;
      
}
}


