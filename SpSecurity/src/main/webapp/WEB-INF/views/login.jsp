<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
<style>
.errorblock{
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
	
}
</style>
</head>
<body onload='document.f.j_username.focus();'>
	<h3>Login with username and password!</h3>
	
	
	
	<form name='f' action="<c:url value='j_spring_security_check'/>" method='Post'>
	 <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
	
		<table>
			<tr>
				<td>User:</td>
				<td><input type="text" name='j_username' value=''>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name='j_password' value=''>
			</tr>
			<tr>
				
				<td colspan='2'><input type="submit" name='submit' value='login'>
			</tr>		
		</table>
	</form>
</body>
</html>