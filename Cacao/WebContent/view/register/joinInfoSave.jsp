<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   String pjName = "/Cacao";
   
	int result = (int)request.getAttribute("mSave");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
</head>
<body>
<% 
		if(result>0){
			response.sendRedirect(pjName+"/Register?cmd=joinAuth-page");
		}else{
	%>
		시스템오류입니다
	<%} // End of If %>

</body>
</html>