<%@page import="cacao.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%
   String pjName = "/Cacao";
        
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
	$(function() {
		if($('#pwd1').val()==""){
			alert("비밀번호를 확인해주세요")
			return;
		}else if($('#pwd2').val()==""){
			alert("비밀번호를 확인해주세요")
			return;
		}else if($('#pwd1').val()!=$('#pwd2').val()){
			alert("비밀번호를 확인해주세요")
			return;	
		}else {
			$('#frm').submit();
		}
		
	})
</script>
</head>
<body>
<br/>
<br/>

<form id='frm' action='<%=pjName %>/Login?cmd=loginPwdFindChage-page'>
<div class="form-group">
 	<label class="col-md-4 control-label" for="findMail">새로운 비밀번호</label> 
  <div class="col-md-5">
  <input id="pwd1" name="pwd1" type="password" placeholder="" class="form-control input-md" required="" >
  </div>
</div>
<div class="form-group">
 	<label class="col-md-4 control-label" for="findMail">새로운 비밀번호 확인</label> 
  <div class="col-md-5">
  <input id="pwd2" name="pwd2" type="password" placeholder="" class="form-control input-md" required="" >
  </div>
</div>
<div class="form-group" style="margin-left: 200px">
<input type="button" name="findBtn" id="pwdBtn" value=" 확 인   "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>

</body>
</html>