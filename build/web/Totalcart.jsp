<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
    </head>
    <body>
        <h1>Total Data</h1>       
          
 <a href="">  
  <%
   try
   {
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root",""); 
   Statement st=con.createStatement();
   String Query = "SELECT COUNT(*) FROM cart_item";
   ResultSet rs = st.executeQuery(Query);
   int Countrow;
   while(rs.next()){
   Countrow = rs.getInt(1);
   while(Countrow >0)  
  {
    session.setAttribute("t",Countrow);
         RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
         rd.forward(request, response);  
  }
  }
  }
  catch (Exception e){
  e.printStackTrace();
  }
 %>
 </body>
</html>