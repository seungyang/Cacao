<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<%
   String pjName = "/Cacao";
%>
<head>
<meta charset="UTF-8">
<title>Cacao LoginForm</title>
<!-- 로그인CSS  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login/loginForm.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">
	//회원가입 클릭시 회원가입 페이지로 이동
	function openWindow() {
		window.open("/Cacao/view/register/joinAgree.jsp", "회원가입폼",
				"width=50px, height=50px");
	}
</script>
<script type="text/javascript">
$(function(){
	$('#loginBtn').click(function(){
		if($('#user').val()==""){
	   		alert('아이디를 입력하세요');			
		}else if($('#pass').val()==""){
			alert('패스워드를 입력하세요');
		}else{
			$('#loginFrm').submit();
		}
	});
});
	
</script>
</head>

<body >
	<div style='width: 100%; height: 5px;'></div>
	
<!-- 	전체바디 div시작 -->
	<div style="background-color: #FFF203;">
<!-- 	헤더 -->
		<header style="margin-top: 2%; background-color: white;">
			<div>
				<font
					style="font-size: 15; font-weight: bold; margin-left: 2%; color: grey">Cacao
					로그인</font><img src="/Cacao/img/login/loginheader.png"
					style="height: 20px; margin-left: 74%;" />
			</div>
			<hr />
		</header>
<!-- 바디		 -->
		<div class="loginmodal-container"
			style="background-color: white; width: 28%; height: 380px;">
			<h1 style="text-align: left; margin-top: -12px; color: #5a5a5a;">Cacao</h1>
			<br>
			
			<form style="margin-top: -20px"id='loginFrm' class="form-login" name='loginFrm' action="<%=pjName %>/Login?cmd=login-page" method='post'>
				<input type="text" id= "user" name="user" placeholder="카카오계정 (이메일)" style="height: 15%;"> 
				<input type="password" id= "pass" name="pass" placeholder="비밀번호(4~16자리)" style="height: 15%;"> 
				<input type="submit" name="login" class="button button5" id="loginBtn" value="로그인"
					style="margin-top: 20px; font-weight: bold;">
			</form>

			<div style="margin-top: 97.5px;">
				<hr />
				<a href="<%=pjName %>/Register?cmd=joinAgree-page"><font style="font-size: 10; color: black;">회원가입</font></a>
				<a href="#"><fon-t style="font-size: 10; margin-left: 86px; color: black;">이메일
						찾기</font></a> - <a href="#"><font style="font-size:10;color: black;">비밀번호 재설정</font></a>

			</div>
		</div>
<!-- 푸터 -->
		<footer style="background-color: white;">
			<hr />
			<div>
				<img src="/Cacao/img/login/loginfoot.png"
					style="height: 55px; margin-left: 23%;" />
			</div>
		</footer>
	</div>




</body>
</html>