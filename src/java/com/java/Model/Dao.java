package com.java.Model;

import java.sql.SQLException;
import java.sql.Statement;

public class Dao {
    public static void Insert(Beans c)
   {
    Statement st;
    try{ 
    st = (Statement) DBconnect.dbconnect();
    String sql ="insert into cart(Name,Price,Quality) values('"+c.getName()+
           "', "+c.getPrice()+", '"+c.getQuality()+"')";
    System.out.println(sql);
   
      st.executeUpdate(sql);
  //st.close();
    }
        catch(SQLException e)
        {
            System.out.println(e);
        }
      
    }
     /*Inserting Images into database*/
    
    /*
    public static void Imageset(FileInputStream fis) {
  try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con= (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");    
      PreparedStatement st =con.prepareStatement("insert into cart(Image) values(?)");
      st.setBinaryStream(4, fis);
      st.executeUpdate();  
      
      
    }catch(Exception e)
    {
        System.out.println(e.getMessage());
    }
} */
    
}
      
    
    

