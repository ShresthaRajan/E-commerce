
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-commerce</title>
         <link href="<c:url value="/css/bootstrap.css"/>" type="text/css" rel="stylesheet">
         <jsp:include page="Adminmenu.jsp"></jsp:include>
    </head>
    <body>
        <div class="container-fluid">
            <div class="container" style="margin-top: 10%;padding-right: 20%;">
        <h1>Selected Item</h1>
          <table class="table table-striped">
        <thead>
          <tr>
            <td>PID</td>
            <td>Product Name</td>
            <td>Product Price</td>
            <td>Product Quality</td>
            <td>Action</td>
           </tr>
        </thead>             
 <v:forEach items="${selected}" var="items">
                <tr>                    
                <td>${items.CID}</td>
                <td>${items.name}</td>
                <td>${items.price}</td>
                <td>${items.quality}</td> 
                <td>${items.quantity}</td>
                <td><a href="${pageContext.request.contextPath}/admin/message">Message</a></li>
             </tr>                
         </v:forEach>
        </table>
   </div>
        </div>
    </body>
</html>
