<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="e"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>      
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>E-commerce</title>
   <link href="<c:url value="/css/bootstrap.css"/>" type="text/css" rel="stylesheet">
   <style>
   .cart{
    width:300px;
    height: 120px;
    border: 1px solid blue;
    box-sizing: border-box;
    float:left;
    margin-left: 20px;
    margin-bottom:30px;
    }        
   .section
    {
        width:975px;
        float:left;        
    } 
    .eout
    {
        background-color:#434343;
        color:whitesmoke;
        height:60px;
        padding-top: 20px;
    }    
  </style>
  </head>
  <body>            
<div class="eout">
    <e:out value="Welcome:
    You are Logged As :${sessionScope.user}">        
    </e:out>
 <div> 
 <a href="${pageContext.request.contextPath}/user/item/cart">Your Cart:</a>
   <e:out value="${sessionScope.total}"></e:out>  
 </div>
</div>   
<div class="container">
 <div class="row" style="float:right">  
<form class=".form"  >
  <label>Search By:</label>
    <select name="select"> 
        <option value="Means">Means</option>
        <option value="Kids">Kids</option>
        <option value="Sports">Sports</option>
        <option value="North Face">North Face</option>
        <option value="Paints">Paints</option> 
   </select>
<button type="submit" name="search" value="search" class="btn btn-default">OK</> 
</div>
</div>
 </form>    
 <h1 text-align="center">Add to cart</h1> 
 <section class="section">
 <v:forEach items="${cart}" var="cart"> 
 <div class="cart">
 <div class="container">
 <div class="row">  
 <div class="col-md-4">
 <form method="POST" action="${pageContext.request.contextPath}/admin/item/addcart"> 
 <input type="hidden" name="CID" value="${cart.CID}"</label>
 <label>Product Name:${cart.name}</label>
 <input type="hidden" name="Name" value="${cart.name}"><br>
 <label>Product Price:${cart.price}</label>
 <input type="hidden" name="Price" value="${cart.price}"></br>
 <label>Product Quality:${cart.quality}</label>
 <input type="hidden" name="Quality" value="${cart.quality}"><br>
 <label>Quantity</label>
 <select name="selector"> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option> 
</select><br>
<button type="submit" name="Add" value="ADD Cart" class="btn btn-primary">ADD Cart</>
</div>
<br>     
</form>
</div>
</div>
</div>
</div>
</v:forEach>
</section>
<div> 
<img src="<%=request.getContextPath()%>/Images/pashmina_mainfloor.jpg" width="300px" height="450px">
</div>
</body>
</html> 

