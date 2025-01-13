/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rajan
 */
public class CountBeanDao {
    public int count() throws SQLException {            
      Statement st=DBconnect.dbconnect();
      ResultSet r = st.executeQuery("SELECT COUNT(*) from item");
      int count = r.getInt(1);
     return count;
    }
  
    
}
