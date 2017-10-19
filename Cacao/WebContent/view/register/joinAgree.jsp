<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>
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
<div>
	<header style="margin-top: 2%">
<div >
	<font style="font-size: 22; font-weight: bold; margin-left: 2%; color: grey">Cacao 계정만들기</font><img src="../../img/login/loginheader.png" style="height: 20px; margin-left: 70%;"/>
</div>
<hr/>
            </header> 
<br>
	<div>
		<img alt="" src="../../img/register/agreeBtnImg.png" style="margin-left: 10%; height: 60px"> <img
			alt="" src="../../img/register/agreeBtn.png" style="margin-left: -1%; height: 60px;">

	</div>
	<form name="form" method="post" action="joinInfoForm.jsp">
	<div class="body" style="width: 76%; margin-left: 10.5%;">
		<div class="Agree-wrapper">

			<input id="Agree1" type="checkbox" name="toggle" class="question" />
			
			<label for="Agree1">
				<p>Agree1</p>
			</label>
			<input type="radio" name="agree1">동의합니다

			<section id="Content1">
				<p>
					Content1 <br> * ‘카카오 서비스’라 함은 (주) 카카오가 제공하는 “카카오” 브랜드를 사용하는
					서비스를 말합니다. 다양한 카카오 서비스가 여러분을 찾아갑니다.
				</p>
				
			</section>

			<input id="Agree2" type="checkbox" name="toggle" class="question" />
			<label for="Agree2">
				<p>Agree2</p>
			</label>
				<input type="radio" name="agree2">동의합니다
			<section id="Content2">
				<p>Content2</p>
			</section>

			<input id="Agree3" type="checkbox" name="toggle" class="question" />
			<label for="Agree3">
				<p>Agree3</p>
			</label>
				<input type="radio" name="agree3">동의합니다

			<section id="Content3">
				<p>Content3</p>
			</section>

			<input id="Agree4" type="checkbox" name="toggle" class="question" />
			<label for="Agree4">
				<p>Agree4</p>
			</label>
				<input type="radio" name="agree4">동의합니다

			<section id="Content4">
				<p>Content4</p>
			</section>

		</div>
	</div>
	

			<button type="button" value="다음" class="button button5" style="margin-left: 45%; height: 40px;" onclick="join()"></button>
</form>
      <footer>
               <hr/>
               
               <div>
               	<img src="../../img/login/loginfoot.png" style="height: 55px; margin-left: 23%;"/>
               
               </div>
               </footer>
<br>
</div>

</body>
</html>