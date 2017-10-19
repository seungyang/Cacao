<%@ page contentType="text/html; charset=utf-8"%>
<%
    response.setHeader("P3P","CP='CAO PSA CONi OTR OUR DEM ONL'"); 
	
	String loginId = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equalsIgnoreCase("loginId")) {
				loginId = cookie.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">

<title>카카오프렌즈</title>
<link href="/Cacao/css/header.css" rel="stylesheet" type="text/css">
<script src="/Cacao/js/vendor/modernizr-2.6.2.min.js"></script>
</head>

<body>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	<!--
        End Fixed Navigation
        ==================================== -->
	<!--
        Home Slider
        ==================================== -->
	<section id="home">
		<div id="home-carousel" class="carousel slide" data-interval="false">
			<ol class="carousel-indicators">
				<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#home-carousel" data-slide-to="1"></li>
				<li data-target="#home-carousel" data-slide-to="2"></li>
			</ol>
			<!--/.carousel-indicators-->

			<div class="carousel-inner"">

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

	<div id="background" style="height: 4200px;">





		<section id="portfolio" style="margin-top: 10%">
			<div class="container"
				style="padding-left: 100px; padding-right: 100px;">
				<h2 class="text-left" style="color: black;">Team Cacao 추천상품</h2>
				<!--         <hr class="star-primary"> -->
				<div class="row" style="margin-top: 3.5%;">
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/caseMain.jpg"
							alt="" style="height: 320px; width: 320px;">

						</a>
					</div>
					<div class="col-sm-4 portfolio-item">

						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/bottleMain.jpg"
							alt="" style="height: 320px; width: 320px;">


						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/garbageMain.jpg"
							alt="" style="height: 320px; width: 320px;">

						</a>
					</div>

					<div class="col-sm-4 portfolio-item" style="margin-top: 15px;">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/dollMain.jpg"
							alt="" style="height: 320px; width: 320px;">

						</a>
					</div>

					<div class="col-sm-4 portfolio-item"
						style="height: 320px; width: 666.5px; margin-top: 15px;">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/noteMain.jpg"
							alt="" style="height: 320px; width: 660px;">

						</a>
					</div>





				</div>
			</div>
		</section>




















		<!-- 	//새로나온 신상품-->

		<section id="portfolio" style="margin-top: 10%">
			<div class="container"
				style="padding-left: 100px; padding-right: 100px;">
				<h2 class="text-left" style="color: black;">새로나온신상품</h2>
				<!--         <hr class="star-primary"> -->
				<div class="row" style="margin-top: 3.5%;">
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
						src="${pageContext.request.contextPath}/img/main/favorite/char1.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char2.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char3.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char4.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char5.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char6.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char7.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>

						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char8.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/char9.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</section>

		<!-- 	//캐릭터 상품 -->

		<section id="portfolio" style="margin-top: 9%">
			<div class="container"
				style="padding-left: 100px; padding-right: 100px;">
					<h2 class="text-left" style="color: black;">캐릭터별 상품 보러가기</h2>
				<div class="row" style="margin-top: 3.5%;">

					<div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_muzi.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
					<div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_neo.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
					<div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_ryan.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
					<div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_tube.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>


					<div class="col-sm-3 portfolio-item">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/i_apeach.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
					<div class="col-sm-3 portfolio-item">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_con.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
					<div class="col-sm-3 portfolio-item">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_frodo.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
					<div class="col-sm-3 portfolio-item">
						<a class="portfolio-link" href="#portfolioModal1"
							data-toggle="modal"> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/cacao/ico_jayg.png"
							alt="" style="height: 120px; width: 105%;">
						</a>
					</div>
				</div>
			</div>
		</section>



		<!--        배너광고 -->
		<section style="margin-top: 9%">
			<div class="container"
				style="padding-left: 100px; padding-right: 100px;">
				<h2 class="text-left" style="color: black;">배너광고</h2>
				<img
					src="${pageContext.request.contextPath}/img/cacao/bannerCacao2.jpg"
					alt="" style="height: 220px; width: 101%;">
			</div>
		</section>




		<!-- 	//인기상품-->

		<section id="portfolio" style="margin-top: 7%">
			<div class="container"
				style="padding-left: 100px; padding-right: 100px;">
				<h2 class="text-left" style="color: black;">인기상품</h2>
				<!--         <hr class="star-primary"> -->
				<div class="row" style="margin-top: 3.5%;">
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언1.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언2.jpg"
						alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언3.jpg"
						alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언4.jpg"
							alt="" style="height: 240px; width: 300px;">
							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/어피치1.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>

					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언5.jpg"
							alt="" style="height: 240px; width: 300px;">
							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/어피치2.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>

						</a>
					</div>
					<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언6.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
					
						<div class="col-sm-4 portfolio-item">
						<a class="" href=""> <img class="img-fluid"
							src="${pageContext.request.contextPath}/img/main/favorite/라이언7.jpg"
							alt="" style="height: 240px; width: 300px;">

							<div class="caption">
								<div class="caption-content">
									<img class="fa fa-search-plus fa-3x"
										src="${pageContext.request.contextPath}/img/main/portfolio/cart.png"
										style="width: 30px; height: 30px;"></img>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</section>






		<!-- 팀소개 링크 이미지-->
		<section style="margin-top: 9%">
			<div class="container"
				style="padding-left: 100px; padding-right: 100px;">
				<h2 class="text-left" style="color: black;">우리 개발자를 소개합니다</h2>
				<img
					src="${pageContext.request.contextPath}/img/main/aboutTeamImg.png"
					alt="" style="height: 200px; width: 101%;">
			</div>
		</section>
	</div>

	<jsp:include page="/view/include/footer.jsp"></jsp:include>

</body>
</html>

