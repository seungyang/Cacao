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
	$(function(){
		$('#findBtn').click(function(){
			if($('#findMail').val()==""){
				alert('이메일을 작성해주세요');
				return;
			}else if($('#findNick').val()==""){
				alert('닉네임을 작성해주세요');
				return;
			}else 	if($('#findBirth').val()==""){
				alert('생년월일을 작성해주세요');
				return;
			}else{
			$('#frm').submit();
			}
		});
	});
</script>
</head>
<body>
<br/>
<br/>

<form id='frm' action="<%=pjName%>/Login?cmd=loginPwdFindSend-page" method="post">
<div class="form-group">
 
  <label class="col-md-4 control-label" for="findMail">이메일</label>  
  <div class="col-md-5">
  <input id="findMail" name="findMail" type="text" placeholder="메일을 적어주세요" class="form-control input-md" required="" >
   
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="findNick">닉네임</label>  
  <div class="col-md-5">
  <input id="findNick" name="findNick" type="text" placeholder="가입시 입력한 닉네임을 적어주세요" class="form-control input-md" required="" >
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="findBirth">생년월일 (Ex.19990101)</label>  
  <div class="col-md-5">
  <input id="findBirth" name="findBirth" type="text" placeholder="YYYYMMDD" class="form-control input-md" required="" >
    
  </div>
</div>
<div class="form-group" style="margin-left: 180px">
<input type="button" name="findBtn" id="findBtn" value=" 찾  기   "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>


</body>
</html>