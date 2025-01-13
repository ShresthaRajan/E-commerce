<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rajan store</title>
        <link rel="stylesheet" href="Adminpanel/bootstrap.css">
    <link rel="stylesheet" href="Adminpanel/normalize.min.css">
    <link rel="stylesheet" href="Adminpanel/font-awesome.min.css">
    <link rel="stylesheet" href="Adminpanel/animate.css">
    <link rel="stylesheet" href="Adminpanel/templatemo-misc.css">
    <link rel="stylesheet" href="Adminpanel/templatemo-style.css">
    <script src="Adminpanel/modernizr-2.6.2.min.js"></script>     
    </head>
 <body> 
     
      <form action="upload" method="POST" enctype="multipart/form-data">
        
            <input type="file" name="filename" size="1"/>
            <input type="submit">
            <a href="download">Download here!!!</a>
            
        </form>
    <header class="site-header">
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="top-header-left">
                            <a href="#">Sign Up</a>
                            <a href="#">Log In</a>
                        </div> <!-- /.top-header-left -->
                    </div> <!-- /.col-md-6 -->
                    <div class="col-md-6 col-sm-6">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#" class="fa fa-facebook"></a></li>
                                <li><a href="#" class="fa fa-dribbble"></a></li>
                                <li><a href="#" class="fa fa-twitter"></a></li>
                                <li><a href="#" class="fa fa-linkedin"></a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div> <!-- /.social-icons -->
                    </div> <!-- /.col-md-6 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.top-header -->
        <div class="main-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-8">
                        <div class="logo"> 
                            <h1><a href="#">MyDarazStore</a></h1>
                        </div> <!-- /.logo -->
                    </div>                                 
                    <!-- /.col-md-4 -->
                   <!-- /.col-md-8 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.main-header -->
        <div class="main-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-7">
                        <div class="list-menu">
                            <ul class="menu">
                                <li><a href="#">Shop</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">About</a></li>
                                 <li><a href="#">Details</a></li>
                                  <li><a href="${pageContext.request.contextPath}/user/store/Cart">Products</a></li>
                                  <li><a href="#">Brands</a></li>
                                   <input type="text" name="search">
                                  
                            </ul>
                        </div> <!-- /.list-menu -->
                    </div> <!-- /.col-md-6 -->
                    <div class="col-md-6 col-sm-5">
                        <div class="notification">
                            <span>!!!!Free Shipping on any order above $50!!!!</span>
                        </div>
                    </div> <!-- /.col-md-6 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.main-nav -->
    </header> <!-- /.site-header -->
    
    
    <!--carsuol open-->
    
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
     
    <div class="item active">
      <img src="Images/carsoul1.jpg" alt="Girls">
       <div class='carousel-caption'>
          <button class="btn btn-Primary btn-lg"><a href="Cart.jsp">View Store</a></button> 
          <h4>View Our store</h4>
      </div>
    </div>

    <div class="item">
      <img src="Images/carsoul2.jpg" alt="Boys">
      <div class='carousel-caption'>
          <a href="${pageContext.request.contextPath}/user/store/Cart">View Store</a>
          <h4>View Our store</h4>
      </div>
    </div>

    <div class="item">
      <img src="Images/carsoul1.jpg" alt="Kids">
      <div class='carousel-caption'>
          <button class="btn btn-Primary btn-lg"><a href="Cart.jsp">View Store</a></button> 
          <h4>View Our store</h4>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   
 
    <!--End of Carsoul-->
    <div class="content-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="product-item-1">
                        <div class="product-thumb">
                            <img src="Images/Image1.jpg" alt="Product Title">
                        </div> <!-- /.product-thumb -->
                        <div class="product-content">
                            <h5><a href="#">Shirt</a></h5>
                            <span class="tagline">Partner Name</span>
                            <span class="price">$25.00</span>
                            <p>High branded Shirt in minimum price!!!Grab the opportunity </p>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-5">
                    <div class="product-holder">
                        <div class="product-item-2">
                            <div class="product-thumb">
                                <img src="Images/jacket.jpg" alt="Product Title">
                            </div> <!-- /.product-thumb -->
                            <div class="product-content overlay">
                                <h5><a href="#">Jacket</a></h5>
                                <span class="tagline">Partner Name</span>
                                <span class="price">$30.00</span>
                                <p>Want to check out..please login !!!!</p>
                            </div> <!-- /.product-content -->
                        </div> <!-- /.product-item-2 -->
                        <div class="product-item-2">
                            <div class="product-thumb">
                                <img src="Images/jeans1.jpg" alt="Product Title">
                            </div> <!-- /.product-thumb -->
                            <div class="product-content overlay">
                                <h5><a href="#">Ladies</a></h5>
                                <span class="tagline">Partner Name</span>
                                <span class="price">$45.00</span>
                                <p>Want to checkout ..please login!!!</p>
                            </div> <!-- /.product-content -->
                        </div> <!-- /.product-item-2 -->
                        <div class="clearfix"></div>
                    </div> <!-- /.product-holder -->
                </div> <!-- /.col-md-5 -->
                <div class="col-md-4">
                    <div class="product-item-3">
                        <div class="product-thumb">
                            <img src="Images/ladies_jeans.jpg" alt="">
                        </div> <!-- /.product-thumb -->
                        <div class="product-content">
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <h5><a href="#">Name Of Shirt</a></h5>
                                    <span class="tagline">Partner Name</span>
                                    <span class="price">$20.00</span>
                                </div> <!-- /.col-md-6 -->
                                <div class="col-md-6 col-sm-6">
                                    <div class="full-row">
                                        <label for="cat">Gender:</label>
                                        <select name="cat" id="cat" class="postform">
                                            <option value="-1">- Select -</option>
                                            <option class="level-0" value="49">Female</option>
                                            <option class="level-0" value="56">Male</option>
                                        </select>
                                    </div>
                                    <div class="full-row">
                                        <label for="cat1">Size:</label>
                                        <select name="cat1" id="cat1" class="postform">
                                            <option value="-1">- Select -</option>
                                            <option class="level-0" value="49">Small</option>
                                            <option class="level-0" value="49">Medium</option>
                                            <option class="level-0" value="56">Large</option>
                                            <option class="level-0" value="56">X-Large</option>
                                        </select>
                                    </div>
                                    <div class="full-row">
                                        <label for="cat2">Color:</label>
                                        <select name="cat2" id="cat2" class="postform">
                                            <option value="-1">- Select -</option>
                                            <option class="level-0" value="2">Blue</option>
                                            <option class="level-0" value="3">Red</option>
                                            <option class="level-0" value="1">Pink</option>
                                            <option class="level-0" value="4">Black</option>
                                            <option class="level-0" value="4">White</option>
                                        </select>
                                    </div>
                                </div> <!-- /.col-md-6 -->
                                <div class="col-md-12 col-sm-12">
                                    <div class="button-holder">
                                        <a href="#" class="red-btn"><i class="fa fa-angle-down"></i></a>
                                    </div> <!-- /.button-holder -->
                                </div> <!-- /.col-md-12 -->
                            </div> <!-- /.row -->
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item-3 -->
                </div> <!-- /.col-md-4 -->
            </div> <!-- /.row -->
            <!-- /.row -->
        </div> <!-- /.container -->
    </div> <!-- /.content-section -->

    <div class="content-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-title">
                    <h2>Mens's Wear</h2>
                </div> <!-- /.section -->
            </div> <!-- /.row -->
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb" style="height:10%">
                            <img src="Images/pic2.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Name of Shirt</a></h5>
                            <span class="price">$40.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic3.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Sport Shirt</a></h5>
                            <span class="price">$40.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic2.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Elegant Shirt</a></h5>
                            <span class="price">$60.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic1.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Another New Shirt</a></h5>
                            <span class="price">$80.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div> 

    
    <!--Ladies Wear-->
     <div class="content-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 section-title">
                    <h2>Ladies Wear</h2>
                </div> <!-- /.section -->
            </div> <!-- /.row -->
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic2.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Name of Shirt</a></h5>
                            <span class="price">$40.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic3.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Sport Shirt</a></h5>
                            <span class="price">$40.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic2.jpg" alt="">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Elegant Shirt</a></h5>
                            <span class="price">$60.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="product-thumb">
                            <img src="Images/pic1.jpg" alt="" max-height="5%">
                        </div> <!-- /.product-thum -->
                        <div class="product-content">
                            <h5><a href="#">Another New Shirt</a></h5>
                            <span class="price">$80.00</span>
                        </div> <!-- /.product-content -->
                    </div> <!-- /.product-item -->
                </div> <!-- /.col-md-3 -->
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div> 
    <div class="content-section">
    <div class="container">        
        <jsp:include page="Google.jsp"></jsp:include>        
    </div>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <footer class="site-footer"> 
        <!-- /.our-partner -->
        <div class="main-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="footer-widget">
                            <h3 class="widget-title">About Us</h3>
                            MyDarazStore is an E-commerce site,provides you the online shopping facility .Delivery the best 
                            Quality products..
                            <ul class="follow-us">
                                <li><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
                            </ul> <!-- /.follow-us -->
                        </div> <!-- /.footer-widget -->
                    </div> <!-- /.col-md-3 -->
                    <div class="col-md-3">
                        <div class="footer-widget">
                            <h3 class="widget-title">Why Choose Us?</h3>
                            MyDarazStore is online site inovation by shrestharajan. You can order through online.
                            <br>
                            
                        </div> <!-- /.footer-widget -->
                    </div> <!-- /.col-md-3 -->
                    <div class="col-md-2">
                        <div class="footer-widget">
                            <h3 class="widget-title"> Links</h3>
                            <ul>
                                <li><a href="#">Our Shop</a></li>
                                <li><a href="#">Partners</a></li>
                                <li><a href="#">Gift Cards</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div> <!-- /.footer-widget -->
                    </div> <!-- /.col-md-2 -->
                    <div class="col-md-4">
                        <div class="footer-widget">
                            <h3 class="widget-title">Our Newsletter</h3>
                            <div class="newsletter">
                                <form action="#" method="get">
                                    <p>Sign up for our regular updates to know when new products are released.</p>
                                    <input type="text" title="Email" name="email" placeholder="Your Email Here">
                                    <input type="submit" class="s-button" value="Submit" name="Submit">
                                </form>
                            </div> <!-- /.newsletter -->
                        </div> <!-- /.footer-widget -->
                    </div> <!-- /.col-md-4 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.main-footer -->
        <div class="bottom-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <span>Copyright &copy; 2017 <a href="#">Shrestha Rajan</a> | Design: <a href=""></a></span>                       
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.bottom-footer -->
    </footer> <!-- /.site-footer -->

    
    <script src="Adminpanel/jquery-1.10.1.min.js"></script>
    <script>window.jQuery || document.write('<script src="Adminpanel/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="Adminpanel/jquery.easing-1.3.js"></script>
    <script src="Adminpanel/bootstrap.js"></script>
    <script src="Adminpanel/plugins.js"></script>
    <script src="Adminpanel/main.js"></script> 
    <script src="Adminpanel/jquery-3.2.1.js"></script> 
    </body>
</html>
