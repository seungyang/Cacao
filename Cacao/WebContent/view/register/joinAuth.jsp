<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String imsiEmail = (String) session.getAttribute("emailid");

	String imsiAuthRandom = (String) session.getAttribute("authRandom");
	
	String pjName = "/Cacao";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>

<link href="/Cacao/css/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/Cacao/css/register/joinInfoForm.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script type="text/javascript">
	$(function(){
		
		$('#submitBtn').click(function(){

			var inputAuthRandom= $('#textF').val();
			
			if(inputAuthRandom=="<%=imsiAuthRandom%>"){
				$('#joinAuth').submit();
			}else{
				alert('잘못된 인증번호 입니다. 확인해주세요.');
				$('#textF').val("");
				$('#textF').focus();
			}
			
		});
		
	});

</script>
</head>

<body>
<!-- ####상단노란테두리 -->
<div style='background:yellow; width:100%; height:5px;'></div>
<!-- #### 전체 div 시작 -->	
	<div>
<!-- 	헤더 -->
		<header style="margin-top: 2%; background-color: white;">
			<div>
				<font
					style="font-size: 15; font-weight: bold; margin-left: 2%; color: grey">Cacao 계정만들기
					</font><img src="/Cacao/img/login/loginheader.png"
					style="height: 20px; margin-left: 67%;" />
			</div>
			<hr />
		</header>

	<br>
	<div style="margin-top: -2%;">
		<img alt="" src="/Cacao/img/register/registAuth1.png" style="margin-left: 10%; height: 60px; margin-top: -0.24%; "> <img
			alt="" src="/Cacao/img/register/registAuth2.png"
			style="margin-left: -1%; height: 60px; margin-top: -0.09%;"> <img alt=""
			src="/Cacao/img/register/registAuth3.png" style="margin-left: -1%; height: 60px;"">
	</div>
	
				<h1 class="entry-title" style="margin-left: 38%; margin-top: 5%;">
					<span>이메일인증</span>
				</h1>

		<div class="container">
			<div class="row">
			 	<form action="<%=pjName %>/Register?cmd=joinSuccess-page" method="post" name="joinAuth" id="joinAuth" >
				
					<h2 style="color: #7088be; margin-left: 45%; margin-top: 3.5%;"><%=imsiEmail %></h2>
					<br/>
					<h3 style="margin-left: 21%;">위 메일로 발송된 8자리 인증번호를 입력해주세요.</h3>
					<br> <br>
					<div id="textF-Num" style="margin-left: 32%">
						<label>인증번호 입력</label>
						<input type="text" required id="textF" style="margin-left: 1%;"> <span id="highlight"></span> <span id="bar"></span> 
					</div>
					
					<div>
					<div class="form-group">
						<div class="col-xs-offset-3 col-xs-10">
							<input name="submitBtn" type="button" id="submitBtn" value="다음 "
								class="button button5" style="margin-left: 20%; margin-top: 7%; height: :70px; width: 100px">
						</div>
					</div>
					
					</div>
					
				</form>
			</div>
		</div>
	</div>
	
<hr>
	<br>
<footer>
	

		<div>
			<img src="/Cacao/img/login/loginfoot.png" style="height: 55px; margin-left: 23%;" />

		</div>
	</footer>


</body>
</html>