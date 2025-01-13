<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Adminpanel/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Adminpanel/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Adminpanel/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Adminpanel/nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Adminpanel/custom.css">       
  </head>
 <body>
<div class="top-time">
    <div class="container-fluid">   
                    <%=new java.util.Date()%>
        <div class="user-setting">
			<div class="dropdown">
                <button id="dLabel" type="button" class="btn btn-default" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Rajan Shrestha
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dLabel">
                    <li><a href=""><i class="glyphicon glyphicon-user"></i> View Profile</a></li>
                    <li><a href=""><i class="glyphicon glyphicon-fire"></i> Setting</a></li>
                    <li><a href="index.jsp"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!--end of top-time-->
<div class="nav">
    <div class="nav-top">
        <img src="${pageContext.request.contextPath}/Images/pashmina_mainfloor.jpg">
        <h4>Rajan</h4>
        <p>shrestharajan257@gmail.com</p>
    </div>
    <div class="navlinks">
        <div class="search-box">
            <form>
                <input type="text" class="search" placeholder="Search">
            </form>
        </div>
        <div class="menu">
            <ul>
                <li><a href=""><i class="glyphicon glyphicon-cloud"> </i> Dashboard</a></li>

                <li class="drop-down"><a href=""><i class="glyphicon glyphicon-user"> </i>Admin Control</a>
                    <ul>
                        <li><a href="#"><i class="fa fa-plus"></i> Add Item</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/item/view"><i class="fa fa-user"></i>View Item</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/item/selected"><i class="fa fa-user"></i>Selected Item</a></li>
                    </ul>
                </li>
                <li><a href=""><i class="glyphicon glyphicon-ice-lolly-tasted"> </i>  Slider</a></li>

                <li class="drop-down"><a href=""><i class="glyphicon glyphicon-new-window"> </i>  News</a>
                    <ul>
                        <li><a href=""><i class="fa fa-plus"></i> Add News</a></li>
                        <li><a href=""><i class="fa fa-plus"></i> Add News Category</a></li>
                    </ul>
                </li>
                <li><a href=""><i class="glyphicon glyphicon-globe"> </i>  Visit Site</a></li>
                <li><a href=""><i class="glyphicon glyphicon-log-out"> </i>  Log Out</a></li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/Adminpanel/mdb.min.js"></script>
<script src="${pageContext.request.contextPath}/Adminapanel/alertify.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/nav.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/custom.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/jquery-3.2.1.js"></script>
</body>
</html>
