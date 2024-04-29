package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ProductDao;
import Dao.cartdao;
import dbConnection.DatabaseConnection;
import model.Customer;
import model.Products;
import model.cart;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			
			int uid=Integer.parseInt(request.getParameter("uid"));//gets the user id from uri
			int pid=Integer.parseInt(request.getParameter("pid"));//gets the product id from the uri
			
			ProductDao dao= new ProductDao(DatabaseConnection.giveConnection());//object of product dao
			
			Products p= dao.getProductById(pid);//using the getProductById method of productdao
			
			//using set method of cart
			cart c=new cart();
			c.setUserId(uid);
			c.setPid(pid);
			c.setProductName(p.getProductName());
			c.setPrice(p.getPrice());
			
			cartdao dao1= new cartdao(DatabaseConnection.giveConnection());//object of cartdao
			boolean f =dao1.addcart(c);
			
			//prints if success
			if(f) {
				
				System.out.println("success");
				response.sendRedirect("cart.jsp");
				
			}
			
			//prints if unsucessfull
			else {
				System.out.println("failed");
				response.sendRedirect("product.jsp");
				
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	

}
