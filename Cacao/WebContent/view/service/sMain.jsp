<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String pjName = "/Cacao"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 와우 </title>
</head>
<body>
	<% response.sendRedirect(pjName+"/Service?cmd=main-page"); %>
</body>
</html>