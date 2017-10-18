<%@page import="java.awt.Window"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
   String pjName = "/Cacao";
	int result = (int)request.getAttribute("selectLogin");
	int result1 = (int)request.getAttribute("selectAdminLoginAll");
	int result2 = (int)request.getAttribute("selectAdminLoginMypage");
	int result3 = (int)request.getAttribute("selectAdminLoginService");
	int result4 = (int)request.getAttribute("selectAdminLoginProduct");
	int result5 = (int)request.getAttribute("selectAdminLoginOrder");
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
		out.println("<script>alert('사용자 모드');</script>");
		out.println("<script>self.close();</script>");
		
		//response.sendRedirect(pjName+"/Main?cmd=main-page");
	}else if(result1>0){
		out.println("<script>alert('총관리자 모드');</script>");
		//response.sendRedirect(pjName+"/Main?cmd=main-page");
	}else if(result2>0){
		out.println("<script>alert('마이페이지 모드');</script>");
		//response.sendRedirect(pjName+"/Main?cmd=main-page");
	}else if(result3>0){
		out.println("<script>alert('서비스 모드');</script>");
		//response.sendRedirect(pjName+"/Main?cmd=main-page");
	}else if(result4>0){
		out.println("<script>alert('제품 모드');</script>");
		//response.sendRedirect(pjName+"/Main?cmd=main-page");
	}else if(result5>0){
		out.println("<script>alert('주문 모드');</script>");
		//response.sendRedirect(pjName+"/Main?cmd=main-page");
	}else{
		 out.println("<script>alert('아이디나 비밀번호를 확인하세요');</script>");
		 out.println("<script>location.href='/Cacao/view/login/lMain.jsp'; </script>");

		 //response.sendRedirect("/Cacao/view/login/lMain.jsp");
	}		
	%>
	
</body>
</html>