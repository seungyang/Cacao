<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<title>우리반 연습</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Roboto);

* {
	font-family: 'Roboto', sans-serif;
}

/* form starting stylings ------------------------------- */
#textF-Num {
	position: relative;
	margin-bottom: 45px;
}

#textF {
	font-size: 18px;
	padding: 10px 10px 10px 5px;
	display: block;
	width: 300px;
	border: none;
	border-bottom: 1px solid #00BFFF;
}

#textF:focus {
	outline: none;
}
/* LABEL ======================================= */
label {
	color: #999;
	font-size: 18px;
	font-weight: normal;
	position: absolute;
	pointer-events: none;
	left: 5px;
	top: 10px;
	transition: 0.2s ease all;
}

/* active state */
#textF:focus ~ label, #textF:valid ~ label {
	top: -20px;
	font-size: 14px;
	color: #000;
}

/* BOTTOM BARS ================================= */
#bar {
	position: relative;
	display: block;
	width: 300px;
}

#bar:before, #bar:after {
	content: '';
	height: 2px;
	width: 0;
	bottom: .5px;
	position: absolute;
	background: #00BFFF;
	transition: 0.2s ease all;
}

#bar:before {
	left: 50%;
}

#bar:after {
	right: 50%;
}

/* active state */
#textF:focus ~ #bar:before, #textF:focus ~ #bar:after {
	width: 50%;
}
</style>
</head>
<body>

	<header> </header>
	<br>
	<hr />


	<img alt="" src="../../img/register/registAuth1.png">
	<img alt="" src="../../img/register/registAuth2.png"
		style="margin-left: -1%">
	<img alt="" src="../../img/register/registAuth3.png"
		style="margin-left: -1%">



	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1 class="entry-title">
					<span>이메일인증</span>
				</h1>
				<hr>


			</div>
		</div>




		<div class="container">
			<div class="row">
				<form action="joinSuccess.jsp" method="post" name="joinAuth"
					id="joinAuth" enctype="multipart/form-data">
					<textarea rows="" cols=""></textarea>
					<h2>위 메일로 발송된 8자리 인증번호를 입력해주세요.</h2>
					<br> <br>
					<div id="textF-Num">
						<input type="text" required id="textF"> <span
							id="highlight"></span> <span id="bar"></span> <label>인증번호
							입력</label>
					</div>
					
					<div>
					<div class="form-group">
						<div class="col-xs-offset-3 col-xs-10">
							<input name="Submit" type="submit" value="다음 "
								class="btn btn-primary">
						</div>
					</div>
					
					</div>
				</form>
			</div>
		</div>
	</div>

	<hr>
	<br>
	<footer> </footer>


</body>
</html>