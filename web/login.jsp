<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>    
<html>
    
<%   
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>
    
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core"%>
        <title>E-commerce</title>
        <link href="${pageContext.request.contextPath}/css/CSS.css" type="text/css" rel="stylesheet">  
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/Adminpanel/bootstrap.css">
</head>
 <body class="login-body">   
 <div class="login-page">
      <!--Sending attribute from servelt after chaecking username and password--> 
      <%
      if(null!=request.getAttribute("msg"))
    {
        %>
         <div  class="alert alert-danger" id="error_div" style="text-align:center">
             <%
       out.println(request.getAttribute("msg"));
       //response.setIntHeader("Refresh",10);
    }
     %>
         </div>
 <div class="form">            
   <form class="login-form" method="POST" action="${pageContext.request.contextPath}/admin/user/login">
     <input type="text" placeholder="username" name="username"/>
     <input type="password" placeholder="password" name="pwd"/>
     <button>Login</button>
     <p class="message">Not registered? <a href="#">Create an account</a></p>
   </form>
      <li> <a href="${pageContext.request.contextPath}/admin/login">Admin Panel</a></li>
  </div>
</div>  
   <script src="${pageContext.request.contextPath}/Adminpanel/jquery-3.2.1.js"></script>
   <script src="${pageContext.request.contextPath}Adminpanel/bootstrap.js"></script>
</body>
</html>

