<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
</head>
<body>
	<%		
	session.removeAttribute("useremail");
	session.removeAttribute("loginresult"); 
	response.sendRedirect("/Cacao/Main?cmd=main-page");
	
	%>
</body>
</html>