<%@page import="cacao.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String pjName = "/Cacao";
	String findPwdMail = (String) session.getAttribute("findPwdMail");
	String findRandom = (String) session.getAttribute("findRandom");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#findBtn').click(function(){
		
		var inputAuthRandom= $('#findMail').val();
		
		if(inputAuthRandom=="<%=findRandom%>"){
			$('#frm').submit();
		}else{
			alert('잘못된 인증번호 입니다. 확인해주세요.');
			$('#findMail').val("");
			$('#findMail').focus();
		}
		
		
	});
})
</script>
</head>
<body>
<br/>
<br/>
	<% if( findPwdMail==null ){
	%>
		등록된 회원 정보가 없습니다.
	<%
	}else{
	%>

<form id="frm" action="<%=pjName%>/Login?cmd=loginPwdFindChage-page" method="post">
<div class="form-group">
 	<label class="col-md-4 control-label" for="findMail"><%=findPwdMail %><br/>
 		위 메일로 발송된 6자리 인증번호를 입력해주세요.</label> 
  
  <div class="col-md-5">
  <input id="findMail" name="findMail" type="text" placeholder="인증코드를 입력해주세요" class="form-control input-md" required="" values="">
    
  </div>
</div>

<div class="form-group" style="margin-left: 200px">
<input type="button" name="findBtn" id="findBtn" value=" 확 인   "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>

	<%
	}
	%>

</body>
</html>