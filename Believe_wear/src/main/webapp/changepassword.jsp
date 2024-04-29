<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>sign in</title>

	<style type="text/css">
		*{
			margin: 0px;
			padding: 0px;
			box-sizing: border-box;
			list-style: none;
		}

		body{
			background: pink;
		}

		.nav{
			width: 100%;
			background: #FFFF;
         padding-top: 20px;
         padding-bottom: 10px;
		}

		.nav h1{
			margin-left: 10%;
			font-size: 35px;
		}

		.container{
      	width: 400px;
      	height: 400px;
      	margin: 8% auto;
      	background: #fff;
      	border-radius: 5px;
      	position: relative;
      	overflow: hidden;

      }

      h3{
      	text-align: center;
      	margin-bottom: 40px;
      	font-size: 28px;
			font-weight: 500;
			position: relative;
      }

      h3::before{
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

      .container form{
      	width: 300px;
      	position: absolute;
      	top: 70px;
      	left: 50px;
      	transition: 0.5s;
      }

      form input{
      	width: 100%;
      	padding: 10px 5px;
      	margin: 5px 0;
      	padding: 10px;

      }

      .btn-box{
      	width:100% ;
      	margin-top: 20px;
      	margin-bottom: 20px;
         display: flex;
      	
      }

      form button{
      	width: 80%;
      	height: 40px;
      	margin-left: 12%;
      	border-radius: 10px;
      }
	</style>
</head>
<body>

<%
Customer c=(Customer)session.getAttribute("customerobj");
%>

	<div class="main">

		<div class="nav">
			<h1>Believe wear</h1>
		</div>

		<div class="container">
		
		<c:if test="${not empty failedMsg }">
		<p>${ failedMsg}</p>
		<c:remove var="failedMsg"/>
		</c:if>
		

		
			<!--  form -->
			<form action="changepasswordservlet" method="post">
				<h3>Sign in</h3>
				<input type="text" name="email" placeholder="email">
				<input type="text" name="oldpassword" placeholder="oldpassword">
				<input type="text" name="newpassword" placeholder="newpassword">

				<div class="btn-box">
					<button class="button" type="submit">Change password</button>
				</div>

				<div class="text" style="font-size: 18px; margin-left:68px">
					<span>Don't have an account?</span>
					
				</div>

				<div class="anc" style="font-size: 18px; margin-left:35%; margin-top: 10px" >
					<a href="register.jsp">Create account</a>
					<a href="Adminlogin.jsp">login as admin</a>
				</div>
			</form>
			<!--  form end -->
		</div>
	</div>




</body>
</html>