<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/includes/Head.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books...</title>
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
	<h1>Add a Book</h1>

	<c:url var="addAction" value="/book/add"></c:url>

	<form:form action="${addAction}" commandName="book">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty book.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,4}" required="true" title="id should contains 3 to 4 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty book.name}">
						<input type="submit"
							value="<spring:message text="Edit Book Details"/>" />
					</c:if> <c:if test="${empty book.name}"><br><br>
						<input type="submit" value="<spring:message text="Add Book"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Available Books..</h3>
	<c:if test="${!empty bookList}">
		<table class="tg">
			<tr>
				<th width="80">Book ID</th>
				<th width="120">Book Name</th>
				<th width="120">Book Description</th>
				<th width="100">Price</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${bookList}" var="book">
				<tr>
					<td>${book.id}</td>
					<td>${book.name}</td>
					<td>${book.description}</td>
					<td>${book.price}</td>
					<td><a href="<c:url value="book/edit/${book.id}" />">Edit</a></td>
					<td><a href="<c:url value="book/remove/${book.id}" />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
<center>

</body >
</html>