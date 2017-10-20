<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<% 
int cnt = Integer.parseInt(request.getParameter("cnt"));
String id = request.getParameter("id");
String detail = request.getParameter("detail");
String name =  request.getParameter("name");
String price = request.getParameter("price");
List<Info> infolist = new <Info>ArrayList();
Info info = new Info();
info.setiId(id);
info.setiDetail(detail);
info.setiName(name);
info.setiCost(price);
infolist.add(info);
session.setAttribute("buylist", infolist);
String imgstr = "";
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
	href="/Cacao/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="/Cacao/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet"
	href="/Cacao/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="/Cacao/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet"
	href="/Cacao/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="/Cacao/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet"
	href="/Cacao/css/responsive.css">


<!-- product페이지 css -->





<!-- Modernizer Script for old Browsers -->



<!-- 스타일시도 -->
<style type="text/css">
#sec {
	
}



.productimg {
	margin-left: 15%;
	margin-right: 30%;
	margin-bottom: 10%;
	float: left;
	width: 500px;
}

#detail {
	
	margin-left: 30%;
	margin-right: 30%;
	width: 500px;
	height: 500px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$('#buy').click(function(){
		var text = $('#text').val();
		location.href = "/Cacao/Order?cmd=main-page&id=<%=id%>&cnt="+document.getElementById("text").value+"&cart=1";
	});
	$('#plus').click(function(){
		$('#text').val(parseInt($('#text').val())+1);
	});
	$('#minus').click(function(){
		$('#text').val($('#text').val()-1);
	});
	$('#cart').click(function(){
		var text = $('#text').val();
		location.href="/Cacao/view/main/cartView.jsp?cnt="+text+"&name=<%=name%>&price=<%=price%>&id=<%=id%>";
	});
	$('#choose').click(function(){
		var text = $('#text').val();
		location.href="/Cacao/view/main/cartView.jsp?cnt="+text+"&name=<%=name%>&price=<%=price%>&id=<%=id%>";
	});
})
</script>





<script
	src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	<section id="home">
		<div id="home-carousel" class="carousel slide" data-interval="false">
			<ol class="carousel-indicators">
				<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
				<%for(int i=1;i<cnt;i++){ %>
				<li data-target="#home-carousel" data-slide-to="<%=i%>"></li>
				<%} %>
			</ol>
			<!--/.carousel-indicators-->

			<div class="carousel-inner">
			
				<div class="item active"
					style="background-image: url('/Cacao/img/product/all/<%=id%>00.jpg');">

				</div>
				<%for(int i=1;i<cnt;i++){ 
				if(i>10){
					imgstr = String.valueOf(i);
				}else{
					imgstr = "0"+String.valueOf(i);
				}
				
				%>
				<div class="item"
					style="background-image: url('/Cacao/img/product/all/<%=id%><%=imgstr%>.jpg');">
				</div>

				<%} %>
			</div>
			<!--/.carousel-inner-->
			<nav id="nav-arrows"
				class="nav-arrows hidden-xs hidden-sm visible-md visible-lg">
				<a class="sl-prev hidden-xs" href="#home-carousel" data-slide="prev">
					<i class="fa fa-angle-left fa-3x"></i>
				</a> <a class="sl-next" href="#home-carousel" data-slide="next"> <i
					class="fa fa-angle-right fa-3x"></i>
				</a>
			</nav>

		</div>
	</section>


	<!-- 	여기서부터 상품 그림 설명 -->
	<section id="sec" style="height: <%=cnt*700%>px;">
		<div>
			<%for(int i=0;i<cnt;i++){ 
		
				if(i>10){
					imgstr = String.valueOf(i);
				}else{
					imgstr = "0"+String.valueOf(i);
				}
				
				
				%> 
				
				<div class="productimg">
				<img src="/Cacao/img/product/all/<%=id%><%=imgstr%>.jpg" width=1000
					height=500 />

				</div>
							
				
			<%} %>
			
		

		</div>


	
		
		
	</section>
	
	<div id="detail" style="height: 200px; margin-bottom:10%">상품설명<br/><%=detail %></div>

	<jsp:include page="/view/include/buy.jsp"></jsp:include>
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
	
</body>
</html>






















