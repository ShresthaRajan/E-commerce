<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>E-commerce</title>
 <style>
 table {
      width: 100%;
      font-size: 14px;
      color: black;
  }

  thead {
      background-color: #b0da7c;
      color: white;
  }

  th,td {
      text-align: center;
      border:1% ;
      border-bottom: 1px solid gray;
      height: 50px;
      border-right: 1px solid gray;
  }
 </style>  
    </head>    
 <body>
   <h3>Your Cart Items</h3>
   <div style="width:20%;float:left">       
        <e:out value="Welcome:
               You are Logged As :${sessionScope.user}">        
    </e:out>      
   </div>
   <div style="height:5%;color:blue; float:left"class="container-fluid">
 <%
 try
  {
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root",""); 
 Statement st=con.createStatement();
 String strQuery = "SELECT SUM(ProductPrice) FROM cart_item";
 ResultSet rs = st.executeQuery(strQuery);
 int price;
 while(rs.next()){
 price = rs.getInt(1);
 out.println("Total Cart Price:" +price);
 }
  }
  catch (Exception e){
  e.printStackTrace(); 
 }     
%>
   </div>
   
   <div style="height:auto" class="container-fluid">
    <section class="container-section">
        <table>
            <thead>
                <tr>
                 <th style="display:none">ID</th>
                   <th>Items</th>
                     <th>Price</th>
                      <th>Quality</th>
                       <th>Quantity</th>
                       <th>Action</th>
                   </tr>  
               </thead>
               <tbody>
       <v:forEach items="${cart_items}" var="items">
          <tr>                   
            <td style="display:none">${items.CID}</td>
              <td>${items.name}</td>
               <td>${items.price}</td>
               <td>${items.quality}</td> 
               <td>${items.quantity}
               <td><a href="${pageContext.request.contextPath}/user/cart/CheckOut/?value=${items.CID}">
                    CheckOut
                </a>|<a href="${pageContext.request.contextPath}/user/cart/Remove/?value=${items.CID}">                                Remove</a></td>
            </tr>                
       </v:forEach>
     <br>                   
     </tbody>
            </table> 
     
    </section> 
 
   <footer>
    <jsp:include page="footer.jsp"></jsp:include>
   </footer>
</body>
</html>

