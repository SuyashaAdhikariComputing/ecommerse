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
<title>My Profile</title>

<style>
		.container{
			margin-top: 90px;
		}

		.content{
			display: flex;
			justify-content: center;
		}

		img{
			height: 100px;
			width: 100px;
			padding-right: 20px;
		}

		table, th, td {
  		border: 1px solid black;
  		border-collapse: collapse;
		}

		table{
			border: 2px solid ;
			font-size: 20px;
			line-height: 22px;
		}

		th{
			width: 200px;
			text-align: center;
			background-color: #F0F3F4;
		}

		td {
  		text-align: center;
		}


		button{
		background-color: darkorange;
		border: none;
		border-radius: 16px;
		color: white;
		font-weight: bold;
		font-family: inherit;
		font-size: 16px;
		padding: 5px 7px;
		margin-top: 10px;
		margin-left: 450px;
	}

	button:hover{
		background-color: black;
		color: white;
  		font-size: 16px;
  		cursor: pointer;
	}

	</style>

</head>
<body>

<c:if test="${empty customerobj }" >

<c:redirect url="login.jsp"/>

</c:if>
<c:if test="${not empty adminobj }" >

<c:redirect url="view.jsp"/>

</c:if>

<%@include file="nav.jsp" %>

          <%
          Customer c=(Customer)session.getAttribute("customerobj");

			%>
			
	    <c:if test="${not empty succMsg }">
		<p>${ succMsg}</p>
		<c:remove var="succMsg"/>
		</c:if>

<div class="container">

		<div class="content">
			<img src="images/<%=c.getImageName()%>"/ >
			<table style="width:40%">
  <tr>
    <th>User ID:</th>
    <td><%=c.getUserID()%></td>
  </tr>
  <tr>
    <th>Username:</th>
    <td><%=c.getUsername()%></td>
  </tr>
  <tr>
    <th>Address:</th>
    <td><%=c.getAddress()%></td>
  </tr>
  <tr>
    <th>Phone:</th>
    <td><%=c.getPhone()%></td>
  </tr>
  <tr>
    <th>Email:</th>
    <td><%=c.getEmail()%></td>
  </tr>


</table>	
		</div>

		<button>Edit Profile</button>
		
	</div>
			

</table>


<%@include file="footer.jsp" %>	

</body>
</html>




