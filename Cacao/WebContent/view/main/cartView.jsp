<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String cnt = request.getParameter("cnt");
	Info info = new Info();
	info.setiId(id);
	info.setiCnt(cnt);
	
	ArrayList<Info> infolist = null;
	infolist = (ArrayList)session.getAttribute("cart");
	
	
	if(infolist == null){
		infolist = new ArrayList();
		infolist.add(info);
	}else{
		infolist.add(info);
	}
	
	session.setAttribute("cart", infolist);

	
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">

<title>카카오프렌즈</title>
 
<!--
        Google Fonts
        ============================================= -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"
	rel="stylesheet" type="text/css">

<!--
        CSS
        ============================================= -->
<!-- Fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">


<!-- product페이지 css -->



<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">

<!-- Modernizer Script for old Browsers -->










<script
	src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	<section id="sec" style="height=5000px">
	<table>
	<%
		 
		 
		for(int i=0; i < infolist.size(); i++) { 
			Info item = (Info) infolist.get(i); 
			

%>
			<tr>
			<td> 상품번호 : <%= item.getiId() %></td>
			<td> 개수 : <%= item.getiCnt() %></td>
			</tr>
<%
		} 	
%>
	</table>
	</section>
	
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
	
</body>
</html>






















