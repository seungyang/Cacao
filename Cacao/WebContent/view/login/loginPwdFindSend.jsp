<%@page import="cacao.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String pjName = "/Cacao";
	if(session.getAttribute("findPwdResult").equals("0")){
		out.println("<script>alert('입력된 정보가 올바르지 않습니다.');location.href='/Cacao/Login?cmd=loginPwdFind-page';</script>");
	}else{
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<br/>
<br/>

<form >
<div class="form-group">
 	<label class="col-md-3 control-label" for="findMail">사용자가 입력한 이메일</label> <br/>
  <label class="col-md-4 control-label" for="findMail">이메일</label>  
  <div class="col-md-5">
  <input id="findMail" name="findMail" type="text" placeholder="메일을 적어주세요" class="form-control input-md" required="" values="">
    
  </div>
</div>

<div class="form-group" style="margin-left: 200px">
<input type="button" name="findBtn" id="findBtn" value=" 확 인   "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>


</body>
</html>