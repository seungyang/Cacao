<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String pjName = "/Cacao"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
</head>
<body>
<!-- 	메인 카카오 페이지로 이동 -->
	<% response.sendRedirect(pjName+"/Main?cmd=main-page"); %>
</body>
</html>
