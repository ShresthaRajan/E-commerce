<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.java.Model.CountBeanDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Details</title>
       <jsp:include page="Adminmenu.jsp"/>
     </head>
    <body>            
        <div class="container-fluid">
        <div class="container" style="margin-top:10%;padding-right:10%" >
        <h1>View all items</h1>  
        <table class="table table-striped">
         <thead>
          <tr>          
            <td>ID</td>
            <td>Item</td>
            <td>Price</td>
            <td>Quality</td>
            <td>Action</td>
          </tr>
         </thead>
      </tr>        
 <v:forEach items="${viewdata}" var="items">    
                <tr>                   
                <td>${items.cid}</td>
                <td>${items.name}</td>
                <td>${items.price}</td>
                <td>${items.quality}</td>  
                 <td><a href="${pageContext.request.contextPath}/admin/item/edit/${items.cid}">
                    Edit
                    </a>|<a href="${pageContext.request.contextPath}/admin/item/delete/${items.cid}">
                                Delete</a></td>
             </tr>
                
   </v:forEach>
 </table>     
<br>
 <a href="">       
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root",""); 
Statement st=con.createStatement();
String strQuery = "SELECT COUNT(*) FROM cart";
ResultSet rs = st.executeQuery(strQuery);
int Countrow;
while(rs.next()){
Countrow = rs.getInt(1);
out.println("Total Item:" +Countrow);
}
}
catch (Exception e){
e.printStackTrace();
}
%>    
</a> 
            </div>
 </div>
</body>
</html>
























