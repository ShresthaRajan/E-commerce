<%@page import="com.java.Model.cart"%>
<%@page import="com.java.Model.Cartbeans"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="e"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
   <head>      
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>E-commerce</title>
   <!--<link href="<c:url value="/css/bootstrap.css"/>" type="text/css" rel="stylesheet">-->
    <link rel="stylesheet" href="Adminpanel/bootstrap.css" >
    <link rel="stylesheet" href="Adminpanel/font-awesome.css">
    <link rel="stylesheet" href="Adminpanel/star-rating.css" type="text/css">
    <jsp:include page="header.jsp"></jsp:include>
   <style>       
    .cart{        
    width:100%;
    height:100%;
    border:1px solid blue;
    box-sizing:border-box;
    float:left;
    margin-bottom:30px;
    padding-left:5%;    
    }
    
   .section   
    {      
        width:300px;
        float:left;       
    }
    
    .eout
    { 
        height: 60px;
        background-color:#434343;
        color:whitesmoke;
        padding-top: 20px;
    }      
                   /*Modal Images */
 #myImg{
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}
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
<form class="form">
  <label>Search By:</label>
    <select name="select"> 
        <option value="Means">Means</option>
        <option value="Kids">Kids</option>
        <option value="Sports">Sports</option>
        <option value="North Face">North Face</option>
        <option value="Paints">Paints</option> 
   </select>
<button type="submit" name="search" value="search" class="btn btn-default">OK</>
</form>
</div> 
</div>
 <center>
 <h2 text-align="center">Our Products</h2>
 <center>
<div class="container" style="padding-right:5%">
<div class="row">
<v:forEach items="${cart}" var="cart">
<div class="col-md-6" style="border:2px #255625 solid; padding-bottom:5%;width:30%;height:30%; padding-top:5%" >
<form method="POST" action="${pageContext.request.contextPath}/admin/item/addcart"> 
<div style="float:left">   
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
 <img src="<%=request.getContextPath()%>${cart.picture}" id="myImg" height="34%" width="34%" style="float:right;padding-top:5%"
      alt="${cart.name}" data-toggle="modal" data-target="#myModal">
 <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">View</h4>
      </div>
      <div class="modal-body">
          <%
              {
                  %>  
        
        <h1>Products:${cart.name}</h1>        
        <img src="<%=request.getContextPath()%>${cart.picture}" height="50%" width="50%">  

      <input id="input-21b" value="4" type="text" class="rating" data-min=0 data-max=5 data-step=1 data-size="lg"
      required title=""><hr>    
        <%
        }
        %>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
</div>  
</div>
</form>
</div> 
</v:forEach>       
</div>
</div>
  
<div class="container-fluid">
<jsp:include page="footer.jsp"></jsp:include>
</div>

  
 <%--   <v:if test="${currentPage != 1}">
		<td><a href="cart.do?page=${currentPage - 1}">Previous</a></td>
	</v:if>

	<%--For displaying Page numbers. 
	The when condition does not display a link for the current page--%>
<%--	<table border="1" cellpadding="5" cellspacing="5">
		<tr>
			<v:forEach begin="1" end="${noOfPages}" var="i">
				<v:choose>
					<v:when test="${currentPage eq i}">
						<td>${i}</td>
					</v:when>
					<v:otherwise>
						<td><a href="cart.do?page=${i}">${i}</a></td>
					</v:otherwise>
				</v:choose>
			</v:forEach>
		</tr>
	</table>
	
	<%--For displaying Next link --%>
<%--	<v:if test="${currentPage lt noOfPages}">
		<td><a href="cart.do?page=${currentPage + 1}">Next</a></td>
	</v:if>    --%> 

<!--
<script type="text/javascript">    
// Get the modal
var modal = document.getElementById('myModal');
// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}   
    </script>-->

<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/star-rating.js"></script>
</body>
</html> 
