package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.cartdao;
import dbConnection.DatabaseConnection;

/**
 * Servlet implementation class DeleteCartServlet
 */
@WebServlet("/DeleteCartServlet")
public class DeleteCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int pid= Integer.parseInt(request.getParameter("pid"));//stores the pid
		int userid=Integer.parseInt(request.getParameter("userid"));//stores the user id
		cartdao dao=new cartdao(DatabaseConnection.giveConnection());//cart dao object
		boolean f =dao.deleteproduct(pid,userid);
		
		HttpSession session=request.getSession();
		
		//if sucessfull
		if(f) {
			
			session.setAttribute("succMsg", "Product sucessfully deleted");
			response.sendRedirect("cart.jsp");
			
		}
		
		//if not successfull
		else {
			
			session.setAttribute("errorMsg", "Product not deleted");
			response.sendRedirect("cart.jsp");
		}
		
	}

	

}
