<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String pjName = "/Cacao";

	String pageNum = request.getParameter("page");

	String class1 = "1";
	String class2 = "2";
	String class3 = "3";
	String class4 = "4";

	if (pageNum == null) {
		pageNum = "1";
	}
	switch (pageNum) {
		case "1" :
			class1 = "active";
			break;
		case "2" :
			class2 = "active";
			break;
		case "3" :
			class3 = "active";
			break;
		case "4" :
			class4 = "active";
			break;

	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
   content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title> 우리반 연습</title>
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


<!-- product페이지 css -->



<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

<!-- Modernizer Script for old Browsers -->
<script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Cacao/css/service/service_main.css" />

</head>
<body>
<img class='img_set' src="/Cacao/img/service/service_img.png"/>
<jsp:include page="/view/include/header.jsp"></jsp:include>
	
	
	<section id="portfolio">
<div class="container">
    <div class="row">
		<div class="col-md-12">

			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
					
						<li class="<%=class1%>">
							<a href="#tab_default_1" data-toggle="tab">
							공지사항 </a>
						</li>
						<li class="<%=class2%>">
							<a href="#tab_default_2" data-toggle="tab">
							FAQ </a>
						</li>
						
					</ul>
					
					<div class="tab-content">
					
						<div class="tab-pane active" id="tab_default_1">
							<iframe class="f_width" src="/Cacao/Service?cmd=notice-page" frameborder="0" scrolling="no" ></iframe>
						</div>
						<div class="tab-pane" id="tab_default_2">
							<iframe class="f_width" src="/Cacao/Service?cmd=faq-page" frameborder="0" scrolling="no" ></iframe>
							
						</div>
					
					</div>
				</div>
				
			</div>

		</div>
	</div>
</div>
<br>
<br>

<br>
<br>

<script type="text/javascript">

</script>
</section>
<jsp:include page="/view/include/footer.jsp"></jsp:include>

</body>
</html>