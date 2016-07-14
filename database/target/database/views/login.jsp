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
<%@include file="/includes/Head.jsp" %>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}
</style>
</head>
<body>
	<%@include file="/includes/Navbar.jsp" %>
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
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img class="book1.jpg"
							src="resources/images/A-good-book-is-the-best-of-friends.jpg"
							alt=" " style="width: 600px; height: 350px;">									
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="resources/images/Danbr.jpg"
							alt="" style="width: 600px; height: 350px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="resources\images\20-Cookbooks-900x342.jpg"
							alt="" style="width: 600px; height: 350px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="resources\images\book2.png"
							alt="" style="width: 600px; height: 350px;">
						<div class="carousel-caption">
							<h2></h2>
						</div>
					</div>
					<div class="item">
						<img class="book1.jpg"
							src="resources\images\75 Biographies to Read Before You Die.png"
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
			<a class="btn btn-primary btn-lg" href="userregister">Sign Up!</a>
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