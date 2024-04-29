package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.CustomerDao;
import PasswordEncryption.PasswordEncryptionWithAes;
import dbConnection.DatabaseConnection;
import model.Customer;

/**
 * Servlet implementation class changepasswordservlet
 */
@WebServlet("/changepasswordservlet")
public class changepasswordservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepasswordservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email=request.getParameter("email");
		String op=request.getParameter("oldpassword");
		String np=request.getParameter("newpassword");
		
		
		CustomerDao dao= new CustomerDao(DatabaseConnection.giveConnection());
		
		
		HttpSession session = request.getSession();
		
		boolean f = dao.check(email, op);
		if(f) {
			
			//s.setAttribute("customerobj", us);
			//response.sendRedirect("home.jsp");
			
			if(dao.changepassword(email, np)) {
				
				
				session.setAttribute("succMsg", "password changed sucessfully");
				response.sendRedirect("profile.jsp");
			}
		
		}else {
			session.setAttribute("failedMsg", "password not matched");
			response.sendRedirect("changepassword.jsp");
		}
		
		
	}

}
