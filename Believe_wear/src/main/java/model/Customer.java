package model;

public class Customer {

	int userID;
	String username, address, phone, email, password,  imageName;
	
	//default constructor
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}

	// Constructor without customer id
	public Customer(String username, String address, String phone, String email, String password, 
			String imageName) {
		super();
		this.username = username;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.password = password;
		
		this.imageName = imageName;
	}
	
	// Constructor with customer id

	public Customer(int userID, String username, String address, String phone, String email, String password,
			String imageName) {
		super();
		this.userID = userID;
		this.username = username;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.imageName = imageName;
	}
	
	

	


	// getter setter
	public int getUserID() {
		return userID;
	}

	
	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

}
