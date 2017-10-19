<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cacao.model.vo.*" %>
    <%
   String pjName = "/Cacao";
	int result = (int)request.getAttribute("orderInsert");
	
	
	Order orderAcc = (Order) session.getAttribute("orderAcc");
	
	System.out.println("infosave.jsp:"+orderAcc.getdId());	
	
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
			response.sendRedirect(pjName+"/Order?cmd=success-page");
		}else{
			response.sendRedirect(pjName+"/Order?cmd=fail-page");
	%>
	<%} // End of If %>
</body>
</html>