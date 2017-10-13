<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
</head>
<body>
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
            Modal_LOGIN_TITLE FINISHE
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
            Modal_LOGIN_BODY finish
<!-- Modal_LOGIN_FOOTER -->
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
            Modal_LOGIN_FOOTER finish
         </div>
      </div>
   </div>

            
            


</body>
</html>