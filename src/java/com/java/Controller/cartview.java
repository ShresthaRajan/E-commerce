package com.java.Controller;
import com.java.Model.CartDao;
import com.java.Model.Cartbeans;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@SuppressWarnings("serial")
@WebServlet({"/user/store"})
public class cartview extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 2505382248273370666L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cartview</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cartview at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      if(request.getRequestURI().equals(request.getContextPath()+"/user/store/")){
        int page = 1;
		int recordsPerPage = 5;
		if(request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		CartDao dao = new CartDao();
		ArrayList<Cartbeans> cart= dao.viewAllCart((page-1)*recordsPerPage,
								 recordsPerPage);
		int noOfRecords = dao.getNoOfRecords();
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		request.setAttribute("Cart", cart);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("currentPage", page);
		RequestDispatcher view = request.getRequestDispatcher("/Cart.jsp");
		view.forward(request, response);
	}
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);      
    }
    @Override
    public String getServletInfo(){
        return "Short description";
    }
    // </editor-fold>

}
