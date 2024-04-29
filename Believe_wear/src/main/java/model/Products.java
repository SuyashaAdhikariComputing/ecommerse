package model;

import java.io.File;

import javax.servlet.http.Part;



public class Products {
	
	int Pid;
	String ProductName, Catagory;
	int Price,SKUID;
	String Description, Brand, Rating,Image;
	
	public Products() {
		super();
	}

	

	public Products(int pid, String productName, String catagory, int price, int sKUID, String description,
			String brand, String rating, String image) {
		super();
		Pid = pid;
		ProductName = productName;
		Catagory = catagory;
		Price = price;
		SKUID = sKUID;
		Description = description;
		Brand = brand;
		Rating = rating;
		Image = image;
	}



	public Products(String productName, String catagory, int price, int sKUID, String description, String brand,
			String rating, String image) {
		super();
		ProductName = productName;
		Catagory = catagory;
		Price = price;
		SKUID = sKUID;
		Description = description;
		Brand = brand;
		Rating = rating;
		Image = image;
	}

	public int getPid() {
		return Pid;
	}

	public void setPid(int pid) {
		Pid = pid;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public String getCatagory() {
		return Catagory;
	}

	public void setCatagory(String catagory) {
		Catagory = catagory;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public int getSKUID() {
		return SKUID;
	}

	public void setSKUID(int sKUID) {
		SKUID = sKUID;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getBrand() {
		return Brand;
	}

	public void setBrand(String brand) {
		Brand = brand;
	}

	public String getRating() {
		return Rating;
	}

	public void setRating(String rating) {
		Rating = rating;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	
}


