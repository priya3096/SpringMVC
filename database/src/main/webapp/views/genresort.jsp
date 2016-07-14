<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fiction Novels</title>
<%@include file="/includes/Head.jsp" %>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body background="resources\images\images.jpg">
<%@include file="/includes/Navbar.jsp" %>
<center>
<h3>Available Books..</h3>
	<c:if test="${!empty bookList}">
		<table class="tg">
			<tr>
				<th width="80">Book ID</th>
				<th width="120">Book Name</th>
				<th width="120">Book Description</th>
				<th width="100">Price</th>
			</tr>
			<c:forEach items="${bookList}" var="book">
				<tr>
					<c:if test="${book.description==genre}">
						<td>${book.id}</td>
						<td>${book.name}</td>
						<td>${book.description}</td>
						<td>${book.price}</td>
					</c:if>
				</tr>
				
			</c:forEach>
		</table>
	</c:if>
</center>

</body>
</html>