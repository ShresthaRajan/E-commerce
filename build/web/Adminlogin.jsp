<%-- 
    Document   : Adminlogin
    Created on : Oct 16, 2017, 9:32:44 PM
    Author     : Rajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-commerce</title>
        <link href="<c:url value="/css/CSS.css"/>" type="text/css" rel="stylesheet">
    </head>
  <body class="login-body">              
  <div class="login-page">
  <div class="form">
  <form class="login-form" method="POST" action="${pageContext.request.contextPath}/admin-login">
      <input type="text" placeholder="Admin Token" name="username"/>
      <input type="password" placeholder="password" name="pwd"/>
      <button type="submit" value="submit">Login</button>      
   </form>
  </div>
</div>
   </body>    
</html>
