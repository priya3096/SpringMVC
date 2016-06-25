<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Main Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
</head>
<body>
	<center>
		<h2>Login Page</h2>
		<form:form action="isValidUser" method="post">
   				Enter User Name:<input type="text" name="name">
			<br />
			<br>
   				Enter Password :<input type="password" name="password" />
			<br />
			<br>
			<input type="submit" value="LOGIN">
		</form:form>
	</center>

</body>
</html>
