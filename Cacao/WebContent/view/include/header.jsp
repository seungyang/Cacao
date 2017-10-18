<%@ page contentType="text/html; charset=utf-8"%>
<%
 String sessionalert = (String)session.getAttribute("useremail");
System.out.print(sessionalert);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<!-- 헤어css경로 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/header.css">
<!-- 부트스트랩링크 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 마우스 오버 이벤트 -->
<script type="text/javascript">
   $(document).ready(
         function() {
            $(".dropdown").hover(
                  function() {
                     $('.dropdown-menu', this).not('.in .dropdown-menu')
                           .stop(true, true).slideDown("400");
                     $(this).toggleClass('open');
                  },
                  function() {
                     $('.dropdown-menu', this).not('.in .dropdown-menu')
                           .stop(true, true).slideUp("400");
                     $(this).toggleClass('open');
                  });
         });
</script>


<script type="text/javascript">

// 로그인버튼 클릭시 로그인창 뜸
   function openWindow() {
<<<<<<< HEAD
      window.open("/Cacao/view/login/lMain.jsp", "로그인폼", "width=1000px, height=600px");
=======
      window.open("/Cacao/view/login/loginForm.jsp", "로그인폼", "width=1000px, height=600px");
>>>>>>> branch 'master' of https://github.com/seungyang/Cacao
   }
</script>
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
            <h1 class="navbar-brand"
               style="margin-left: -10em; margin-top: 0.5em">
               <a href="/Cacao/Main?cmd=main-page" class="link_logo"> <span
                  class="tit_friends tit_logo">Team Cacao</span>
               </a>
            </h1>
            <!-- /logo -->
         </div>
         <!-- main nav -->
         <nav class="collapse navigation navbar-collapse navbar-center"
            role="navigation">


            <ul class="nav navbar-nav">




               <li class="dropdown mega-dropdown"><a
                  onclick="location.href='/Cacao/Product?cmd=pCateView-page'"
                  class="dropdown-toggle" data-toggle="dropdown">캐릭터 <span
                     class="caret"></span></a>
                  <ul class="dropdown-menu mega-dropdown-menu">

                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/라이언.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/무지.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/어피치.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/프로도.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/네오.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/튜브.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/제이지.png" /></li>
                        </ul>
                     </li>
                     <li class="col-sm-1">
                        <ul>
                           <li><img src="/Cacao/img/main/콘.png" /></li>
                        </ul>
                     </li>
                  </ul></li>



               <li class="dropdown mega-dropdown"><a
                  onclick="location.href='/Cacao/Product?cmd=pCateView-page'"
                  class="dropdown-toggle" data-toggle="dropdown">카테고리<span
                     class="caret"></span></a>
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
                  </ul></li>




               <li class="dropdown mega-dropdown"><a
                  onclick="location.href='/Cacao/MyPage?cmd=main-page'"
                  class="dropdown-toggle" data-toggle="dropdown">마이페이지 <span
                     class="caret"></span></a>
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
                  </ul></li>



               <li class="dropdown mega-dropdown"><a
                  onclick="location.href='/Cacao/Service?cmd=main-page'"
                  class="dropdown-toggle" data-toggle="dropdown">고객센터<span
                     class="caret"></span></a>
                  <ul class="dropdown-menu mega-dropdown-menu">
                     <li class="col-sm-3">
                        <ul>
                           <li><h4>공지사항</h4></li>
                           <li><a href="#"><h4>FAQ</h4></a></li>

                        </ul>
                     </li>


                  </ul></li>
               <li><a href="#">매장안내</a></li>
               <li><a href="#">뮤지엄</a></li>

            </ul>



            <ul class="nav navbar-nav navbar-right">

               <li>



                  <div class="input-group stylish-input-group"
                     style="width: 10em; margin-top: 15%">
                     <input type="text" class="form-control" placeholder="Search">
                     <span class="input-group-addon">
                        <button type="submit">
                           <span class="glyphicon glyphicon-search"></span>
                        </button>
                     </span>
                  </div>


               </li>


               <!-- 로그인 버튼 -->

               <li><img style="width:30px;height:30px;margin-top:25px;margin-left:30px" src="/Cacao/img/main/login.png" onclick="javascript:openWindow(); "/></li>
               <li><img style="width:30px;height:30px;margin-top:25px;margin-left:30px" src="/Cacao/img/main/non.png"/></li>
               <li><img style="width:30px;height:30px;margin-top:25px;margin-left:30px" src="/Cacao/img/main/cart.png"/></li>
               <li><img style="width:30px;height:30px;margin-top:25px;margin-left:30px" src="/Cacao/img/main/foreign.png"/></li>






<!--             <li><button name="open_btn" style="background-image: url('/Cacao/img/main/로그아웃.png');width:100px; height:100px"  ></button></li> -->
            </ul>
            




         </nav>

         <!-- /main nav -->
      </div>

   </header>






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