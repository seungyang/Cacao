<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
</head>
<body>
<%
ArrayList<Info> infolist = (ArrayList<Info>)session.getAttribute("cart");
int size = 0;
if(infolist==null){
	size = 0;
}else{
	size = infolist.size();
}
out.print(String.valueOf(size));
%>
</body>
</html>