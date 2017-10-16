<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Cacao LoginForm</title>
<!-- 로그인CSS  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login/loginForm.css">

<script type="text/javascript">
	//회원가입 클릭시 페이지 이동
	function openWindow() {
		window.open("../register/joinAgree.jsp", "회원가입폼",
				"width=50px, height=50px");
	}
</script>



</head>

<body>
	<div style='background: yellow; width: 100%; height: 5px;'></div>
	<div>
<!-- 	헤더 -->
		<header style="margin-top: 2%">
			<div>
				<font
					style="font-size: 22; font-weight: bold; margin-left: 2%; color: grey">Cacao
					로그인</font><img src="../../img/login/loginheader.png"
					style="height: 20px; margin-left: 70%;" />
			</div>
			<hr />
		</header>
<!-- 바디		 -->
		<div class="loginmodal-container"
			style="background-color: white; width: 28%; height: 350px;">
			<h1 style="text-align: left; margin-top: -12px;">Cacao</h1>
			<br>
			
			<form style="margin-top: -20px">
				<input type="text" name="user" placeholder="카카오계정 (이메일)"> <input
					type="password" name="pass" placeholder="비밀번호(4~16자리)"> <input
					type="submit" name="login" class="login loginmodal-submit"
					id="loginBtn" value="로그인"
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;">
			</form>

			<div style="margin-top: 110px;">
				<hr />
				<a href="../register/joinAgree.jsp"><font style="font-size: 10">회원가입</font></a>
				<a href="#"><font style="font-size: 10; margin-left: 86px;">이메일
						찾기</font></a> - <a href="#"><font style="font-size: 10">비밀번호 재설정</font></a>

			</div>
		</div>
<!-- 푸터 -->
		<footer>
			<hr />
			<div>
				<img src="../../img/login/loginfoot.png"
					style="height: 55px; margin-left: 23%;" />
			</div>
		</footer>
	</div>




</body>
</html>