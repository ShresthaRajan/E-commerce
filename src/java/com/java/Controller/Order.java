package com.java.Controller;
import com.java.Model.Orderbeans;
import com.java.Model.vieworder;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet({"/admin/item/Userorder"})
public class Order extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
           try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
              out.println("<!DOCTYPE html>");
              out.println("<html>");
              out.println("<head>");
              out.println("<title>Servlet Order</title>");            
              out.println("</head>");
              out.println("<body>");
              out.println("<h1>Servlet Order at " + request.getContextPath() + "</h1>");
              out.println("</body>");
              out.println("</html>");
        }
    }

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        processRequest(request, response);
        
        /* Order details view from admin */
   if(request.getRequestURI().equals(request.getContextPath()+"/admin/item/Userorder"))
       {
          ArrayList<Orderbeans>order=vieworder.displayorder();
            request.setAttribute("orders",order);
                        
        }       
    }   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
 
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
