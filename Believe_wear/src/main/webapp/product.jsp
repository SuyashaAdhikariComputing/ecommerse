<%@page import="Dao.CustomerDao"%>
<%@page import="model.Customer"%>
<%@page import="model.Products"%>
<%@page import="java.util.List"%>
<%@page import="dbConnection.DatabaseConnection"%>
<%@page import="Dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product page</title>
<style>
	.{
		overflow: hidden;
	}

.row{
	display: flex;
}

.column{
display:flex;
border:2px;
}

.image{
	height: 200px;
	width: 200px;

}

.card{
	margin: 5px;
	background-color: whitesmoke;
	padding: 5px;
}

button{
	background-color: orangered;
	border-radius: 10px;
	border: none;
	color: white;
	font-weight: bold;
	font-family: inherit;
	font-size: 16px;
	padding: 5px 7px;

}

button:hover{
	font-size: 17px;
	cursor: pointer;
}


button +.cart{
	background-color: orangered;
}

button + .buy{
	background-color: black;
}

</style>

</head>
<body>

<%
Customer c=(Customer)session.getAttribute("customerobj");
%>

<%@include file="nav.jsp" %>

	<div class="container">
	
	      
		
		<div class="row">
		
		
		<%
		
		ProductDao dao = new ProductDao(DatabaseConnection.giveConnection());

		List<Products> product = dao.getAllProduct();
		
		for (Products p : product){%>
		
		
		
		<div class="column">
		
		<div class="card">
				<div class="image">
				<img class="image" src="images/<%=p.getImage()%>">
				</div>
				<div class="desc">
					<h5>Name:<%=p.getProductName()%></h5>
					<h5>Category:<%=p.getCatagory()%></h5>
					<h5>Price:<%=p.getPrice()%></h5> 
					<h5>SKUID:<%=p.getSKUID()%></h5> 
					<h5>Brand:<%=p.getBrand()%></h5>
					<h5>Rating:<%=p.getRating()%></h5>
					<h5>Description:<%=p.getDescription()%></h5>
					<br>
					
					<a href="AddToCartServlet?pid=<%=p.getPid()%>&&uid=<%=c.getUserID()%>">Add to cart</a>
					<button class="buy">Add to cart</button><br>

					
				</div>

				
			</div>
			</div>
			
			
		<%}
		
		%>
			
	</div>
</div>


<%@include file="footer.jsp" %>		


</body>
</html>