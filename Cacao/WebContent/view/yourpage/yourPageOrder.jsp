<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%
	String pjName = "/Cacao";
	List<Order> orderList = (List<Order>) request.getAttribute("orderList");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"	href="<%=pjName%>/css/mypage/orderbtn.css" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style type="text/css">
.separador-vertical {
	border-right: 1px solid #bfbdbd;
}

.titulo-equipo {
	margin-top: 0px;
}

.img-responsive {
	height: 200px;
	width: 200px;
}

.equipo-item {
	border: 1px solid #D1CFCF;
	padding: 10px;
	border-radius: 10px;
	margin-bottom: 25px;
}
</style>
<script type="text/javascript">
	$(function(){
		$('.btn2').on('click',function(){
			var data =$(this).parent().parent().parent().find("span.did").text();
			var img = $(this).parent().parent().parent().parent().find("img").attr("lo");
			var result = confirm('[주의] 상품을 취소하시겠습니까?'); 
		 	if(result) { 
		 		window.location = '/Cacao/MyPage?cmd=myPageOrderCancel-page&orderid='+ img; 
		 	}
		});

		
		$('.btn1').on('click',function(){
			var data =$(this).parent().parent().parent().find("span.did").text();
			var img = $(this).parent().parent().parent().parent().find("img").attr("lo");
			window.open("<%=pjName%>/MyPage?cmd=CmdMyPageOrderDetail-page&orderid="+ img, "상세정보", "width=1275, height=800");
		});


	});
</script>
<title>우리반 연습</title>
</head>
<body>
	
	
	<hr />
	



</body>
</html>