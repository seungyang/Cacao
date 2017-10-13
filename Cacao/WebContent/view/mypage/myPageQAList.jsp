<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<QA> qaList = (List<QA>) request.getAttribute("qaResult"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="/Cacao/js/jquery-1.9.1.min.js"></script>
<script src="/Cacao/js/service/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="/Cacao/css/service/service_notice.css" />

<title> 우리반 연습</title>
</head>
<body>
	<dl class="accordion">
	<%for(int i =0; i < qaList.size(); i++){ %>
		<dt>[유형] <%= qaList.get(i).getqCate() %> <br/>
			<h2><%= qaList.get(i).getqTitle() %></h2></dt>
		<dd>
		[문의내용]<br/>
		<%= qaList.get(i).getqContent() %><br/>
		<%if(qaList.get(i).getqAnswer()!=null){	%>
		<br/>
		<hr><br/>
		[문의답변]<br/>
		<%= qaList.get(i).getqAnswer()%>
		<% } // End of If %>
		</dd>
		
	<%} // End of for%>	
	</dl>

</body>
</html>