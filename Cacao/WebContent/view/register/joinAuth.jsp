<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS  ============================================= -->
<!-- Fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Animate -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<title>우리반 연습</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/register/joinInfoForm.css">

</head>
<body>
<div style='background:yellow; width:100%; height:5px;'></div>
<div>
	<header style="margin-top: 2%">
	
<div >
	<font style="font-size: 22; font-weight: bold; margin-left: 2%; color: grey">Cacao 계정만들기</font><img src="../../img/login/loginheader.png" style="height: 20px; margin-left: 70%;"/>
</div>
<hr/>
            </header> 

	<br>
	<div style="margin-top: -2%;">
		<img alt="" src="../../img/register/registAuth1.png" style="margin-left: 10%; height: 60px; margin-top: -0.24%; "> <img
			alt="" src="../../img/register/registAuth2.png"
			style="margin-left: -1%; height: 60px; margin-top: -0.09%;"> <img alt=""
			src="../../img/register/registAuth3.png" style="margin-left: -1%; height: 60px;"">

	</div>


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
</div>
	<hr>
	<br>
	<footer> </footer>


</body>
</html>