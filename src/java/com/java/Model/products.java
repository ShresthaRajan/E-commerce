package com.java.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class products{
 public  static ArrayList<Cartbeans> carts(){    
   
  Statement st;
        try
        {
         st=DBconnect.dbconnect();
       ArrayList<Cartbeans> l= new ArrayList<Cartbeans>();
       String sql=("select * from cart");
            System.out.println("MY CART"+sql);
       try{
           ResultSet rs=st.executeQuery(sql);             
           System.out.println(rs);      
    while(rs.next()){             
    l.add(new Cartbeans(rs.getInt("CID"),rs.getString("Name"),rs.getInt("Price"),rs.getString("Quality"),rs.getString("Picture")));              
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
 
 public static void cartinsert(Cartbeans cb){
try
  {         
Statement st;
st=DBconnect.dbconnect(); 
String sql="insert into cart_item(ProductName,ProductPrice,ProductQuality,ProductQuantity) values('"+cb.getName()+"','"+(cb.getPrice())*(cb.getQuantity())+"','"+cb.getQuality()+"','"+cb.getQuantity()+"')";
st.executeUpdate(sql);           
}
 catch(SQLException e)
    {
        System.out.println(e);
    }
}   
public static ArrayList<Cartbeans>selected() {
        Statement st;
        try
        {
         st=DBconnect.dbconnect();
       ArrayList<Cartbeans> l= new ArrayList<Cartbeans>();
       String sql="select * from cart_item";
       try{
           ResultSet rs=st.executeQuery(sql);             
           System.out.println(rs);      
    while(rs.next()){             
    l.add(new Cartbeans(rs.getInt("PID"),rs.getString("ProductName"),rs.getInt("ProductPrice"),rs.getString("ProductQuality"),rs.getInt("ProductQuantity")));              
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
 public static int Count_Cart_items() throws ClassNotFoundException {
        
        try
  {           
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root",""); 
 Statement st=con.createStatement();
 String strQuery = "SELECT COUNT(*) FROM cart_item";
 ResultSet rs = st.executeQuery(strQuery);
int Count = 0;
while(rs.next()){
Count = rs.getInt(1);
    System.out.println("Total cart item"+""+Count);
      
} 
 return Count;
}
              catch(SQLException e)
        {
            System.out.println(e.getMessage());  
        }      
     return 0;  
    }

    public static List<Cartbeans>Add_cart() {        
     Statement st;          
        try
        {
         st=DBconnect.dbconnect();
       ArrayList<Cartbeans> l= new ArrayList<Cartbeans>();
       String sql="select * from cart_item";
       try{
           ResultSet rs=st.executeQuery(sql);             
           System.out.println(rs);      
    while(rs.next()){             
    l.add(new Cartbeans(rs.getInt("PID"),rs.getString("ProductName"),rs.getInt("ProductPrice"),rs.getString("ProductQuality"),rs.getInt("ProductQuantity")));              
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
    
    
     public static ArrayList<Cartbeans> cartss(){
    Statement st;
        try
        {
         st=DBconnect.dbconnect();
       ArrayList<Cartbeans> l= new ArrayList<Cartbeans>();
       String sql=("select * from cart");
            System.out.println("MY CART"+sql);
       try{
           ResultSet rs=st.executeQuery(sql);             
           System.out.println(rs);      
    while(rs.next()){             
    l.add(new Cartbeans(rs.getInt("CID"),rs.getString("Name"),rs.getInt("Price"),rs.getString("Quality"),rs.getString("Picture")));              
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

   
    

