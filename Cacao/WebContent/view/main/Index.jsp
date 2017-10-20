<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%@ page import="cacao.service.*"%>
<%
	int index = Integer.parseInt(request.getParameter("index"));
	System.out.println("index : "+index);
	ArrayList<Info> infolist = null;
	infolist = (ArrayList<Info>)session.getAttribute("cart");
	infolist.get(index).setiCnt(String.valueOf(Integer.parseInt(infolist.get(index).getiCnt())+1));
	session.setAttribute("cart", infolist);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
</head>
<body>

</body>
</html>