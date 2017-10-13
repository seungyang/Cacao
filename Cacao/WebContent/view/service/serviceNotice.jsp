<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="cacao.model.vo.*" %>
    <%List<Service> noticeList = (List) request.getAttribute("noticeResult"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>

<script src="/Cacao/js/jquery-1.9.1.min.js"></script>
<script src="/Cacao/js/service/jquery.js"></script>

<link rel="stylesheet" type="text/css" href="/Cacao/css/service/service_notice.css" />

</head>
<body>
<%-- 	<%for(int i =0; i < noticeList.size(); i++){ %> --%>
<%-- 	<%= noticeList.get(i).getsId()-1 %> --%>
<%-- 	<%= noticeList.get(i).getsKind() %> --%>
<%-- 	<%= noticeList.get(i).getsCate() %> --%>
<%-- 	<%= noticeList.get(i).getsDate() %> --%>
<%-- 	<%= noticeList.get(i).getsTitle() %> --%>
<%-- 	<%= noticeList.get(i).getsDetail() %> --%>
<%-- 	<%= noticeList.get(i).getsImage() %><br/> --%>
<%-- 	<%} %> --%>
	<dl class="accordion">
	<%for(int i =0; i < noticeList.size(); i++){ %>
		<dt>[<%= noticeList.get(i).getsCate() %>]  <%= noticeList.get(i).getsDate().substring(0,10) %><br/>
			<h2><%= noticeList.get(i).getsTitle() %></h2></dt>
		<dd><%= noticeList.get(i).getsDetail() %></dd>
	<%} %>	
	</dl>
	


</body>
</html>