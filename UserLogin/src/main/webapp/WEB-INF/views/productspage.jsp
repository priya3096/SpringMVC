<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<center>
		<h2>List of Products</h2>
		<form:form method="post"  modelAttribute="product">
		<table width="60%">
			<tr>
				<th>S.No</th>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Type</th>
			</tr>
			<c:forEach items="${productlist}" var="product" varStatus="status">
				<tr>
					<td align="center">${status.count}</td>
					<td><input name="productlist[${status.index}].productId"
						readonly="readonly" value="${product.productId}" /></td>
					<td><input name="productlist[${status.index}].productName"
						value="${product.productName}" /></td>
					<td><input name="productlist[${status.index}].productType"
						value="${product.productType}" /></td>
				</tr>
			</c:forEach>
		</table>
		</form:form>
	</center>
</body>
</html>