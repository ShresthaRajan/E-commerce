
package com.java.Model;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBconnect {
    public static Statement dbconnect() throws SQLException
            {
            Statement st=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                }
                catch(ClassNotFoundException e){
                      System.out.println(e);
                    }
                try{
                    Connection con= (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                   
                    st = (Statement) con.createStatement();
                }
                catch(SQLException e)
                {
                    
                    System.out.println(e);   
                }
        
        return st;
                
            }
}

