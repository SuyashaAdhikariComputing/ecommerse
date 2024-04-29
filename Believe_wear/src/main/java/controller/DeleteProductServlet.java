package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ProductDao;
import dbConnection.DatabaseConnection;

/**
 * Servlet implementation class DeleteProductServlet
 */
@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pid= Integer.parseInt(request.getParameter("pid"));
		
		ProductDao dao = new ProductDao(DatabaseConnection.giveConnection());
		
		HttpSession sesson =request.getSession();
		
		//success message
       if(dao.DeleteProduct(pid)) {
			
			sesson.setAttribute("succMsg", "Product sucessfully deleted");
			response.sendRedirect("view.jsp");
			
			//out.println("<h1> Data Inserted </h1>");
		} 
       //if not successfull
       else {
			sesson.setAttribute("errorMsg", "Product not deleted");
			response.sendRedirect("view.jsp");
			//out.println("<h1> Data not Inserted </h1>");
			
		}
		
	}

	

}
