<%@page import="java.util.List"%>
<%@page import="model.cart"%>
<%@page import="model.Customer"%>
<%@page import="dbConnection.DatabaseConnection"%>
<%@page import="Dao.cartdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>


<style>
body {
	background-color: whitesmoke;
	max-width: 100%;
	overflow-x: hidden;
	padding: 0;
	margin: 0;
}

.table {
    margin-top: 30px;
	margin-left: 10px;
	margin-bottom:30px;
	width: 1250px;
}

.column {
	background-color: "#EBEDEF";
	text-align: center;
}

</style>
</head>
<body>

<c:if test="${empty customerobj}">

<c:redirect url="login.jsp"></c:redirect>

</c:if>

<c:if test="${not empty adminobj }" >

<c:redirect url="view.jsp"/>

</c:if>

<%@include file="nav.jsp" %>

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
				<th><b>cart_id</b></th>
				<th><b>customer_id</b></th>
				<th><b>product_id</b></th>
				<th><b>Product name</b></th>
				<th><b>Price</b></th>
				<th><b>Action</b></th>
			</tr>
			
			<%
		    Customer u=(Customer)session.getAttribute("customerobj");
			cartdao dao=new cartdao(DatabaseConnection.giveConnection());
			List<cart> cart=dao.getProductsByCustomer(u.getUserID());
			for(cart c:cart)
			{%>
				<tr align="center">
				<td><%=c.getCartId()%></td>
				<td><%=c.getUserId() %></td>
				<td><%=c.getPid()%></td>
				<td><%=c.getProductName() %></td>
				<td><%=c.getPrice()%></td>
				<td><a href="DeleteCartServlet?pid=<%=c.getPid()%>&&userid=<%=c.getUserId()%>">Delete</a> </td>
			</tr>
				
			<%}
			
			%>
			
			
			
			
			
		</table>
		
		<%@include file="footer.jsp" %>	

</body>
</html>