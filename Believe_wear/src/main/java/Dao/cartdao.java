package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Products;
import model.cart;

public class cartdao {
	
private Connection con ;
	
	public  cartdao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public boolean addcart(cart c) {
		
		boolean f= false;
		
		try {
			
			String query= "insert into cart (UserId,Pid,ProductName,Price) values(?,?,?,?)";
			PreparedStatement st = con.prepareStatement(query);
			st.setInt(1, c.getUserId());
			st.setInt(2, c.getPid());
			st.setString(3, c.getProductName());
			st.setInt(4, c.getPrice());
			
			int i=st.executeUpdate();
			
			if(i==1) {
				
				f=true;
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	
	public List<cart> getProductsByCustomer(int userid) {
		List<cart> list= new ArrayList<cart>();
		cart c=null;
		try {
			
			String query= "select * from cart where userid=?";
			
			PreparedStatement st = con.prepareStatement(query);
			st.setInt(1,userid );
			
			ResultSet rs= st.executeQuery();
			
			while(rs.next()) {
				
				c=new cart();
				c.setCartId(rs.getInt(1));
				c.setUserId(rs.getInt(2));
				c.setPid(rs.getInt(3));
				c.setProductName(rs.getString(4));
				c.setPrice(rs.getInt(5));
				
				list.add(c);
				
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	
	public boolean deleteproduct(int pid, int userid) {
		
		boolean f=false;
		
		try {
			String query= "delete from cart where userid=? and pid=? ";
			PreparedStatement st = con.prepareStatement(query);
			
			st.setInt(1, userid);
			st.setInt(2, pid);
			int i =st.executeUpdate();
			
			if(i==1) {
				
				f=true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
		
		
	}

}
