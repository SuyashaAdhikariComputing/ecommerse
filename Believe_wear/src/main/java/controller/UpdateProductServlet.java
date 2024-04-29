package controller;

import java.io.File;
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
 * Servlet implementation class UpdateProductServlet
 */

@WebServlet("/UpdateProductServlet" )

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("productname");
		String catagory=request.getParameter("catagory");
		int price= Integer.parseInt(request.getParameter("price"));
		int SKUID= Integer.parseInt(request.getParameter("SKUID"));
		String description= request.getParameter("description");
		String brand= request.getParameter("brand");
		String rating= request.getParameter("rating");
		//String image = request.getParameter("image");
		
        Part file=request.getPart("image");
		
		String image=file.getSubmittedFileName();
		String uploadpath="S:/second year/programming/CourseWorkProject/Believe_wear/src/main/webapp/images/"+image;
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		
		byte[] data =new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		int pid=Integer.parseInt(request.getParameter("pid"));
		
		Products product = new Products(pid, name, catagory, price, SKUID, description, brand, rating, image);
		ProductDao productDao = new ProductDao(DatabaseConnection.giveConnection());
		
		
		
		HttpSession sesson =request.getSession();
		
        if(productDao.UpdateProduct(product)) {
			
			sesson.setAttribute("succMsg", "Product sucessfully updated");
			response.sendRedirect("view.jsp");
			
		} else {
			sesson.setAttribute("errorMsg", "Product not updated");
			response.sendRedirect("view.jsp");
			
		}
		
	}

}
