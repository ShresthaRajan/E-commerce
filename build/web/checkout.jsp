<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="v" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>E-commerce</title>   
      <link type="text/css" href="${pageContext.request.contextPath}/Adminpanel/bootstrap.css" rel="stylesheet"> 
      <script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/jquery-3.2.1.js"></script>    
  <style>
  body,html{
      height:100%;     
       }  
   .modal_div
  {   width:100%;
      height:100%;
      background: rgba(0,0,0,.6);
      position:absolute;
      top:0;
      display:none;
  }
  
  .modal_main
  {
      width:50%;
      height:50%;
      background-color: #ddd;
      margin-left:10%; 
      margin-top:3%;
      z-index:2;
      position:relative;
  }  

            /*Multi-step Form*/
  #regForm {
  background-color: #ffffff;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
  </style>  
 <script type="text/javascript" src="${pageContext.request.contextPath}/Adminpanel/jquery-3.2.1.js"></script>   
 <script>       
      $(document).ready(function()
      {
         $(".modal_button").click(function()
         {
           $(".modal_div").fadeIn();
         });         
      });
  </script>  
  </head>
    <body>
        <h4>Your checkout</h4>        
    <v:forEach items="${checkout}" var="items">        
        Name:${items.name}<br>
        Price:${items.price}<br>
        Quantity:${items.quantity}<br>       
    </v:forEach>       
     <a href="#Modal" class="modal_button">Proceed</a>            
        <div class="modal_div" id="Modal" >    
          <!--  <div class="modal_main">  -->  
          
                <h4 style="background-color: ">Fill the correct information for cart</h4> 
                <div>
                    <form method="POST" action="${pageContext.request.contextPath}/admin/message"
                          id="regForm"  style="padding-top:5% ; width:40%;z-index:2%;border: 5px solid green;">
                 <div class="tab">
                    <div class="form-group">                    
                    <label for="Email">Email</label>
                    <input type="text" name="email" value="" class="form-control" oninput="this.className = ''">
                    </div>
                 </div>

               <div class="tab">
                   <center>
                   <label>Personal Information</label>
                   </center>
                     <div class="form-group">                  
                     <label for="Name">First Name</label>
                     <input type="text" name="Fname" value="" id="Mail" class="form-control" oninput="this.className = ''">
                     <label for="Name">Last Name</label>
                     <input type="text" name="Lname" value="" id="Mail" class="form-control" oninput="this.className = ''">
                     <label for="Contact">Contact</label>
                     <input type="text" name="contact" value="" class="form-control" oninput="this.className = ''">
                     </div>
                 </div>
                        
                        
    <div class="tab">
    <center>
      <label>Shipping Address</label>
   </center>
 <div class="form-group">                  
 <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Kathamndu">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Bagbazar-5">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Country</option>
        <option value="Nepal">Nepal </option>
        <option value="India">India</option>
         <option value="China">China</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>            
       <div class="form-group">
      <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox">Check me out
      </label>
     </div>
     </div> 
    </div>
    </div>
    </div>               
 
    <div class="tab">
    <div class="form-group">                    
    <label for="amouunt">Transaction</label>
    <input type="text" name="Amount" value="<%            
        {%> <v:forEach items="${checkout}" var="items">
          ${items.price}
              </v:forEach> 
         <%}%>"class="form-control" oninput="this.className = ''">
    </div>
     <div class="form-group">                    
    <label for="amouunt">Product</label>
    <input type="text" name="product" value="<%            
        {%> <v:forEach items="${checkout}" var="items">
          ${items.name}
              </v:forEach> 
         <%}%>"class="form-control" oninput="this.className = ''">
    </div>
    
    </div>                            
  <div style="overflow:auto;">
  <div style="float:right;">
    <button type="button" id="prevBtn" onclick="nextPrev(-1)">Back</button>
    <button type="button" id="nextBtn" onclick="nextPrev(1)">Process</button>
  </div>
</div>                        
 <div style="text-align:center;margin-top:40px;">
  <span class="step"></span>
  <span class="step"></span>
   <span class="step"></span>
   <span class="step"></span>
</div>                        
</form>                
</div> 
 </div>
       
                          
                          
                          
                          
<script>      
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form ...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  // ... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
    
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
    
  }
  // ... and run a function that displays the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form... :
  if (currentTab >= x.length) {
    //...the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false:
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }  
  
 
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class to the current step:
  x[n].className += " active";
}      
  </script>           
  </body>
  </html>

