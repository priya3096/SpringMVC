<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">BOOK PALACE</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="about">About</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Genres <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="fiction">Fiction</a></li>
							<li><a href="autobiography">Autobiography</a></li>
							<li><a href="nonfiction">Non Fiction</a></li>
							<li><a href="fantasy">Fantasy</a></li>
							<li><a href="education">Education</a></li>
							
						</ul></li>
					<li><a href="productsdisplay">All Books</a></li>
					
					<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li><div style="color: red">${message}</div><br><form action="isValidUser" method="post">
							<input type="text" name="name" placeholder="UserId">
							<input type="password" name="password" placeholder="Password">
							<button class="btn btn-primary">LOG IN</button></form></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<li style="color:yellow">Admin LoggedIn</li><br>
						<li><a class="btn btn-primary" href="index.jsp">LogOut</a></li>
					</c:if>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>


