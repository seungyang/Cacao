<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>
    <%@ page import="cacao.model.vo.*" %>
    <%List<Service> faqList = (List) request.getAttribute("faqResult"); %>
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

<dl class="accordion">
	<%for(int i =0; i < faqList.size(); i++){ %>
		<dt>[<%= faqList.get(i).getsCate() %>]  <%= faqList.get(i).getsDate().substring(0,10) %><br/>
			<h2><%= faqList.get(i).getsTitle() %></h2></dt>
		<dd><%= faqList.get(i).getsDetail() %></dd>
	<%} %>	
	</dl>

</body>
</html>