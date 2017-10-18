<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<style type="text/css">
#heart{
	position: fixed;
}
#cart{
	position: fixed;
	margin-left:5%;
}
#minus{
margin-left:30%
}
#plus{

}
#buy{
margin-left:25%	
}
</style>
</head>
<body>
	<header id="navigation" class="navbar-fixed-down">
		<div class="container">

			<div class="navbar-header">
				<!-- responsive nav button -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- /responsive nav button -->

				
			</div>
			<!-- main nav -->
			<nav class="collapse navigation navbar-collapse navbar-center"
				role="navigation">
				
					
					<a href="/Cacao/Order?cmd=main-page"><img id=buy src="/Cacao/img/product/continue.PNG" width=150px height=50px/></a>
					<a href="/Cacao/Order?cmd=main-page"><img src="/Cacao/img/product/buy.png" width=50px width=150px height=50px/></a>
				
			</nav>
			
			<!-- /main nav -->
		</div>

	</header>
	<!--
        End Fixed Navigation
        ==================================== -->
        <!-- main jQuery -->
	<script src="js/vendor/jquery-1.11.1.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- jquery.nav -->
	<script src="js/jquery.nav.js"></script>
	<!-- Portfolio Filtering -->
	<script src="js/jquery.mixitup.min.js"></script>
	<!-- Fancybox -->
	<script src="js/jquery.fancybox.pack.js"></script>
	<!-- Parallax sections -->
	<script src="js/jquery.parallax-1.1.3.js"></script>
	<!-- jQuery Appear -->
	<script src="js/jquery.appear.js"></script>
	<!-- countTo -->
	<script src="js/jquery-countTo.js"></script>
	<!-- owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- WOW script -->
	<script src="js/wow.min.js"></script>
	<!-- theme custom scripts -->
	<script src="js/main.js"></script>

</body>
</html>