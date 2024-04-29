<%@page import="model.Products"%>
<%@page import="java.util.List"%>
<%@page import="Dao.ProductDao"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbConnection.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Page</title>
<style>
body {
	background-color: whitesmoke;
	max-width: 100%;
	overflow-x: hidden;
	padding: 0;
	margin: 0;
}

nav {
	width: 100%;
	height: 75px;
	background-color: #DA9C65;
	color: white;
	line-height: 75px;
	padding: 0 100;
	/*position: absolute;*/
	z-index: 1;
	display: inline-block;
	overflow: hidden;
}

.title {
	margin-top: 0px;
	float: left;
	color: black;
	font-size: 35px;
	font-weight: bold;
	letter-spacing: 1.5px;
}

nav ul li {
	display: inline-block;
	list-style: none;
	color: black;
}

nav ul li a {
	color: black;
	text-decoration: none;
	font-size: 18px;
	padding: 0px 32px;
}

nav ul li a:hover {
	color: black;
	font-size: 20px;
	cursor: pointer;
}

.active {
	text-transform: uppercase;
	color: black;
	font-weight: bold;
}

.table {
	margin-left: 10px;
	width: 1250px;
}

.column {
	background-color: "#EBEDEF";
	text-align: center;
}

img{
height: 100px;
width: 100px;
}
</style>





</head>


<body>

<c:if test="${empty adminobj }" >

<c:redirect url="login.jsp"/>

</c:if>

	<nav>
		<p class="title">Admin Panel</p>

		<ul style="float: right;">
			<li><a href="view.jsp" class="active">Admin</a></li>
			<li><a href="home.jsp">Home</a></li>
			<li><a href="Productregister.jsp">Add Item</a></li>
			<li><a href="product.jsp">Product</a></li>
			<li><a href="logoutServlet">Logout</a></li>
		</ul>



	</nav>
	<br>
	<br>


	<div>
	   
		<c:if test="${not empty succMsg }">
			<p class="text-center">${succMsg }</p>
			<c:remove var="succMsg" />
		</c:if>

		<c:if test="${not empty errorMsg }">
			<p class="text-center">${errorMsg }</p>
			<c:remove var="errorMsg" />
		</c:if>


		<table class="table" border="2px">
			<tr>
				<th colspan="10" bgcolor=" #CACFD2 "><h3
						style="font-size: 30px">Products List</h3></th>
			</tr>
			<tr class="column" bgcolor="#CACFD2">
				<th><b>P_ID</b></th>
				<th><b>Prduct_Name</b></th>
				<th><b>Category</b></th>
				<th><b>Price</b></th>
				<th><b>SKU_ID</b></th>
				<th><b>Description</b></th>
				<th><b>Brand</b></th>
				<th><b>Rating</b></th>
				<th><b>Image</b></th>
				<th><b>Action</b></th>
			</tr>

			<%
			ProductDao dao = new ProductDao(DatabaseConnection.giveConnection());

			List<Products> product = dao.getAllProduct();
			for (Products p : product) {
			%>
			<tr align="center">
				<td><%=p.getPid()%></td>
				<td><%=p.getProductName()%></td>
				<td><%=p.getCatagory()%></td>
				<td><%=p.getPrice()%></td>
				<td><%=p.getSKUID()%></td>
				<td><%=p.getDescription()%></td>
				<td><%=p.getBrand()%></td>
				<td><%=p.getRating()%></td>
				<td><img src="images/<%=p.getImage()%>"></img></td>
				<td><a href="Productedit.jsp?pid=<%=p.getPid()%>">Edit</a> <br><br>
				<a href="DeleteProductServlet?pid=<%=p.getPid()%>">Delete</a></td>


			</tr>
			<%
			}
			%>

		</table>
	</div>

</body>
</html>



























