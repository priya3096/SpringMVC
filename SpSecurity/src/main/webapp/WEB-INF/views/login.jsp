<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>\\//BookPalace</title>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<!-- Custom CSS -->
<link href="C:\Users\Manoj\Desktop\ecommerce project\pagetheme.css"
	rel="stylesheet">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>

<!-- Custom Fonts -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>
</head>
<body>
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
				<a class="navbar-brand" href="index1.jsp">BOOK PALACE</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="AboutUs.jsp">About</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Genres <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Fiction</a></li>
							<li><a href="#">Autobiography</a></li>
							<li><a href="#">Non Fiction</a></li>
							<li><a href="#">Horror</a></li>
							<li><a href="#">Education</a></li>
							<li><a href="#">Comedy</a></li>
						</ul></li>
					<li><a href="getProducts">All Products</a></li>

					<li onload='document.f.j_username.focus();'>
						<form name='f' action="<c:url value='j_spring_security_check'/>"
							method='Post'>
									
									<input type="text" name='j_username' value=''>								
									<input type="password" name='j_password' value=''>
									<td colspan='2'><input type="submit" name='submit'
										value='login'>

						</form>
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
	<!-- Heading Row -->
	<div class="row">
		<div class="col-md-8">
			<!-- Header Carousel -->
			<header id="myCarousel" class="carousel slide">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img class="book1.jpg"
							src="C:\Users\Manoj\workspace\bookpalace\src\main\resources\images\A-good-book-is-the-best-of-friends.jpg"
							alt="" style="width: 600px; height: 350px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="C:\Users\Manoj\workspace\bookpalace\src\main\resources\images\DanBr.jpg"
							alt="" style="width: 600px; height: 350px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="C:\Users\Manoj\workspace\bookpalace\src\main\resources\images\ArundhRoy.jpg"
							alt="" style="width: 400px; height: 400px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="C:\Users\Manoj\workspace\bookpalace\src\main\resources\images\book2.png"
							alt="" style="width: 600px; height: 350px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
				</div>
				<!-- Controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span class="icon-prev"></span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span class="icon-next"></span>
				</a>
			</header>
		</div>
		<!-- /.col-md-8 -->
		<div class="col-md-4">
			<br> <br> <br>
			<h1>A great book should leave you with many experiences...</h1>
			<p>Here we have a wide Collection of books for u... Discover more
				with us. Join Us Today !</p>
			<a class="btn btn-primary btn-lg" href="SignUp.jsp">Sign Up!</a>
		</div>
	</div>
	<!-- Page Content -->
	<div class="container">

		<hr>
		<!-- Call to Action Well -->
		<div class="row">
			<div class="col-lg-12">
				<div class="well text-left">
					<h3>Welcome to our world of Books!!!!!</h3>
				</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<!-- Content Row -->
		<div class="row">
			<div class="col-md-4">
				<h2>Kids and Students</h2>
				<p>We provide the best range of books and novels for u. For
					academics top CAT ,MAT ,SAT and JEE books. To chill look up for
					novels by Dan Brown , Jeoffrey Archer , Agatha Christie and many
					more... .</p>
				<a class="btn btn-angry" href="#">Explore</a>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4">
				<h2>Parents and Proffessionals</h2>
				<p>All books ranging from 7 habits of highly effective people to
					Chef master.We also books that helps you become a smart parent and
					tackle the world !! .</p>
				<a class="btn btn-angry" href="#">Explore</a>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4">
				<h2>Autobiographies of Great leaders</h2>
				<p>Autobiographies of great leader from Jawaharlal Nehru, Sachin
					Tendulkar ,Martin Luther King and .</p>
				<a class="btn btn-angry" href="#">Explore</a>
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; MyBookPalace :)</p>
				</div>
			</div>
		</footer>
		<!-- Script to Activate the Carousel -->
		<script>
			$('.carousel').carousel({
				interval : 5000
			//changes the speed
			})
		</script>
</body>
</html>