<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">

<title>카카오프렌즈</title>

<!--
        Google Fonts
        ============================================= -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"
	rel="stylesheet" type="text/css">

<!--
        CSS
        ============================================= -->
<!-- Fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">


<!-- product페이지 css -->



<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">

<!-- Modernizer Script for old Browsers -->



<!-- 스타일시도 -->
<style type="text/css">
#sec {
	height: 5000px;
}

.productimg {
	margin-left: 30%;
	margin-right: 30%;
	margin-bottom: 10%; width : 500px;
	height: 500px;
	border: solid;
	border-color: black;
	float: left;
	width: 500px;
}

#detail {
	margin-left: 30%;
	margin-right: 30%;
	border: solid;
	border-color: red;
	width: 500px;
	height: 500px;
}
</style>






<script
	src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	<section id="home">
		<div id="home-carousel" class="carousel slide" data-interval="false">
			<ol class="carousel-indicators">
				<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#home-carousel" data-slide-to="1"></li>
				<li data-target="#home-carousel" data-slide-to="2"></li>
			</ol>
			<!--/.carousel-indicators-->

			<div class="carousel-inner">

				<div class="item active"
					style="background-image: url('https://t1.daumcdn.net/friends/prod/banner/20170901_ribbonryan_Rbanner_W.gif');">

				</div>

				<div class="item"
					style="background-image: url('https://t1.daumcdn.net/friends/prod/banner/20171010_Rbanner_bodypillow_W.jpg');">

				</div>

				<div class="item"
					style="background-image: url('https://t1.daumcdn.net/friends/prod/banner/20170907_minicushion_Rbanner_W.jpg');">

				</div>
			</div>
			<!--/.carousel-inner-->
			<nav id="nav-arrows"
				class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
				<a class="sl-prev hidden-xs" href="#home-carousel" data-slide="prev">
					<i class="fa fa-angle-left fa-3x"></i>
				</a> <a class="sl-next" href="#home-carousel" data-slide="next"> <i
					class="fa fa-angle-right fa-3x"></i>
				</a>
			</nav>

		</div>
	</section>


	<!-- 	여기서부터 상품 그림 설명 -->
	<section id="sec">
		<div style="height: 70%">
			<div class="productimg">
				<img src="../../img/product/portfolio/caca1.jpg" width=500
					height=500 />

			</div>
			<div class="productimg">
				<img src="../../img/product/portfolio/caca1.jpg" width=500
					height=500 />

			</div>
			<div class="productimg">
				<img src="../../img/product/portfolio/caca1.jpg" width=500
					height=500 />
			</div>

		</div>


	
		<div id="detail" style="height: 50PX;">상품설명</div>
		
	</section>
	
	

	<jsp:include page="/view/include/buy.jsp"></jsp:include>
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
	
</body>
</html>






















