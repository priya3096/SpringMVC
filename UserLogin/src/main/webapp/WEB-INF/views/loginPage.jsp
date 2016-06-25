<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<title>Main Page</title>
</head>
<body>
<center>
<h2>Login Page</h2>
		<a style="color:red;">${message}</style></a><br>
		<form:form action="isValidUser" method="post">
   Enter User Name:<input type="text" name="name">
		<br /><br>
   Enter Password :<input type="password" name="password" />
		<br /><br>
		<input type="submit" value = "LOGIN">
	</form:form>
	</center>	
	</body>
</html>
