<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
</head>


<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	list-style: none;
}

body {
	background: #BFDEF2;
	font-family: "Open Sans",sans-serif;
}

.nav {
	width: 100%;
	background: #FFFF;
	padding-top: 20px;
	padding-bottom: 10px;
}

.nav h1 {
	margin-left: 10%;
	font-size: 35px;
}

.container {
	width: 400px;
	height: 570px;
	margin: 8% auto;
	background: #fff;
	border-radius: 20px;
	bo
}

h3 {
	text-align: center;
	margin-bottom: 40px;
	padding-top: 20px;
	font-size: 28px;
	font-weight: 500;
	position: relative;
}

h3::before {
	content: ' ';
	left: -20px;
	right: 0px;
	top: 70px;
	bottom: 0;
	position: absolute;
	height: 3px;
	width: 350px;
	background: black;
}

.container form {
	width: 300px;
	position: absolute;
	margin-left: 4%;
}

form input {
	width: 300px;
	padding: 30px 5px;
	margin: 5px 0;
	padding: 10px;
}

.text {
	margin-top: 10px;
	margin-left: 80px;
}

.button {
	margin-left: 10px;
	margin-top: 15px;
	padding-left: 20px;
	width: 100%;
	margin-top: 20px;
	height: 40px;
	border-radius: 10px;
}
</style>
<body>

	<div class="main">
		<!-- heading -->
		<div class="nav">
			<h1>Believe wear</h1>
		</div>

		<div class="container">
		
			<c:if test="${not empty errorMsg }">
				<p class="text-center">${errorMsg }</p>
				<c:remove var="errorMsg" />
			</c:if>

			<form class="form" action="UserRegisterServlet" method="post" enctype="multipart/form-data">
				<h3>Create account</h3>
				<input type="text" name="username" placeholder="Name"> 
				<input type="text" name="email" placeholder="email"> 
				<input type="text" name="phone" placeholder="phone"> 
				<input type="text" name="address" placeholder="Address"> 
				<input type="text" name="password" placeholder="Password"> 
				<input type="file" name="image"">

				<div class="btn-box">
					<button class="button" type="submit" id="next1">Submit</button>
				</div>

				<div class="text">
					<span>Do you have an account?</span>

				</div>

				<div class="anc"
					style="font-size: 18px; margin-left: 48%; margin-top: 6px">
					<a href="login.jsp">Sign In</a>
				</div>
			</form>
		</div>
</body>
</html>


