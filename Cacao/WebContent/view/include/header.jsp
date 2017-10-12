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
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<header id="navigation" class="navbar-fixed-top">
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

				<!-- logo -->
				<h1 class="navbar-brand">
					<a href="${pageContext.request.contextPath}/index.jsp" class="link_logo">
						<span class="tit_friends tit_logo">KAKAO FRIENDS</span>			
					</a>
				</h1>
				<!-- /logo -->
			</div>
			<!-- main nav -->
			<nav class="collapse navigation navbar-collapse navbar-center"
				role="navigation">
				<ul id="nav" class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/myPage/mypage.jsp" class="link_mb">캐릭터</a></li>
					<li><a href="/Cacao/Product?cmd=pCateView-page"class="link_mb">카테고리</a></li>
					<li><a href="portfolio/portfolio.jsp"class="link_mb">마이페이지</a></li>
					<li><a href="board/board.jsp?page=1"class="link_mb">고객센터</a></li>
					<li><a href="guest/guest.jsp"class="link_mb">매장안내</a></li>
					<li><a href="download/download.jsp"class="link_mb">뮤지엄</a></li>
		
				</ul>
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