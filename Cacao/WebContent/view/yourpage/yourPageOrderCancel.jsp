<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%
	String pjName = "/Cacao";
	int updateResult = (int) request.getAttribute("updateResult");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>우리반 연습</title>
</head>
<body>
	<div class="container">
		<%
			if ( updateResult < 1) {
				response.sendRedirect(pjName+"/MyPage?cmd=main-page&page=1");
			} else { 
				response.sendRedirect(pjName+"/MyPage?cmd=main-page&page=3");
			} %>
	</div>
</body>
</html>