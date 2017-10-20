<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pjName = "/Cacao";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="/Cacao/css/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/Cacao/css/register/joinInfoForm.css">
<script type="text/javascript">
//################ 입력정보 유효성 검사
	function checkfield() {
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

		if (document.signup.emailid.value == "") {
			alert("이메일을 입력하세요");
			document.signup.emailid.focus();
		} else if (document.signup.password.value == "") {
			alert("비밀번호를 입력하세요");
			document.signup.password.focus();
		} else if (document.signup.cpassword.value == "") {
			alert("비밀번호확인을 입력하세요");
			document.signup.cpassword.focus();
		} else if (document.signup.mem_name.value == "") {
			alert("닉네임을 입력하세요");
			document.signup.mem_name.focus();
		} else if (document.signup.password.value != document.signup.cpassword.value) {
			//비밀번호와 비밀번호확인의 값이 다를 경우
			alert("입력한 2개의 비밀번호가 일치하지 않습니다.");
			document.signup.password.focus();
		} else if (exptext.test(document.signup.emailid.value) == false) {
			//이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우
			alert("이 메일형식이 올바르지 않습니다.");
			document.signup.emailid.focus();
		} else {
			document.signup.submit();
		}
	}
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
			<img alt="" src="/Cacao/img/register/agreeBtnImg2.png" style="margin-left: 10%; height: 60px; margin-top: -0.24%;"> 
			<img alt="" src="/Cacao/img/register/agreeInput2.png" style="margin-left: -1%; height: 60px;"> 
			<img alt="" src="/Cacao/img/register/agreeInput3.png" style="margin-left: -1%; height: 60px;">

		</div>

		<div class="row">
			<div class="col-md-8" style="margin-left: 9%;">
				<hr>
<!-- 					FORM 시작 -->	
				<form class="form-horizontal"
					action="<%=pjName%>/Register?cmd=joinAuth-page" method="post"
					name="signup" id="signup">

					<div class="form-group" style="margin-left: 7%;">
						<label class="control-label col-sm-3">카카오계정 이메일 <span
							class="text-danger">*</span></label>
						<div class="input-group" style="float: left;">
							<input type="email" class="form-control" name="emailid"
								id="emailid" placeholder="이메일은 아이디로 사용됩니다" value=""
								style="width: 220%">
						</div>
						<button class="button2 button4" style="margin-left: 34%;">ID 중복확인</button>
						<span class="label label-danger" style="margin-left: -27%;">주의!</span><br>
						<small style="margin-left: 25%">· 입력한 이메일로 가입인증번호가 발송됩니다.</small><br>
						<small style="margin-left: 25%">· 꼭 실제로 사용중인 이메일주소를
							입력해주세요. </small><br> <small style="margin-left: 25%">· 비밀번호
							분실 시 이메일을 통해 재설정이 가능합니다.</small>
					</div>

					<div class="form-group" style="margin-left: 7%;">
						<label class="control-label col-sm-3">비밀번호 <span
							class="text-danger">*</span></label>
						<div class="input-group">
							<input type="password" class="form-control" name="password"
								id="password" placeholder="비밀번호 (8~16자리)" value=""
								style="width: 220%">
						</div>
					</div>
					<div class="form-group" style="margin-left: 7%;">
						<label class="control-label col-sm-3">비밀번호 재입력 <span
							class="text-danger">*</span></label>
						<div class="input-group">
							<input type="password" class="form-control" name="cpassword"
								id="cpassword" placeholder="비밀번호 재입력" value=""
								style="width: 220%">
						</div>

						<small style="margin-left: 25%">· 비밀번호는 8~16자의 영문 대소문자,
							숫자, 특수문자를 조합하여 설정해주세요.</small><br> <small style="margin-left: 25%">·
							다른사이트에서 사용하는 것과 동일하거나 쉬운 비밀번호는 사용하지 마세요. </small><br> <small
							style="margin-left: 25%">· 안전한 계정 사용을 위해 비밀번호는 주기적으로
							변경해주세요.</small>


					</div>
					<div class="form-group" style="margin-left: 7%;">
						<label class="control-label col-sm-3">닉네임<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<input type="text" class="form-control" name="mem_name"
								id="mem_name" placeholder="닉네임을 설정해주세요" value=""
								style="width: 88%; margin-left: -4%">
						</div>
					</div>
					
<!-- 				#################	BIRTH : 날짜 선택 -->
					<div class="form-group" style="margin-left: 7%;">
						<label class="control-label col-sm-3">생년월일 <span
							class="text-danger">*</span></label>
						<div class="col-xs-8">
							<div class="form-inline" style="margin-left: -4%">
<!-- 							####### 년도 : YYYY선택 -->
								<div class="form-group" >
									<select name="yyyy" class="form-control" >
										<option value="0">연도</option>
										<%
											for (int i = 1955; i < 2011; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</select>
								</div>
<!-- 							#######	월 : MM선택 -->
								<div class="form-group" >
									<select name="mm" class="form-control" style="margin-left: 2%;">
										<option value="">월</option>
										<%
											for(int j=1; j<=12; j++){
												if(j/10==0)	{	
										%>
										<option value="<%=0+""+j%>"><%=0+""+j%></option>
										<%      }else { %>
										<option value="<%=j%>"><%=j%></option>
										<%
												}
											}
										%>
									</select>
								</div>
<!-- 							####### 일 : DD선택 -->
								<div class="form-group">
									<select name="dd" class="form-control" style="margin-left: 4%;">
										<option value="">일</option>
										<%

											for(int j=1; j<=31; j++){
												if(j/10==0)	{
										%>
										<option value="<%=0+""+j%>"><%=0+""+j%></option>
										<%      }else { %>
										<option value="<%=j%>"><%=j%></option>
										<%
												}
											}
										%>
									</select>
								</div>
							</div>
						</div>
					</div> 
<!-- 					BIRTH : 날짜 선택 END -->

<!-- 					####### GENDER : 성별 선택 -->
					<div class="form-group" style="margin-left: 7%;">
						<label class="control-label col-sm-3">Gender <span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<label> <input name="gender" type="radio" value="남성"
								checked> 남성
							</label>     <label> <input name="gender" type="radio"
								value="여성"> 여성
							</label>
						</div>
					</div>
<!-- 					GENDER : 성별 선택 END-->

<!-- 					####### 다음버튼 : joinInfoSave통해서 DB저장되고, 화면은 joinAuth페이지로 이동 -->
<!-- 					<div class="form-group" style="margin-left: 45%; margin-top: 10%;"> -->
<!-- 						<input name="Submit" type="button" value="다음 " -->
<!-- 							class="button button5" style="width: 30%; height: 50px;" -->
<!-- 							onclick="checkfield()"> -->
<!-- 					</div> -->
					
				<button type="button"  value="다음" class="button button5" style="margin-left: 55%;" onclick="checkfield()">다음</button>
					
					
					
					
<!-- 					다음버튼 END -->
				</form>
<!-- 					FORM END -->	
			</div>
		</div>

	</div>
<!-- #### 전체 div 끝 -->	

	<footer>
	

		<div>
			<img src="/Cacao/img/login/loginfoot.png" style="height: 55px; margin-left: 23%;" />

		</div>
	</footer>
</body>
</html>