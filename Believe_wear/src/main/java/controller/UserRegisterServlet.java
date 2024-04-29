package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Dao.CustomerDao;
import PasswordEncryption.PasswordEncryptionWithAes;
import dbConnection.DatabaseConnection;
import model.Customer;

/**
 * Servlet implementation class UserRegisterServlet
 */
@WebServlet("/UserRegisterServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserRegisterServlet() {
		super();
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//for output
		//response.setContentType("text/html");
		//PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		//String image=request.getParameter("image");
		String password = PasswordEncryptionWithAes.encrypt(email, request.getParameter("password"));
		//String role = request.getParameter("role");
		
        Part file=request.getPart("image");
		
		String image=file.getSubmittedFileName();
		String uploadpath="S:/second year/programming/CourseWorkProject/Believe_wear/src/main/webapp/images/"+image;
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		
		byte[] data =new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		HttpSession session = request.getSession();
		
		if(image!= null) {
			
			//password encription code
			

			//Part imagePart = request.getPart("image");
			//String imageName = imagePart.getSubmittedFileName();

			//object of model.customer
			Customer customer = new Customer(username, address, phone, email, password,image);

			CustomerDao customerDao = new CustomerDao(DatabaseConnection.giveConnection());//object of customer Dao

			if (customerDao.customerResister(customer)) {
				//out.println("<h1> Data Inserted </h1>");
				session.setAttribute("succMsg", "Successfully registered");
				response.sendRedirect("login.jsp");
			} else {
				//out.println("<h1> Data not Inserted </h1>");
				session.setAttribute("errorMsg", "Not registered");
				response.sendRedirect("register.jsp");
			}
		}else {
			
			//System.out.println("not inserted image");
			session.setAttribute("errorMsg", "not inserted image");
			response.sendRedirect("register.jsp");
		}

		

	}

}
