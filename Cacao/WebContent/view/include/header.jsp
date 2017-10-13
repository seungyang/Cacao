<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 마우스 오버 이벤트 -->
<script type="text/javascript">
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
});
</script>


<!-- drop down event -->
<style type="text/css">
#imaginary_container{
    margin-top:20%; /* Don't copy this */
}
.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
	border-right:0; 
	box-shadow:0 0 0; 
	border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}



.mega-dropdown {
  position: static !important;
}
.mega-dropdown-menu {
    padding: 20px 0px;
    width: 100%;
    box-shadow: none;
    -webkit-box-shadow: none;
}
.mega-dropdown-menu > li > ul {
  padding: 0;
  margin: 0;
}
.mega-dropdown-menu > li > ul > li {
  list-style: none;
}
.mega-dropdown-menu > li > ul > li > a {
  display: block;
  color: #222;
  padding: 3px 5px;
}
.mega-dropdown-menu > li ul > li > a:hover,
.mega-dropdown-menu > li ul > li > a:focus {
  text-decoration: none;
}
.mega-dropdown-menu .dropdown-header {
  font-size: 18px;
  color: #ff3546;
  padding: 5px 60px 5px 5px;
  line-height: 30px;
}

.carousel-control {
  width: 30px;
  height: 30px;
  top: -35px;

}
.left.carousel-control {
  right: 30px;
  left: inherit;
}
.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right {
  font-size: 12px;
  background-color: #fff;
  line-height: 30px;
  text-shadow: none;
  color: #333;
  border: 1px solid #ddd;
}



/* 로그인CSS */
/****** LOGIN MODAL ******/
.loginmodal-container {
   padding: 30px;
   /*   max-width: 350px; */
   /*   width: 100% !important; */
   background-color: #F7F7F7;
   margin: 0 auto;
   border-radius: 2px;
   box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.3);
   overflow: hidden;
   font-family: roboto;
   background-color: white;
   height: 400px;
   width: 350px;
}

.loginmodal-container h1 {
   text-align: center;
   font-size: 1.8em;
   font-family: roboto;
}

.loginmodal-container input[type=submit] {
   width: 100%;
   display: block;
   margin-bottom: 10px;
   position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
   height: 44px;
   font-size: 16px;
   width: 100%;
   margin-bottom: 10px;
   -webkit-appearance: none;
   background: #fff;
   border: 1px solid #d9d9d9;
   border-top: 1px solid #c0c0c0;
   /* border-radius: 2px; */
   padding: 0 8px;
   box-sizing: border-box;
   -moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover
   {
   border: 1px solid #b9b9b9;
   border-top: 1px solid #a0a0a0;
   -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
   -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
   box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.loginmodal {
   text-align: center;
   font-size: 14px;
   font-family: 'Arial', sans-serif;
   font-weight: 700;
   height: 36px;
   padding: 0 8px;
   /* border-radius: 3px; */
   /* -webkit-user-select: none;
  user-select: none; */
}

.loginmodal-submit {
   /* border: 1px solid #3079ed; */
   border: 0px;
   color: #fff;
   text-shadow: 0 1px rgba(0, 0, 0, 0.1);
   background-color: #4d90fe;
   padding: 17px 0px;
   font-family: roboto;
   font-size: 14px;
   /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
   /* border: 1px solid #2f5bb7; */
   border: 0px;
   text-shadow: 0 1px rgba(0, 0, 0, 0.3);
   background-color: #357ae8;
   /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
   text-decoration: none;
   color: #666;
   font-weight: 400;
   text-align: center;
   display: inline-block;
   opacity: 0.6;
   transition: opacity ease 0.5s;
}

.modal-header {
   min-height: 16.43px;
   padding: 15px;
   border-bottom: 4px solid #ffde00;
}








.stepwizard-row {
   display: table-row;
}

.stepwizard {
   display: table;
   width: 100%;
   position: relative;
}

.stepwizard-step button[disabled] {
   opacity: 1 !important;
   filter: alpha(opacity = 100) !important;
}

.stepwizard-row:before {
   top: 14px;
   bottom: 0;
   position: absolute;
   content: " ";
   width: 100%;
   height: 1px;
   background-color: #ccc;
   z-order: 0;
}

.stepwizard-step {
   display: table-cell;
   text-align: center;
   position: relative;
}

.btn-circle {
   width: 30px;
   height: 30px;
   text-align: center;
   padding: 6px 0;
   font-size: 12px;
   line-height: 1.428571429;
   border-radius: 0px;
}

.form-control {
   margin-bottom: 10px;
}







</style>






</head>




<body>
	<header id="navigation" class="navbar-fixed-top">
		<div class="container">

			<div class="navbar-header">
				<!-- responsive nav button -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- /responsive nav button -->

				<!-- logo -->
				<h1 class="navbar-brand" style="margin-left: -10em;margin-top: 0.5em" >
					<a href="/Cacao/Main?cmd=main-page"" class="link_logo">
						<span class="tit_friends tit_logo" >KAKAO FRIENDS</span>			
					</a>
				</h1>
				<!-- /logo -->
			</div>
			<!-- main nav -->
			<nav class="collapse navigation navbar-collapse navbar-center"
				role="navigation">
			
			
			<ul  class="nav navbar-nav">
				
				
				
				
				<li class="dropdown mega-dropdown">
				<a onclick="location.href='/Cacao/Product?cmd=pCateView-page'" class="dropdown-toggle" data-toggle="dropdown">캐릭터 <span class="caret"></span></a>				
				<ul class="dropdown-menu mega-dropdown-menu">
					
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/라이언.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/무지.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/어피치.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/프로도.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/네오.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/튜브.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/제이지.png"/></li>
						</ul>
					</li>
					<li class="col-sm-1">
						<ul>
							<li><img src="/Cacao/img/main/콘.png"/></li>
						</ul>
					</li>
				</ul>				
			</li>
			
			
			
				<li class="dropdown mega-dropdown">
				<a onclick="location.href='/Cacao/Product?cmd=pCateView-page'" class="dropdown-toggle" data-toggle="dropdown">카테고리<span class="caret"></span></a>				
				<ul class="dropdown-menu mega-dropdown-menu">
					
					<li class="col-sm-2">
						<ul>
							<li class="dropdown-header">인형/피규어</li>
							<li><a href="#">미니인형</a></li>
                            <li><a href="#">25cm/35cm인형</a></li>
                            <li><a href="#">대형인형</a></li>
							<li><a href="#">키체인인형</a></li>
							<li><a href="#">피규어</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">여행/레저</li>
                            <li><a href="#">여행</a></li>
							<li><a href="#">골프</a></li>
							<li><a href="#">물놀이</a></li>
						</ul>
					</li>
					<li class="col-sm-2">
						<ul>
							<li class="dropdown-header">리빙</li>
							<li><a href="#">컵/텀블러</a></li>
                            <li><a href="#">패브릭</a></li>
                            <li><a href="#">탈취/방향제</a></li>
							<li><a href="#">주방용품</a></li>
							<li><a href="#">미용/욕실용품</a></li>
							<li><a href="#">생활소품</a></li>
							<li><a href="#">푸드</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">생활테크</li>
                            <li><a href="#">휴대폰 케이스</a></li>
							<li><a href="#">휴대폰 악세서리</a></li>
							<li><a href="#">노트북 악세서리</a></li>
							<li><a href="#">소형 전자</a></li>
						</ul>
					</li>
					<li class="col-sm-2">
						<ul>
							<li class="dropdown-header">잡화</li>
							<li><a href="#">신발</a></li>
                            <li><a href="#">파우치/지갑/가방</a></li>
                            <li><a href="#">패션소품</a></li>
							<li><a href="#">우산</a></li>
							<li><a href="#">모자</a></li>
							<li><a href="#">교통카드</a></li>
							<li><a href="#">시즌소품</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">유아</li>
                            <li><a href="#">식기</a></li>
							<li><a href="#">잡화</a></li>
						</ul>
					</li>
					<li class="col-sm-2">
						<ul>
							<li class="dropdown-header">의류</li>
							<li><a href="#">여성의류</a></li>
                            <li><a href="#">남성의류</a></li>
                            <li><a href="#">상의</a></li>
							<li><a href="#">잠옷</a></li>
							<li><a href="#">양말</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">뮤지엄</li>
                            <li><a href="#">뮤지엄</a></li>
						</ul>
					</li>
					<li class="col-sm-2">
						<ul>
							<li class="dropdown-header">쥬얼리</li>
							<li><a href="#">귀걸이</a></li>
                            <li><a href="#">케이스</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">수비니어</li>
                            <li><a href="#">수비니어</a></li>

						</ul>
					</li>
					<li class="col-sm-2">
						<ul>
							<li class="dropdown-header">문구</li>
							<li><a href="#">스티커</a></li>
                            <li><a href="#">필기구</a></li>
                            <li><a href="#">노트/메모</a></li>
							<li><a href="#">카트/엽서</a></li>
							<li><a href="#">파일</a></li>
							<li><a href="#">데스크 소품</a></li>
							<li><a href="#">선물 포장</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">오마이프렌즈</li>
                            <li><a href="#">이지웨어</a></li>
							<li><a href="#">액티브웨어</a></li>
							<li><a href="#">악세서리</a></li>
						</ul>
					</li>
				</ul>				
			</li>
			
			
			
			
			<li class="dropdown mega-dropdown">
				<a onclick="location.href='/Cacao/MyPage?cmd=main-page'" class="dropdown-toggle" data-toggle="dropdown">마이페이지 <span class="caret"></span></a>				
				<ul class="dropdown-menu mega-dropdown-menu">
					
					<li class="col-sm-3">
						<ul>
							<li><h4>로그인</h4></li>
							<li><a href="#"><h4>주문내역</h4></a></li>
                            <li><a href="#"><h4>찜</h4></a></li>
                            <li><a href="#"><h4>취소및교환</h4></a></li>
							<li><a href="#"><h4>1:1문의</h4></a></li>

						</ul>
					</li>
				</ul>				
			</li>
            
            
            
            <li class="dropdown mega-dropdown">
    			<a onclick="location.href='/Cacao/Service?cmd=main-page'" class="dropdown-toggle" data-toggle="dropdown">고객센터<span class="caret"></span></a>				
				<ul class="dropdown-menu mega-dropdown-menu">
					<li class="col-sm-3">
    					<ul>
							<li><h4>공지사항</h4></li>
							<li><a href="#"><h4>FAQ</h4></a></li>
                            
						</ul>
					</li>
				
                   
				</ul>				
			</li>
            <li><a href="#">매장안내</a></li>
            <li><a href="#">뮤지엄</a></li>
			
			</ul>
			
			
			
			<ul class="nav navbar-nav navbar-right">
        
         <li>
        
       
           
                <div class="input-group stylish-input-group" style="width:10em; margin-top:15%">
                    <input type="text" class="form-control"  placeholder="Search"  >
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
           
       
	 </li>
     	 
       
<!-- 로그인 버튼 -->
        <li><a href="#" data-toggle="modal" data-target="#myModal">login</a></li>
      </ul>	
			
        
        
      
      
			</nav>
			
			<!-- /main nav -->
		</div>

	</header>
	
	
	
	
	

<!-- ################################################ -->
  <!-- Modal_LOGIN -->
   <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">

         <!-- Modal content-->
         <div class="modal-content" style="height: 700px;">
         <!-- Modal_LOGIN_TITLE -->
            <div class="modal-header">
                       <ul>
                       <li>
               <h1>Cacao 로그인</h1>
                       </li>
                       <li> <button type="button" class="close" data-dismiss="modal">&times;</button></li>
                       </ul>

            </div>
<!--             Modal_LOGIN_TITLE FINISHE -->
            <br>

<!-- Modal_LOGIN_BODY -->
            <div class="modal-dialog">
               <div class="loginmodal-container" style="background-color: white;">
                  <h1 style="text-align: left;">Cacao</h1>
                  <br>
                  <form>
                     <input type="text" name="user" placeholder="카카오계정 (이메일)">
                     <input type="password" name="pass" placeholder="비밀번호(4~16자리)">
                     <input type="submit" name="login" class="login loginmodal-submit"
                        value="로그인" style="background-color: #ffda01;">
                  </form>


                  <div>
                     <hr />
                     <a href="" data-toggle="modal" data-target="#signUpModal">회원가입</a>
                     - <a href="#">이메일찾기</a>

                  </div>
               </div>
            </div>
<!--             Modal_LOGIN_BODY finish -->
<!-- Modal_LOGIN_FOOTER -->
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
<!--             Modal_LOGIN_FOOTER finish -->




			<!-- Modal_회원가입_시작 -->
   <div class="modal fade text-center" id="signUpModal" role="dialog">
      <div class="modal-dialog modal-sm">
         <div class="modal-content" style="margin-left: -150%; width: 1200px;">
               <!-- Modal_header_시작 -->
            <div class="modal-header">
               <button class="close" data-dismiss="modal">×</button>
               <h3 style="text-align: left;">Cacao계정만들기</h3>
            </div>
            
            <!-- Modal_header_끝 -->
            
            <!-- Modal_body_시작 -->
            
            <div class="modal-body" style="height: 650px; width: 1200px;">
            
            <!-- Modal_body_title_시작 -->
               <div class="stepwizard" style="height: 30%">
                  <div class="stepwizard-row setup-panel">
                     <div class="stepwizard-step">
                        <a href="#step-1" type="button"
                           class="btn btn-primary btn-circle">1</a>
                        <p>약관동의</p>
                     </div>
                     <div class="stepwizard-step">
                        <a href="#step-2" type="button"
                           class="btn btn-default btn-circle" disabled="disabled">2</a>
                        <p>정보입력</p>
                     </div>
                     <div class="stepwizard-step">
                        <a href="#step-3" type="button"
                           class="btn btn-default btn-circle" disabled="disabled">3</a>
                        <p>가입인증</p>
                     </div>

                     <div class="stepwizard-step">
                        <a href="#step-4" type="button"
                           class="btn btn-default btn-circle" disabled="disabled">4</a>
                        <p>가입완료</p>
                     </div>
                  </div>
               </div>

<!-- step1 정보입력 패이지 시작 -->
               <form role="form">
                  <div class="row setup-content" id="step-1">
                     <div class="col-xs-12" style="margin-top: -5em">
                        <h3>약관동의</h3>
                        <div class="container">
                           <div class="row">
                              <form action="#">
                                 <div class="form-group">
                                    <!-- 동의페이지 본문 accordian -->
                                    <div class="faq-wrapper">
                                       <input id="agree1" type="checkbox" name="toggle"
                                          class="agree" /> <label for="agree1">
                                          <p>AgreeAll</p>
                                       </label>

                                       <section id="content1">
                                          <p>content1</p>
                                       </section>

                                       <input id="agree2" type="checkbox" name="toggle"
                                          class="agree" /> <label for="agree2">
                                          <p>Agree2</p>
                                       </label>

                                       <section id="content2">
                                          <p>content2</p>
                                       </section>

                                       <input id="agree3" type="checkbox" name="toggle"
                                          class="agree" /> <label for="agree3"> Agree3 </label>

                                       <section id="content3">
                                          <p>content3</p>
                                       </section>

                                       <input id="agree4" type="checkbox" name="toggle"
                                          class="agree" /> <label for="agree4">
                                          <p>Agree4</p>
                                       </label>

                                       <section id="content4">
                                          <p>content4</p>
                                       </section>
                                    </div>
                                    <!-- 동의페이지END -->
                                 </div>
                              </form>
                           </div>
                        </div>
                        <button a href="#step-2"
                           class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
                     </div>
                  </div>
                  <!-- step1 정보입력 패이지 END-->


<!--                   step2 정보입력 패이지 -->
<!--                   <div class="row setup-content" id="step-2"> -->
<!--                      <div class="col-xs-12"> -->
<!--                         <div class="col-md-12" style="margin-top: -5em;"> -->
<!--                            <h3>정보입력</h3> -->
<!--                            <div class="col-md-6 col-md-offset-3 "> -->
<!--                               <div class="row"> -->
<!--                                  <div class="col-sm-12 col-md-12"> -->
<!--                                     <form class="form-horizontal" id="myForm"> -->
<!--                                        <div class="form-group" -->
<!--                                           style="width: 500%; margin-left: -30%;"> -->
<!--                                                         정보입력란 -->
<!--                                           <div class="col-xs-12 col-sm-12 col-md-4 well well-sm"> -->
<!--                                              <input class="form-control" name="firstname" -->
<!--                                                 placeholder="First Name" type="text" required autofocus /> -->
<!--                                              <input class="form-control" name="youremail" -->
<!--                                                 placeholder="Your Email" type="email" /> <input -->
<!--                                                 class="form-control" name="reenteremail" -->
<!--                                                 placeholder="Re-enter Email" type="email" /> <input -->
<!--                                                 class="form-control" name="password" -->
<!--                                                 placeholder="New Password" type="password" /> <label -->
<!--                                                 for=""> Birth Date</label> -->
<!--                                              <div class="row"> -->
<!--                                                 <div class="col-xs-4 col-md-4"> -->
<!--                                                    <select class="form-control"> -->
<!--                                                       <option value="Month">Month</option> -->
<!--                                                    </select> -->
<!--                                                 </div> -->
<!--                                                 <div class="col-xs-4 col-md-4"> -->
<!--                                                    <select class="form-control"> -->
<!--                                                       <option value="Day">Day</option> -->
<!--                                                    </select> -->
<!--                                                 </div> -->
<!--                                                 <div class="col-xs-4 col-md-4"> -->
<!--                                                    <select class="form-control"> -->
<!--                                                       <option value="Year">Year</option> -->
<!--                                                    </select> -->
<!--                                                 </div> -->
<!--                                              </div> -->
<!--                                              <label class="radio-inline"> <input type="radio" -->
<!--                                                 name="sex" id="inlineCheckbox1" value="male" /> Male -->
<!--                                              </label> <label class="radio-inline"> <input type="radio" -->
<!--                                                 name="sex" id="inlineCheckbox2" value="female" /> -->
<!--                                                 Female -->
<!--                                              </label> <br /> <br /> -->
<!--                                           </div> -->
<!--                                                         정보입력란 END -->
<!--                                        </div> -->
<!--                                        <div class="form-actions"> -->
<!--                                           <button href="#step-3" -->
<!--                                              class="btn btn-primary nextBtn btn-lg pull-right" -->
<!--                                              type="button">Next</button> -->
<!--                                        </div> -->
<!--                                     </form> -->
<!--                                  </div> -->

<!--                               </div> -->
<!--                            </div> -->
<!--                         </div> -->
<!--                      </div> -->
<!--                   </div> -->





<!--                   <div class="row setup-content" id="step-3"> -->
<!--                      <div class="col-xs-12"> -->
<!--                         <div class="col-md-12" style="margin-top: -5em;"> -->
<!--                            <h3>인증번호</h3> -->
<!--                            <div class="col-md-6 col-md-offset-3 "> -->
<!--                               <div class="row"> -->
<!--                                  <div class="col-sm-12 col-md-12"> -->
<!--                                     <form class="form-horizontal" id="myForm"> -->
<!--                                        <div class="form-group" -->
<!--                                           style="width: 500%; margin-left: -30%;"> -->
<!--                                                         정보입력란 -->
<!--                                           <div class="col-xs-12 col-sm-12 col-md-4 well well-sm"> -->
<!--                                              <input class="form-control" name="firstname" -->
<!--                                                 placeholder="전송된 번호를 입력해주세요" type="text" required -->
<!--                                                 autofocus /> <br /> <br /> -->
<!--                                           </div> -->
<!--                                                         정보입력란 END -->
<!--                                        </div> -->
<!--                                        <div class="form-actions"> -->
<!--                                           <button href="#step-4" -->
<!--                                              class="btn btn-primary nextBtn btn-lg pull-right" -->
<!--                                              type="button">Next</button> -->
<!--                                        </div> -->
<!--                                     </form> -->
<!--                                  </div> -->

<!--                               </div> -->
<!--                            </div> -->
<!--                         </div> -->
<!--                      </div> -->
<!--                   </div> -->




<!--                   <div class="row setup-content" id="step-4"> -->
<!--                      <div class="col-xs-12"> -->
<!--                         <div class="col-md-12" style="margin-top: -5em;"> -->
<!--                            <h3>가입축하드립니다!!!!!</h3> -->
<!--                            <div class="col-md-6 col-md-offset-3 "> -->
<!--                               <div class="row"> -->
<!--                                  <div class="col-sm-12 col-md-12"> -->

<!--                                     <div class="form-actions"> -->
<!--                                        <button type="button" data-dismiss="modal">Close</button> -->
<!--                                     </div> -->
<!--                                  </div> -->

                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
            <!-- Modal_body_끝 -->
			




         </div>
      </div>
   </div>



	
	
	
	
	
	
	
	
	
	<!--
        End Fixed Navigation
        ==================================== -->
        <!-- main jQuery -->
	<script src="/Cacao/js/vendor/jquery-1.11.1.min.js"></script>
	<!-- Bootstrap -->
	<script src="/Cacao/js/bootstrap.min.js"></script>
	<!-- jquery.nav -->
	<script src="/Cacao/js/jquery.nav.js"></script>
	<!-- Portfolio Filtering -->
	<script src="/Cacao/js/jquery.mixitup.min.js"></script>
	<!-- Fancybox -->
	<script src="/Cacao/js/jquery.fancybox.pack.js"></script>
	<!-- Parallax sections -->
	<script src="/Cacao/js/jquery.parallax-1.1.3.js"></script>
	<!-- jQuery Appear -->
	<script src="/Cacao/js/jquery.appear.js"></script>
	<!-- countTo -->
	<script src="/Cacao/js/jquery-countTo.js"></script>
	<!-- owl carousel -->
	<script src="/Cacao/js/owl.carousel.min.js"></script>
	<!-- WOW script -->
	<script src="/Cacao/js/wow.min.js"></script>
	<!-- theme custom scripts -->
	<script src="/Cacao/js/main.js"></script>

</body>
</html>