<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%
	String pjName = "/Cacao";
	List<Order> orderList = (List<Order>) request.getAttribute("yourList");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">


<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"
	rel="stylesheet" type="text/css">

<!--  CSS   ============================================= -->
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


<!-- Modernizer Script for old Browsers -->
<script
	src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>우리반 연습</title>

<link rel="stylesheet" type="text/css" 	href="<%=pjName%>/css/mypage/tabs.css" />
<link rel="stylesheet" type="text/css" 	href="<%=pjName%>/css/mypage/iframe.css" />
<link rel="stylesheet" type="text/css" 	href="<%=pjName%>/css/mypage/qabtn.css" />
</head>

<body>
	<img class='img_set' src="/Cacao/img/yourpage/yourPage_img.png">
	<section id="portfolio">
		<div class="container">
		
			<div class="row">
				<div class="col-md-12">
					<div class="tabbable-panel">
						<div class="tabbable-line">
							<ul class="nav nav-tabs ">
								<li class="active"><a href="#tab_default_1"
									data-toggle="tab"> 주문내역 </a></li>
							</ul>
							<div class="tab-content" style="height: 800px">
								<div class="tab-pane active" id="tab_default_1">


									<div class="container">

										<!--  메인 -->
										<%
											if (orderList.size() < 1) {
										%>
										주문내역이 없습니다.
										<%
											} else {

												for (int i = 0; i < orderList.size(); i++) {
										%>
										<div class="row equipo-item">
											<div class="col-md-3 separador-vertical">
												<img src="<%=pjName%>/img/product/all/<%=orderList.get(i).getiId()%>00.jpg"
													class="img-responsive center-block" lo="<%=orderList.get(i).getdId()%>">
											</div>
											<br> <br>
											<div class="col-md-9">
												<p class="texto-equipo">
												<div class="form-group">
													<label class="col-md-4 control-label" for="qTel">주문번호</label>
													<div class="col-md-5">
														<span class="help-block did"> <%=orderList.get(i).getdId()%>
														</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label" for="qTel">상품명</label>
													<div class="col-md-5">
														<span class="help-block"> <%=orderList.get(i).getiName()%>등
															<%=orderList.get(i).getoCnt()%>개
														</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label" for="qTel">상태</label>
													<div class="col-md-5">
														<span class="help-block"> <%=orderList.get(i).getdStatus()%>
														</span>
													</div>
												</div>
												<div class="btn_wrap">
													<div class="col three">
														<a href="#" class="btn1 btn-sunflower1" id="orderDetail">주문
															정보</a>
													</div>
													<div class="col three">
														<a href="#" class="btn2 btn-sunflower2" id="orderCencel">주문
															취소</a>
													</div>
												</div>

											</div>
										</div>
										<% }}%>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		
	</script>

	<jsp:include page="/view/include/footer.jsp"></jsp:include>

</body>
</html>