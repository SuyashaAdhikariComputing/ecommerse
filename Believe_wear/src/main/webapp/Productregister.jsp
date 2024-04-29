<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product Register</title>

<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	list-style: none;
}

body {
	background: whitesmoke;
	font-family: "Open Sans",sans-serif;
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

.container {
	width: 400px;
	height: 1000px;
	margin: 8% auto;
	background: #CACFD2;
	border-radius: 5px;
	position: relative;
	overflow: hidden;
}

h3 {
	text-align: center;
	margin-bottom: 40px;
	font-size: 28px;
	font-weight: 500;
	position: relative;
}

h3::before {
	content: ' ';
	left: -20px;
	right: 0px;
	top: 40px;
	bottom: 0;
	position: absolute;
	height: 3px;
	width: 350px;
	background: black;
}

.container form {
	width: 300px;
	position: absolute;
	top: 70px;
	left: 50px;
	transition: 0.5s;
}

form input {
	width: 100%;
	padding: 10px 5px;
	margin: 5px 0;
	padding: 10px;
}

.btn-box {
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
	display: flex;
}

form button {
	width: 80%;
	height: 40px;
	margin-left: 12%;
	border-radius: 10px;
}
</style>
</head>
<body>

<c:if test="${empty adminobj }" >

<c:redirect url="login.jsp"/>

</c:if>
    
	<div class="main">

		<nav>
			<p class="title">Admin Panel</p>

			<ul style="float: right;">
				<li><a href="view.jsp" >Admin</a></li>
				<li><a href="#">Home</a></li>
				<li><a href="Productregister.jsp" class="active">Add Item</a></li>
				<li><a href="#">Product</a></li>
				<li><a href="#">Logout</a></li>
			</ul>



		</nav>
		<br> <br>

		<div class="container">

			<c:if test="${not empty succMsg }">
				<p class="text-center ">${succMsg }</p>
				<c:remove var="succMsg" />
			</c:if>

			<c:if test="${not empty errorMsg }">
				<p class="text-center">${errorMsg }</p>
				<c:remove var="errorMsg" />
			</c:if>

			<!--  form -->
			<form action="RegisterProductServlet" method="post" enctype="multipart/form-data">
				<h3>Register Product</h3>

				<input type="text" name="productname" placeholder="Product name">
				<input type="text" name="catagory" placeholder="Catagory"> 
				<input type="text" name="price" placeholder="Price"> 
				<input type="text" name="SKUID" placeholder="SKUID"> 
				<input type="text" name="description" placeholder="Description"> 
				<input type="text" name="brand" placeholder="Brand"> 
				<input type="text" name="rating" placeholder="Rating"> 
				<input type="file" name="image">

				<div class="btn-box">
					<button class="button" type="submit">Submit</button>
				</div>

				<div class="text" style="font-size: 18px; margin-left: 68px">
					<span>Do you want to go to admin page?</span>

				</div>

				<div class="anc"
					style="font-size: 18px; margin-left: 35%; margin-top: 10px">

					<a href="view.jsp">admin page</a>
				</div>
			</form>
			<!--  form end -->
		</div>
	</div>

</body>
</html>