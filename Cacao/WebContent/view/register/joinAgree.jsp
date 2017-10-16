<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우리반 연습</title>


<style type="text/css">
.Agree-wrapper {
	margin-bottom: 20px;
	border-top: 1px solid #f0f0f0;
	background: #fff;
	transform: translateZ(0);
}

input[type="checkbox"] {
	position: absolute;
	opacity: 0;
}

label p {
	line-height: 1.4em;
}

label {
	position: relative;
	display: block;
	margin: 0 0 0 16px;
	padding: 16px 0;
	border-bottom: 1px solid #f0f0f0;
	background: #fff;
	font-size: 1em;
	line-height: 1.2em;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

label:after {
	position: absolute;
	top: 50%;
	right: 20px;
	margin-top: -10px;
	height: 20px;
	content: '>';
	line-height: 20px;
	transform: rotate(90deg);
}

section {
	overflow: hidden;
	height: 0;
	transition: .3s all;
}

#Agree1:checked ~ label[for*='1']:after, #Agree2:checked ~ label[for*='2']:after,
	#Agree3:checked ~ label[for*='3']:after, #Agree4:checked ~ label[for*='4']:after
	{
	transform: rotate(270deg);
}

#Agree1:checked ~ #Content1, #Agree2:checked ~ #Content2, #Agree3:checked 
	~ #Content3, #Agree4:checked ~ #Content4 {
	height: auto;
}

section p {
	margin: 0;
	padding: 16px;
	border-bottom: 1px solid #f0f0f0;
	color: #999;
	font-size: 1em;
	line-height: 1.2em;
}
</style>



</head>


<body>


	<header> </header>
<br>
<hr/>
	<div>
		<img alt="" src="../../img/register/agreeBtnImg.png"> <img
			alt="" src="../../img/register/agreeBtn.png" style="margin-left: -1%">

	</div>
	<div class="body">
		<div class="Agree-wrapper">

			<input id="Agree1" type="checkbox" name="toggle" class="question" />
			<label for="Agree1">
				<p>Agree1</p>
			</label>

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

			<section id="Content2">
				<p>Content2</p>
			</section>

			<input id="Agree3" type="checkbox" name="toggle" class="question" />
			<label for="Agree3">
				<p>Agree3</p>
			</label>

			<section id="Content3">
				<p>Content3</p>
			</section>

			<input id="Agree4" type="checkbox" name="toggle" class="question" />
			<label for="Agree4">
				<p>Agree4</p>
			</label>

			<section id="Content4">
				<p>Content4</p>
			</section>

		</div>
	</div>

				<a href="joinInfoForm.jsp"><button>다음</button></a>

<hr / >
<br>
<footer>

</footer>

</body>
</html>