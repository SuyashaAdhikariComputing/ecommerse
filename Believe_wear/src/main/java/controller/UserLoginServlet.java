package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.CustomerDao;
import model.Customer;
import PasswordEncryption.PasswordEncryptionWithAes;
import dbConnection.DatabaseConnection;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


    /**protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	
    	
    	
    	String aemail="admin@gmail.com";//admin password
		String passw="admin";//admin password
		String email = request.getParameter("email");//get the username from login form
		String pass = request.getParameter("password");//get the password from login form
    	
		//checks if user is admin 
				if(email.equals(aemail) &&  pass.equals(passw)) {
					HttpSession session = request.getSession(); 
					Customer customer=new Customer();
					session.setAttribute("customerobj",customer );
					response.sendRedirect("view.jsp");
				}else {
					HttpSession session = request.getSession(); 
					Customer customer=new Customer();
					customer.setEmail(email);
					customer.setPassword(pass);
					
					CustomerDao customerdao=new CustomerDao(DatabaseConnection.giveConnection());
					
					if(customerdao.login(customer)) {
						session.setAttribute("customerobj",customer );
						response.sendRedirect("home.jsp");
					}
					else {
						session.setAttribute("failedMsg", "incorrect email or password");
						response.sendRedirect("login.jsp");
					}
					
				}
		
    	
    }**/
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	CustomerDao dao=new CustomerDao(DatabaseConnection.giveConnection());
    	
    	HttpSession session= request.getSession();
    	
    	String aemail="admin@gmail.com";//admin password
		String passw="admin";//admin password
		String email = request.getParameter("email");//get the username from login form
		String pass = request.getParameter("password");//get the password from login form
		
		//checks if user is admin 
		if(email.equals(aemail) &&  pass.equals(passw)) {
			
			Customer us=new Customer();
			Customer ad=new Customer();
			session.setAttribute("customerobj",us );
			session.setAttribute("adminobj",ad );
			response.sendRedirect("view.jsp");
		}else {
			
			Customer us = dao.login(email, pass);
			
			if(us!=null) {
				
				session.setAttribute("customerobj", us);
				response.sendRedirect("home.jsp");
			}else {
				session.setAttribute("failedMsg", "invalid email or password");
				response.sendRedirect("login.jsp");
			}
			
			
			
			
			
		}
		
    	
    }
    
    
     
}


