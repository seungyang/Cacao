<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title> window 예제 </title>
<style type="text/css">
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

.loginmodal-container a {
   text-decoration: none;
   color: #666;
   font-weight: 400;
   text-align: center;
   display: inline-block;
   opacity: 0.6;
   transition: opacity ease 0.5s;
}



</style>


<script type="text/javascript">

// 로그인버튼
	function openWindow() {
		window.open("../register/joinAgree.jsp", "로그인폼", "width=467, height=558");
	}
</script>



</head>

<body>
<div>
<header>
<h1>Cacao 로그인</h1><hr/>
            </header> 
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
                     <a href="../register/joinAgree.jsp">회원가입</a>
                     - <a href="#">이메일찾기</a>

                  </div>
               </div>
               <footer>
               <hr/>
               
               풋
               </footer>
            </div>




</body>
</html>