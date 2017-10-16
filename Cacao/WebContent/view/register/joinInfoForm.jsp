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
@import
	url(http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700);

@import
	url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700)
	;

.form-inline .form-group {
	margin-left: 0;
	margin-right: 0;
}
</style>
</head>
<body>

	<header> </header>
	<br>
	<hr />
	<div>
		<img alt="" src="../../img/register/agreeBtnImg2.png"> <img
			alt="" src="../../img/register/agreeInput2.png"
			style="margin-left: -1%"> <img alt=""
			src="../../img/register/agreeInput3.png" style="margin-left: -1%">

	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1 class="entry-title">
					<span>정보입력</span>
				</h1>
				<hr>
				<form class="form-horizontal" action="joinAuth.jsp" method="post" name="signup"
					id="signup" enctype="multipart/form-data">
					<div class="form-group">
						<label class="control-label col-sm-3">카카오계정 이메일 <span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-envelope"></i></span> <input type="email"
									class="form-control" name="emailid" id="emailid"
									placeholder="Enter your Email ID" value="">
							</div>
							<small>입력한 이메일로 인증메일이 발송됩니다.<br>꼭 실제로 사용중인 이메일주소를
								입력해주세요. 비밀번호 분실 시 이메일을 통해 재설정이 가능합니다.
							</small>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">비밀번호 <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="password" id="password"
									placeholder="비밀번호 (8~16자리)" value="">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">비밀번호 재입력 <span
							class="text-danger">*</span></label>
						<div class="col-md-5 col-sm-8">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input type="password"
									class="form-control" name="cpassword" id="cpassword"
									placeholder="Confirm your password" value="">
							</div>
							<small>
· 비밀번호는 8~16자의 영문 대소문자, 숫자, 특수문자를 조합하여 설정해주세요.<br>· 다른사이트에서 사용하는 것과 동일하거나 쉬운 비밀번호는 사용하지 마세요.
<br>· 안전한 계정 사용을 위해 비밀번호는 주기적으로 변경해주세요.<br>
							</small>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">닉네임<span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<input type="text" class="form-control" name="mem_name"
								id="mem_name" placeholder="Enter your Name here" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">생년월일 <span
							class="text-danger">*</span></label>
						<div class="col-xs-8">
							<div class="form-inline">
								<div class="form-group">
									<select name="yyyy" class="form-control">
										<option value="0">연도</option>
										<option value="1955">1955</option>
										<option value="1956">1956</option>
										<option value="1957">1957</option>
										<option value="1958">1958</option>
										<option value="1959">1959</option>
										<option value="1960">1960</option>
										<option value="1961">1961</option>
										<option value="1962">1962</option>
										<option value="1963">1963</option>
										<option value="1964">1964</option>
										<option value="1965">1965</option>
										<option value="1966">1966</option>
										<option value="1967">1967</option>
										<option value="1968">1968</option>
										<option value="1969">1969</option>
										<option value="1970">1970</option>
										<option value="1971">1971</option>
										<option value="1972">1972</option>
										<option value="1973">1973</option>
										<option value="1974">1974</option>
										<option value="1975">1975</option>
										<option value="1976">1976</option>
										<option value="1977">1977</option>
										<option value="1978">1978</option>
										<option value="1979">1979</option>
										<option value="1980">1980</option>
										<option value="1981">1981</option>
										<option value="1982">1982</option>
										<option value="1983">1983</option>
										<option value="1984">1984</option>
										<option value="1985">1985</option>
										<option value="1986">1986</option>
										<option value="1987">1987</option>
										<option value="1988">1988</option>
										<option value="1989">1989</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										<option value="2006">2006</option>
									</select>
								</div>
										<div class="form-group">
									<select name="mm" class="form-control">
										<option value="">월</option>
										<option value="1">Jan</option>
										<option value="2">Feb</option>
										<option value="3">Mar</option>
										<option value="4">Apr</option>
										<option value="5">May</option>
										<option value="6">Jun</option>
										<option value="7">Jul</option>
										<option value="8">Aug</option>
										<option value="9">Sep</option>
										<option value="10">Oct</option>
										<option value="11">Nov</option>
										<option value="12">Dec</option>
									</select>
								</div>
								<div class="form-group">
									<select name="dd" class="form-control">
										<option value="">일</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
								</div>
						
							
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-3">Gender <span
							class="text-danger">*</span></label>
						<div class="col-md-8 col-sm-9">
							<label> <input name="gender" type="radio" value="Male"
								checked> Male
							</label>     <label> <input name="gender" type="radio"
								value="Female"> Female
							</label> <label> <input name="gender" type="radio" value="No">
								No
							</label>

						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-offset-3 col-md-8 col-sm-9">
							<span class="text-muted"><span class="label label-danger">Note:-</span>
								By clicking Sign Up, you agree to our <a href="#">Terms</a> and
								that you have read our <a href="#">Policy</a>, including our <a
								href="#">Cookie Use</a>.</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-offset-3 col-xs-10">
							<input name="Submit" type="submit" value="다음 "
								class="btn btn-primary">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<hr/ >
	<br>
	<footer> </footer>
</body>
</html>