<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="Adminpanel/bootstrap.css">
    <link rel="stylesheet" href="Adminpanel/font-awesome.css">
    <link rel="stylesheet" href="Adminpanel/nav.css">
    <link rel="stylesheet" href="Adminpanel/custom.css"> 
</head>
 <body>   
   <div class="top-time">
    <div class="container-fluid">              
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
        <img src="Images/pashmina_mainfloor.jpg">
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
                        <li><a href="ADD.jsp"><i class="fa fa-plus"></i>Add Item</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/item/view"><i class="fa fa-user"></i>View Item</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/item/selected"><i class="fa fa-user"></i>Selected Item</a></li>
                    </ul>
                </li>
                <li><a href="Front.jsp"><i class="glyphicon glyphicon-ice-lolly-tasted"></i>Slider</a></li>

                <li class="drop-down"><a href=""><i class="glyphicon glyphicon-new-window"> </i>News</a>
                    <ul>
                        <li><a href=""><i class="fa fa-plus"></i> Add News</a></li>
                        <li><a href=""><i class="fa fa-plus"></i> Add News Category</a></li>
                    </ul>
                </li>
                <li><a href="index.jsp"><i class="glyphicon glyphicon-globe"> </i>Visit Site</a></li>
                <li><a href="index.jsp"><i class="glyphicon glyphicon-log-out"> </i>Log Out</a></li>
            </ul>
        </div>
    </div>
</div>  
            <!--Form Start-->
<div class="container-fluid"> 
     <div class="content-section" style="margin-top:10%;">      

    <form method="POST" action="${pageContext.request.contextPath}/admin/item/insert"  enctype="multipart">     
         <div class="form-group">
            <label for="exampleItemName">Item Name</label><br>
            <input type="text" name="name" placeholder="Computer" class="form-control" >
            </div>
            
            <div class="form-group">
            <label for="exampleprice">Price</label><br>      
            <input type="text" name="price" placeholder="Enter price" class="form-control">
            </div>
            
           <div class="form-group">
            <label for="exampleproductQuality">Product Quality</label><br>             
            <input type="text" name="quality" placeholder="North Face" class="form-control">           
           </div>
            
           <!--<label>Images</label><br>             
            <input type="file" name="image" class="form-control">           
            </div>-->
<button type="submit" name="submit" value="Save" class="btn btn-block">Save</button>
</form>
 </div>
 </div>
    
    
<script type="text/javascript" src="Adminpanel/jquery.js"></script>
<script type="text/javascript" src="Adminpanel/bootstrap.js"></script>
<script src="Adminpanel/mdb.min.js"></script>
<script src="Adminapanel/alertify.min.js"></script>
<script type="text/javascript" src="Adminpanel/nav.js"></script>
<script type="text/javascript" src="Adminpanel/custom.js"></script>
<script type="text/javascript" src="Adminpanel/jquery-3.2.1.js"></script>
</body>  
 </html>