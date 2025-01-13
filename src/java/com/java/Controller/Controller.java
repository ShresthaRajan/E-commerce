
package com.java.Controller;

import com.java.Model.Adminbeans;
import com.java.Model.Admins;
import com.java.Model.Beans;
import com.java.Model.Cartbeans;
import com.java.Model.Checkout;
import com.java.Model.Dao;
import com.java.Model.Login;
import com.java.Model.Userbeans;
import com.java.Model.cart;
import com.java.Model.products;
import com.java.Model.view;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet({"/admin/item/insert","/admin/item/view","/admin/user/login","/admin/item/cart","/admin/item/addcart",
"/admin/login","/admin-login","/admin/item/selected","/item/Totalcart","/user/item/cart",
"/user/cart/Remove/","/user/cart/CheckOut/","/user/store/Cart","/upload"})


public class Controller extends HttpServlet {
     private static final long serialVersionUID = 1L;  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()){
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
     //@SuppressWarnings("unused")
	//String a ="/admin/item/view";
     if(request.getRequestURI().equals(request.getContextPath()+"/admin/item/view"))
        {   
            try{                
            ArrayList<Beans>x=  view.display();        
            request.setAttribute("viewdata",x); 
            RequestDispatcher rd=request.getRequestDispatcher("/View.jsp");
            rd.forward(request, response);              
            }            
            catch (Exception ex) {
            System.out.println(ex);
            
            }
        }
     
        else if(request.getRequestURI().equals(request.getContextPath()+"/admin/item/cart"))
          {      
            ArrayList<Cartbeans>cart=products.cartss();
            request.setAttribute("cart", cart);
            try {                
                int x = products.Count_Cart_items();
                HttpSession session =request.getSession(true);
                session.setAttribute("total",x);              
                RequestDispatcher rd=request.getRequestDispatcher("/Cart.jsp");                
                rd.forward(request, response);                
            } catch (ClassNotFoundException ex) {
                System.out.println(ex.getMessage());
            }           
         } 
        
        else if(request.getRequestURI().equals(request.getContextPath()+"/user/store/Cart"))
        { 
         ArrayList<Cartbeans>carts=products.carts();
         HttpSession session =request.getSession(true);
         request.setAttribute("cart", carts);
            try {                
                int x = products.Count_Cart_items();
                session.setAttribute("total",x);
                //System.out.println("Total cart item"+""+x);
                RequestDispatcher rd=request.getRequestDispatcher("/Cart.jsp");           
                rd.forward(request, response);                
            }
            catch (ClassNotFoundException ex) {
                System.out.println(ex.getMessage());
            }
        }
                    
        //processRequest(request, response);
         else if(request.getRequestURI().equals(request.getContextPath()+"/admin/login"))
         {
            RequestDispatcher rd=request.getRequestDispatcher("/Adminlogin.jsp");
            rd.forward(request, response);  
         }
         
         else if(request.getRequestURI().equals(request.getContextPath()+"/admin/item/selected"))
         {
            ArrayList<Cartbeans>selected=products.selected();
            request.setAttribute("selected", selected);
            RequestDispatcher rd=request.getRequestDispatcher("/selecteditem.jsp");
            rd.forward(request, response);
         }
         
           else if(request.getRequestURI().equals(request.getContextPath()+"/item/Totalcart"))
        {
            RequestDispatcher rd=request.getRequestDispatcher("/Totalcart.jsp");
            rd.forward(request, response);  
        }
           
    else if (request.getRequestURI().equals(request.getContextPath()+"/user/item/cart"))
          {
           //List<Cartbeans> add_cart_select=products.Add_cart();
           //request.setAttribute("cart_items",add_cart_select);
          // RequestDispatcher rd = request.getRequestDispatcher("/Usercart.jsp");
          //rd.forward(request, response);
               
          RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
          rd.forward(request, response);               
        }        
    else if(request.getRequestURI().equals(request.getContextPath()+"/user/cart/Remove/"))
        {
            int Cid=Integer.valueOf(request.getParameter("value"));
            cart.delete(Cid);   
            //RequestDispatcher rd= request.getRequestDispatcher("/Usercart.jsp");
             response.sendRedirect(request.getContextPath()+"/Usercart.jsp");         
        }
     else if(request.getRequestURI().equals(request.getContextPath()+"/user/cart/CheckOut/"))        
        {            
        int cid = Integer.valueOf(request.getParameter("value"));
        try {
          Checkout co= new Checkout();
          ArrayList<Cartbeans>l =co.view(cid);
                //System.out.println(l);
          request.setAttribute("checkout",l);
          RequestDispatcher rd = request.getRequestDispatcher("/checkout.jsp");
           rd.forward(request, response);                      
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }           
        }
                   
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getRequestURI().equals(request.getContextPath()+"/admin/item/insert"))
             {                 
                 String Name=request.getParameter("name");
                 int price = Integer.parseInt(request.getParameter("price"));
                 String quality=request.getParameter("quality");
                 Beans b=new Beans();
                 b.setName(Name);
                 b.setPrice(price);
                 b.setQuality(quality);   
                 Dao.Insert(b);
                
                 //String Images=request.getParameter("image");
                // File f= new File(request.getParameter("image"));
               //FileInputStream fis= new FileInputStream(f); 
              //Dao.Imageset(fis);
              //multipart ----
             //System.out.println();
            //response.sendRedirect(request.getContextPath()+"/index.jsp");
           }
        else if(request.getRequestURI().equals(request.getContextPath()+"/upload")){
             if(ServletFileUpload.isMultipartContent(request)){
        ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
        try {
           
            List<FileItem> fl = sf.parseRequest(request);
            System.out.println(fl.get(0).getName());
            fl.get(0).write(new File("C:\\Images\\"+fl.get(0).getName()));
        } catch (Exception ex) {
            System.out.println(ex);   
        }
        
        RequestDispatcher rd = request.getRequestDispatcher("/upload.jsp");
         rd.forward(request, response); 
        }else{
            request.setAttribute("reply", "File not found");
           // return"index";
        }
        }
     else if (request.getRequestURI().equals(request.getContextPath()+"/admin/user/login"))
           {
           List<Cartbeans> add_cart_select=products.Add_cart();
           request.setAttribute("cart_items",add_cart_select);               
                  String username=request.getParameter("username");
                  String password=request.getParameter("pwd");
                  Userbeans ub= new Userbeans();
                  ub.setUsername(username);
                  ub.setPassword(password);
                 // System.out.println(username);
                  Login user= new Login();
            try {
                //boolean users=false;
       boolean users =user.check(username,password);        
       HttpSession s= request.getSession(true);
       if(users==true)
          {    
         s.setAttribute("user",username);         
         RequestDispatcher rd = request.getRequestDispatcher("/Usercart.jsp");
         rd.forward(request, response);
          }
       else
        {
         request.setAttribute("msg","!!!Username and Password Invalid!!!!");
         System.out.println("Unable to login");                 
         RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
         rd.forward(request, response);                    
          }                     
            }catch(Exception ex)                
            {
                System.out.println(ex.getMessage());
            }
            
                //Checking the Username and Password
                
                /*  Login log =new Login();
                try {
                ArrayList<Userbeans>user = log.user(ub);
                if((username.equals(ub.getUsername()))&&(password.equals(ub.getPassword())))
                {
                HttpSession session = request.getSession();
                session.setAttribute("user",username);
                response.sendRedirect(request.getContextPath()+"/Front.jsp");
                }
              
                else
                {
                response.sendRedirect(request.getContextPath()+"/login.jsp");   
                }
                } catch (SQLException ex) {
                System.out.println(ex.getMessage());
                
                
                }
                */
                //end of checking
            }                 
     else if (request.getRequestURI().equals(request.getContextPath()+"/admin-login"))
        {
           String username=request.getParameter("username");
           String password =request.getParameter("pwd");
           Adminbeans AB= new Adminbeans();
           AB.setAdmin_id(username);
           AB.setPassword(password);
          @SuppressWarnings("unused")
		ArrayList<Adminbeans>adminbean =Admins.login(AB);
           if((AB.getAdmin_id()).equals(username)&&(AB.getPassword()).equals(password))//not matching
           {
          response.sendRedirect(request.getContextPath()+"/AdminControl.jsp");   
           }
           else
           {
                 
           RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
           rd.forward(request, response);
           }           
        }
     
  else if (request.getRequestURI().equals(request.getContextPath()+"/admin/item/addcart"))           
        {  
         String ProductName=request.getParameter("Name");
         int ProductPrice=Integer.parseInt(request.getParameter("Price"));
         String ProductQuality=request.getParameter("Quality");
         int Quantity=Integer.parseInt(request.getParameter("selector"));
         Cartbeans cb= new Cartbeans();
         cb.setName(ProductName);  
         cb.setQuality(ProductQuality);
         cb.setQuantity(Quantity);
         cb.setPrice(ProductPrice);
         System.out.println(ProductPrice);
         products.cartinsert(cb);       
     try {
      
          ArrayList<Cartbeans>cart=products.cartss();
          HttpSession session =request.getSession(true);
          request.setAttribute("cart", cart);
          int x;
          x = products.Count_Cart_items();
          session.setAttribute("total",x); 
        }
        catch (ClassNotFoundException ex) {
        Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }          
         response.sendRedirect(request.getContextPath()+"/Cart.jsp"); 
        }  
        /*
         //Sending Mail  Process        
  else if(request.getRequestURI().equals(request.getContextPath()+"/admin/message"))
     {       
        String Email=request.getParameter("email");      
           Mail mes=new Mail();
            try {
                mes.send(Email);
            } catch (MessagingException ex) {
                System.out.println(ex.getMessage());
            }
     }*/         
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
