package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DatabaseConnection;
import model.Customer;
import PasswordEncryption.PasswordEncryptionWithAes;

public class CustomerDao {

	private Connection con ;
	
	public String emailDb,passwordDb;
	
	
	public  CustomerDao(Connection con) {
		super();
		this.con = con;
	}
	
//register the customer
	public boolean customerResister(Customer customer) {
		boolean register = false;
		try {
			
			//insert query
			String query = "INSERT INTO customer(username,address,phone,email,password,image) VALUES(?,?,?,?,?,?)";

			PreparedStatement st = this.con.prepareStatement(query);
        
			st.setString(1, customer.getUsername());
			st.setString(2, customer.getAddress());
			st.setString(3, customer.getPhone());
			st.setString(4, customer.getEmail());
			st.setString(5, customer.getPassword());
			//st.setString(6, customer.getRole());
			st.setString(6, customer.getImageName());

			int i =st.executeUpdate();
			
			if(i==1) {
				
			register = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return register;
	}


//for login validation
	
	
	
	/**public boolean login(Customer customer) {
		boolean status=false;
		PreparedStatement st;
		try {
			
			String selectquery="select * from customer where email=?";
			st = this.con.prepareStatement(selectquery);
			st.setString(1, customer.getEmail());
			
			ResultSet rs =st.executeQuery();
			
			if(rs.next()) {
				
				emailDb = rs.getString("email");
				passwordDb= rs.getString("password");
				
				
				String decryptedPwd = PasswordEncryptionWithAes.decrypt(passwordDb, emailDb);
				
				if(decryptedPwd!=null && emailDb.equals(customer.getEmail()) && decryptedPwd.equals(customer.getPassword())) {
					status= true;
				}
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	
	}**/
	
	
	public Customer login(String email,String password) {
		
		Customer us=null;
		try {
			
			String selectquery="select * from customer where email=?";
			PreparedStatement st;
			st = this.con.prepareStatement(selectquery);
			st.setString(1, email);
			
            ResultSet rs =st.executeQuery();
			
			if(rs.next()) {
				
				us=new Customer();
				us.setUserID(rs.getInt(1));
				us.setUsername(rs.getString(2));
				us.setAddress(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setEmail(rs.getString(5));
				us.setPassword(rs.getString(6));
				//us.setRole(rs.getString(7));
				us.setImageName(rs.getString(7));
				
				String decryptedPwd = PasswordEncryptionWithAes.decrypt(us.getPassword(), us.getEmail());
				
				if(decryptedPwd!=null && email.equals(us.getEmail()) && password.equals(decryptedPwd)) {
					return us;
				}
				
				
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	public boolean check(String email,String op) {
		
        try {
			
			String selectquery="select email,password from customer where email=?";
			
			PreparedStatement st;
			st = this.con.prepareStatement(selectquery);
			st.setString(1, email);
			
            ResultSet rs =st.executeQuery();
		
            if(rs.next()) {
            	
            	String mail=rs.getString("email");
            	String ori=PasswordEncryptionWithAes.decrypt(rs.getString("password"), mail);
           	
            	if(email.equals(mail) && op.equals(ori)) {
            		
            		return true;
            	}
            	
            }
		
	
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		return false;
        
	}
	
	
	public boolean changepassword(String email,String np) {
		
		
		try {
			
			String update = "Update customer set password=? where email=?";
			
			PreparedStatement st;
			st = this.con.prepareStatement(update);
			st.setString(1, email);
			st.setString(2, PasswordEncryptionWithAes.encrypt(email, np));
			
			int i=st.executeUpdate();
			
			if(i==1) {
				
				return true;
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return false;
		
	}
}
