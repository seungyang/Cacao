Skip to content
This repository
Search
Pull requests
Issues
Marketplace
Explore
 @hyunbeen
 Sign out
 Watch 0
  Star 0  Fork 0 seungyang/Cacao
 Code  Issues 0  Pull requests 0  Projects 1  Wiki  Insights
Branch: master Find file Copy pathCacao/Cacao/WebContent/view/yourpage/yourMain.jsp
275f982  15 minutes ago
 kosta 1019 주문하기시 제품구매에 대한 정보 출력 및 메인페이지로 이동
0 contributors
RawBlameHistory     
80 lines (73 sloc)  2.72 KB
<%@page import="com.sun.webkit.ContextMenu.ShowContext"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.awt.*" %>

<% String pjName = "/Cacao";  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 와우 </title>

    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" type="text/css"	href="<%=pjName%>/css/mypage/tabs.css" />
    <link rel="stylesheet" type="text/css"	href="<%=pjName%>/css/mypage/qabtn.css" />
<script type="text/javascript">
	$(function(){
		$('#yourBtn').click(function(){
			$('#frm').submit();
		});
	})
</script>
    
    
</head>
<body>
<%-- 	<%if(session.getAttribute("result")!=null){
		response.sendRedirect(pjName+"/MyPage?cmd=main-page");
	}else{
		out.println("<script>alert('로그인이 되어있지 않습니다');</script>");
		response.sendRedirect(pjName+"/Main?cmd=main-page");
	}%>
	 --%>
	 
<div class="container">
    <div class="row">
		<div class="span12">
			<form class="form-horizontal" id='frm' name='frm' action='<%=pjName%>/YourPage?cmd=yourPageMain-page' method="POST">
			  <fieldset>
			    <div id="legend">
			      <legend class="">주문조회</legend>
			    </div>
			    <div class="control-group">
			      <!-- Username -->
			      <label class="control-label"  for="oId">주문번호</label>
			      <div class="controls">
			        <input type="text" id="oId" name="oId" placeholder="주문번호를 입력하세요" class="input-xlarge">
			      </div>
			    </div>
			    <div class="control-group">
			      <!-- Password-->
			      <label class="control-label" for="mEmail">Email</label>
			      <div class="controls">
			        <input type="text" id="mEmail" name="mEmail" placeholder="Email을 입력하세요" class="input-xlarge">
			      </div>
			    </div>
			    <div class="control-group">
			      <!-- Password-->
			      <label class="control-label" for="mName">주문자명</label>
			      <div class="controls">
			        <input type="text" id="mName" name="mName" placeholder="주문자 명을 입력하세요" class="input-xlarge">
			      </div>
			    </div>
			    <div class="control-group">
			      <!-- Button -->
			      <div class="controls">
			        <button class="btn btn-success" id='yourBtn'>주문조회</button>
			      </div>
			    </div>
			  </fieldset>
			</form>
		</div>
	</div>
</div>

</body>
</html>
