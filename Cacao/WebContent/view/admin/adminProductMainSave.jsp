<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String pjName = "/Cacao";
	int result = (int)request.getAttribute("infoSave");
	int result1 = (int)request.getAttribute("infoModify");
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
			out.println("<script>alert('등록이 완료되었습니다.');</script>");
			 out.println("<script>location.href='/Cacao/Admin?cmd=adminProductMain-page';</script>");
		}else if(result1 >0){
			out.println("<script>alert('수정이 완료되었습니다.');</script>");
			 out.println("<script>location.href='/Cacao/Admin?cmd=adminProductMain-page';</script>");
		}else{
			out.println("<script>alert('에러가 났습니다.');</script>");
			 out.println("<script>location.href='/Cacao/view/admin/adminMain.jsp'; </script>");
	%>
	<%} // End of If %>
</body>
</html>