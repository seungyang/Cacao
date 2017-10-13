<%@ page contentType="text/html; charset=utf-8"%>
<%
	//String loginId =(String)session.getAttribute("loginId");
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">


<!-- Modernizer Script for old Browsers -->
<script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	<!--
        End Fixed Navigation
        ==================================== -->
	<!--
        Home Slider
        ==================================== -->
	<section id="home" >
		<div id="home-carousel" class="carousel slide" data-interval="false">
			<ol class="carousel-indicators">
				<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#home-carousel" data-slide-to="1"></li>
				<li data-target="#home-carousel" data-slide-to="2"></li>
			</ol>
			<!--/.carousel-indicators-->

			<div class="carousel-inner" ">

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
	
	<div id="background">
	
	
	  <section id="portfolio" style="margin-top: 10%">
      <div class="container">
        <h2 class="text-left" style="color: black;">새로나온신상품</h2>
<!--         <hr class="star-primary"> -->
        <div class="row" style="margin-top: 3.5%;">
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
             <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
             <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal2" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal3" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal4" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal5" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
              
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal6" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/main/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/main/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
	
<!-- 	//캐릭터 상품 -->

 <section id="portfolio" style="margin-top: 5%">
      <div class="container">
        <div class="row" style="margin-top: 3.5%;">
          
          <div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_muzi.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
          <div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_neo.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
          <div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_ryan.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
          <div class="col-sm-3 portfolio-item" style="margin-bottom: 20px;">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_tube.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>


  			<div class="col-sm-3 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/i_apeach.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
            <div class="col-sm-3 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_con.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
            <div class="col-sm-3 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_frodo.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
            <div class="col-sm-3 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/cacao/ico_jayg.png" alt="" style="height: 120px; width: 300px;">
            </a>
          </div>
          </div>
          </div>
          </section>
        
        
        
<!--        배너광고 -->
<section style="margin-top: 5%">
      <div class="container">
        <div class="row" style="margin-top: 3.5%;">
          <div class="col-sm-12 portfolio-item" style="margin-bottom: 20px;">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img  src="${pageContext.request.contextPath}/img/cacao/bannerCacao.jpg" alt="" style="height: 120px; width: 100%; ">
            </a>
          </div>
        
       
          </div>
          </div>
          </section>
	</div>
	
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
	
</body>
</html>

