<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
    <% String pjName = "/Cacao"; 
    	String id = request.getParameter("id");
    	String cnt = request.getParameter("cnt");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 와우 </title>
</head>
<body>
	
	<% response.sendRedirect(pjName+"/Order?cmd=main-page&id="+id+"&cnt="+cnt); %>
</body>
</html>
