package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbConnection.DatabaseConnection;
import model.Customer;
import model.Products;

public class ProductDao {
	
	private Connection con ;
	
	String Select_by_id="select * from product where pid=?";
	String Select_all_product="select * from product";
	String Delete_product="delete from product where pid=?;";
	//String update_product= "update product set productname =? where pid=?;";
	
	public  ProductDao(Connection con) {
		super();
		this.con = con;
	}
	
	//register product
	
	public boolean ProductResister(Products product) {
		boolean register = false;
		try {
			String query = "Insert into product(ProductName,Catagory,Price,SKUID,Description,"
					+ "Brand,Rating,image) VALUES(?,?,?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(query);
        
			st.setString(1,product.getProductName());
			st.setString(2, product.getCatagory());
			st.setInt(3, product.getPrice());
			st.setInt(4, product.getSKUID());
			st.setString(5, product.getDescription());
			st.setString(6, product.getBrand());
			st.setString(7, product.getRating());
			st.setString(8, product.getImage());

			int i=st.executeUpdate();
			
			if(i==1) {
				
			  register = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return register;
	}
	
	
	//select all products
	public List<Products> getAllProduct() {
		List<Products> product = new ArrayList<Products>();
		Products p=null;
		
		try {
			
			PreparedStatement st= this.con.prepareStatement(Select_all_product);
			
			ResultSet rs =st.executeQuery();
			
			while(rs.next()) {
				
				p=new Products();
				p.setPid(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setCatagory(rs.getString(3));
				p.setPrice(rs.getInt(4));
				p.setSKUID(rs.getInt(5));
				p.setDescription(rs.getString(6));
				p.setBrand(rs.getString(7));
				p.setRating(rs.getString(8));
				p.setImage(rs.getString(9));
				product.add(p) ;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
		
	}
	
	public Products getProductById(int pid) {
		
		Products p=null;
		
        try {
			
			PreparedStatement st= this.con.prepareStatement(Select_by_id);
			
			st.setInt(1, pid);
			
			ResultSet rs =st.executeQuery();
			
			while(rs.next()) {
				
				p=new Products();
				p.setPid(rs.getInt(1));
				p.setProductName(rs.getString(2));
				p.setCatagory(rs.getString(3));
				p.setPrice(rs.getInt(4));
				p.setSKUID(rs.getInt(5));
				p.setDescription(rs.getString(6));
				p.setBrand(rs.getString(7));
				p.setRating(rs.getString(8));
				p.setImage(rs.getString(9));
				
				
			}
		    } catch (SQLException e) {
			// TODO Auto-generated catch block
			    e.printStackTrace();
		    }
		return p;
	}
	
	public boolean UpdateProduct(Products product) {
		boolean f = false;
		try {
			String query = "Update product set ProductName=?, Catagory=?, Price=?, SKUID=?, Description=?,"
					+ "Brand=?,Rating=?,image=? where pid=?";

			PreparedStatement st = con.prepareStatement(query);
        
			st.setString(1,product.getProductName());
			st.setString(2, product.getCatagory());
			st.setInt(3, product.getPrice());
			st.setInt(4, product.getSKUID());
			st.setString(5, product.getDescription());
			st.setString(6, product.getBrand());
			st.setString(7, product.getRating());
			st.setString(8, product.getImage());
			st.setInt(9, product.getPid());

			int i=st.executeUpdate();
			
			if(i==1) {
				
			f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public boolean DeleteProduct(int pid) {
		boolean f=false;
		
		try {
			
			PreparedStatement st= this.con.prepareStatement(Delete_product);
			st.setInt(1, pid);
			
			int i=st.executeUpdate();
			
			if(i==1) {
				
			f = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
		
	}
	

}


