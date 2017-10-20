<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   String pjName = "/Cacao";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cacao계정만들기</title>
<link rel="stylesheet" href="/Cacao/css/register/joinAgree.css">

<script type="text/javascript">
function join() {
	  if(document.form.agree1.checked==false || 
              document.form.agree2.checked==false || 
              document.form.agree3.checked==false ||  
              document.form.agree4.checked==false){
           alert("모든 항목에 동의해주셔야 합니다");
        }
	  if(document.form.agree1.checked==true && 
              document.form.agree2.checked==true && 
              document.form.agree3.checked==true &&  
              document.form.agree4.checked==true){
		  document.form.submit();
        }
}
</script>



</head>


<body>
<div style='background:yellow; width:100%; height:5px;'></div>
<!-- <div style='width: 100%; height: 5px;'></div> -->
	
<!-- 	전체바디 div시작 -->
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
	<div>
		<img alt="" src="/Cacao/img/register/agreeBtnImg.png" style="margin-left: 10%; height: 60px"> <img
			alt="" src="/Cacao/img/register/agreeBtn.png" style="margin-left: -1%; height: 60px;">

	</div>
	<form name="form" method="post" action="<%=pjName %>/Register?cmd=joinInfoForm-page">
	<div class="body" style="width: 76%; margin-left: 10.5%;">
		<div class="Agree-wrapper">

			<input id="Agree1" type="checkbox" name="toggle" class="question" />
			
<!--		##### 동의1질문 -->
			<label for="Agree1">
				<p>Cacao 서비스 약관</p>
			</label>
<!-- 			동의1답 -->
			<section id="Content1">
			<input type="radio" name="agree1" style="margin-left: 85%; margin-top: 25px;">동의합니다
			
				<h5 style="margin-left: 2%">Cacao 서비스 약관 상세</h5>
				<p>
					여러분의 개인정보를 보호합니다.
					여러분의 개인정보의 안전한 처리는 카카오에게 있어 가장 중요한 일 중 하나입니다. 
					여러분의 개인정보는 카카오 서비스의 원활한 제공을 위하여 여러분이 동의한 목적과 범위 내에서만 이용됩니다. 
					법령에 의하거나 여러분이 별도로 동의하지 아니하는 한 카카오가 여러분의 개인정보를 제3자에게 제공하는 일은 결코 없으므로, 안심하셔도 좋습니다. 
					카카오가 여러분의 개인정보를 안전하게 처리하기 위하여 
					기울이는 노력이나 기타 상세한 사항은 카카오 개인정보 처리방침 을 참고하여 주십시오.<br> 
					
				</p>
			</section>
<!--		##### 동의2질문 -->
			<input id="Agree2" type="checkbox" name="toggle" class="question" />
			<label for="Agree2">
				<p>개인정보 수집 및 이용 동의</p>
			</label>
<!-- 			동의2답 -->				
			<section id="Content2">
			<input type="radio" name="agree2" style="margin-left: 85%; margin-top: 25px;">동의합니다
			
				<h5 style="margin-left: 2%">개인정보 수집 및 이용 동의 상세</h5>
<!-- 				<p>Content2</p> -->
					<img src="/Cacao/img/register/agreeContent2.png" style="width: 90%; margin-left: 4%;"/>

			</section>
<!--		##### 3질문 -->
			<input id="Agree3" type="checkbox" name="toggle" class="question" />
			<label for="Agree3">
				<p>프로필 정보 추가 수집 동의</p>
			</label>
<!-- 			동의3답 -->
			<section id="Content3">
			<input type="radio" name="agree3" style="margin-left: 85%; margin-top: 25px;">동의합니다
			
				<h5 style="margin-left: 2%">프로필 정보 추가 수집 동의 상세</h5>
<!-- 				<p>Content3</p> -->
				<img src="/Cacao/img/register/agreeContent3.png" style="width: 90%; margin-left: 4%;"/>
			</section>
<!--		##### 동의4질문 -->
			<input id="Agree4" type="checkbox" name="toggle" class="question" />
			<label for="Agree4">
				<p>이벤트 및 마케팅 활용 동의</p>
			</label>
<!-- 			동의4답 -->
			<section id="Content4">
			<input type="radio" name="agree4" style="margin-left: 85%; margin-top: 25px;">동의합니다
			
				<h5 style="margin-left: 2%">이벤트 및 마케팅 활용 동의 상세</h5>
<!-- 				<p>Content4</p>				 -->
				<img src="/Cacao/img/register/agreeContent4.png" style="width: 90%; margin-left: 4%;"/>
				
			</section>

		</div>
	</div>
	
			<button type="button"  value="다음" class="button button5" style="margin-left: 45%;" onclick="join()">다음</button>

</form>
      <footer>
               <hr/>
               
               <div>
               	<img src="/Cacao/img/login/loginfoot.png" style="height: 55px; margin-left: 23%;"/>
               
               </div>
               </footer>
<br>
</div>

</body>
</html>