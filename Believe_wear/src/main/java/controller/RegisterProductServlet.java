package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Dao.ProductDao;
import dbConnection.DatabaseConnection;
import model.Products;


/**
 * Servlet implementation class RegisterProductServlet
 */

@WebServlet("/RegisterProductServlet") 

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)

public class RegisterProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//for output
		//response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		
		//gets the values that is entered
		String name=request.getParameter("productname");
		String catagory=request.getParameter("catagory");
		int price= Integer.parseInt(request.getParameter("price"));
		int SKUID= Integer.parseInt(request.getParameter("SKUID"));
		String description= request.getParameter("description");
		String brand= request.getParameter("brand");
		String rating= request.getParameter("rating");
		//String image = request.getParameter("image");
		
		
		//code for the image
		Part file=request.getPart("image");
		
		String image=file.getSubmittedFileName();
		//giving the path of the images file
		String uploadpath="S:/second year/programming/CourseWorkProject/Believe_wear/src/main/webapp/images/"+image;
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		
		byte[] data =new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		//product page constructor
		Products product = new Products(name, catagory, price, SKUID, description, brand, rating, image);
		//product dao object
		ProductDao productDao = new ProductDao(DatabaseConnection.giveConnection());
		
		HttpSession sesson =request.getSession();
		
		//if successfull
		if(productDao.ProductResister(product)) {
			
			sesson.setAttribute("succMsg", "Product sucessfully registered");
			response.sendRedirect("Productregister.jsp");
			
			//out.println("<h1> Data Inserted </h1>");
		}
		//if unsuccessfull
		else {
			sesson.setAttribute("errorMsg", "Product not registered");
			response.sendRedirect("Productregister.jsp");
			//out.println("<h1> Data not Inserted </h1>");
			
		}
		
	}
	
	
	}
	
	
	


