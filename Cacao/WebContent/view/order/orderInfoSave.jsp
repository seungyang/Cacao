<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   String pjName = "/Cacao";
	int result = (int)request.getAttribute("orderInsert");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 와우 </title>
</head>
<body>

	<% 
		if(result>0){
			response.sendRedirect(pjName+"/Order?cmd=main-page&page=4");
		}else{
			response.sendRedirect(pjName+"/Order?cmd=myPageQAForm-page");
	%>
	<%} // End of If %>
</body>
</html>