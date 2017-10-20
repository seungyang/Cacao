<%@page import="cacao.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String pjName = "/Cacao";
	List<Member> findEmail = (List<Member>)request.getAttribute("findEmail");

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
		
		
	})
</script>
</head>
<body>
<br/>
<br/>

<form action="<%=pjName%>/cmd=loginEmailFind-page">
<div class="form-group">
  <label class="col-md-4 control-label" for="findNick">닉네임</label>  
  <div class="col-md-5">
  <input id="findNick" name="findNick" type="text" placeholder="가입시 입력한 닉네임을 적어주세요" class="form-control input-md" required="" values="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="findBirth">생년월일 (Ex.19990101)</label>  
  <div class="col-md-5">
  <input id="findBirth" name="findBirth" type="text" placeholder="YYYYMMDD" class="form-control input-md" required="" values="">
    
  </div>
</div>
<div class="form-group" style="margin-left: 200px">
<input type="submit" name="findBtn" id="findBtn" value=" 검 색  "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>


<div class="form-group">
  <label class="col-md-4 control-label" for="findEmail">검색된 이메일 주소</label>  
  
	<%	if (findEmail == null || findEmail.size()==0){%>
		<div class="col-md-5">
		  <input id="findEmail" name="findEmail" type="text" placeholder="검색된 이메일이 없습니다." class="form-control input-md" required="" readonly="readonly">
		  </div>
	<% }else{
		for(int i = 0 ; i < findEmail.size();i++){
			%>
		  <div class="col-md-5">
		  <input id="findEmail" name="findEmail" type="text" placeholder="찾은 이메일" class="form-control input-md" required="" readonly="readonly">
		  </div>
		  
		  <% }//End of For %>
	<% }// End of If %>
		
</div>






</body>
</html>