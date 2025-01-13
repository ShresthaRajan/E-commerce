
package com.java.Model;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Rajan
 */
public class CartDao {    
    Connection connection;
	Statement stmt;
	private int noOfRecords;
		
	public CartDao() { }
	
	private static Connection getConnection() 
			throws SQLException, 
				ClassNotFoundException 
	{
		Connection con = ConnectionFactory.
				getInstance().getConnection();
		return con;
	}
	
	public ArrayList<Cartbeans> viewAllCart(
				int offset, 
				int noOfRecords)
	{
		String query = "select * from cart ";
				
                System.out.println("Query"+query);
		ArrayList<Cartbeans> list = new ArrayList<Cartbeans>();
		Cartbeans cr = null;
		try {
			connection = getConnection();
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				cr = new Cartbeans();             
				cr.setCID(rs.getInt("CID"));
				cr.setName(rs.getString("Name"));
				cr.setPrice(rs.getInt("Price"));
				cr.setQuality(rs.getString("Quality"));
				list.add(cr);
                             
			}
			rs.close();
			
			rs = stmt.executeQuery("SELECT FOUND_ROWS()");
			if(rs.next())
				this.noOfRecords = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally
		{
			try {
				if(stmt != null)
					stmt.close();
				if(connection != null)
					connection.close();
				} catch (SQLException e) {
				e.printStackTrace();
			}
		}
                System.out.println(list);
		return list;
	}

	public int getNoOfRecords() {
		return noOfRecords;
	}    
}
