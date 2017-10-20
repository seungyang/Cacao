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
				
					
					<img id=choose src="/Cacao/img/product/heart.png" width=50px height=50px/>
					<img id=cart src="/Cacao/img/product/cart.png" width=50px height=50px/>
					<img id=minus src="/Cacao/img/product/minus.png" width=50px height=50px/>
					<input type="text" id='text' value=1 disabled="true"></input>
					<img id=plus src="/Cacao/img/product/plus.png" width=50px height=50px/>
					<a><img id=buy src="/Cacao/img/product/buy.png" width=150px height=50px/></a>
				
			</nav>
			
			<!-- /main nav -->
		</div>

	</header>
	
	
	
	<script src="/Cacao/js/vendor/jquery-1.11.1.min.js"></script>
	<script src="/Cacao/js/bootstrap.min.js"></script>
	<script src="/Cacao/js/jquery.nav.js"></script>
	<script src="/Cacao/js/jquery.mixitup.min.js"></script>
	<script src="/Cacao/js/jquery.fancybox.pack.js"></script>
	<script src="/Cacao/js/jquery.parallax-1.1.3.js"></script>
	<script src="/Cacao/js/jquery.appear.js"></script>
	<script src="/Cacao/js/jquery-countTo.js"></script>
	<script src="/Cacao/js/owl.carousel.min.js"></script>
	<script src="/Cacao/js/wow.min.js"></script>
	<script src="/Cacao/js/main.js"></script>

</body>
</html>