<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers</title>
</head>
<body>
	<center>
		<h2>List of Suppliers</h2>
		<table width="60%">
			<tr>
				<td>S.No</td>
				<td>Supplier Id</td>
				<td>Supplier Name</td>
				<td>City</td>
			</tr>
			<c:forEach items="${supplierList}" var="supplier" varStatus="status">
				<tr>
					<td align="center">${status.count }</td>
					<td><input name="supplierList[${ status.index}].supplierId" value="${supplier.supplierId }"></td>
					<td><input name="supplierList[${ status.index}].supplierName" value="${supplier.supplierName }"></td>
					<td><input name="supplierList[${ status.index}].supplierCity" value="${supplier.supplierCity }"></td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>