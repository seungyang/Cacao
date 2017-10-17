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
/* 		$('.btn2').on('click',function(){
			var data =$(this).parent().parent().parent().find("span.did").text() 
			alert(data);
			
		}); */
		
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
	<div class="container">
		<%
			if ( orderList.size() < 1) {
		%>
						주문내역이 없습니다.
		<% } else {

			for (int i = 0; i < orderList.size(); i++) {
		%>
		<div class="row equipo-item">
			<div class="col-md-3 separador-vertical">
				<img
					src="<%=pjName%>/img/product/all/<%=orderList.get(i).getiId()%>00.jpg"
					class="img-responsive center-block"
					lo="<%=orderList.get(i).getdId()%>">
			</div>
			<br>
			<br>
			<div class="col-md-9">
				<p class="texto-equipo">
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">주문번호</label>
					<div class="col-md-5">
						<span class="help-block did"> <%=orderList.get(i).getdId()%>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상품명</label>
					<div class="col-md-5">
						<span class="help-block"> <%=orderList.get(i).getiName()%>등 <%=orderList.get(i).getoCnt()%>개
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상태</label>
					<div class="col-md-5">
						<span class="help-block"> <%=orderList.get(i).getdStatus()%>
						</span>
					</div>
				</div>
				<div class="btn_wrap">
					<div class="col three">
						<a href="#" class="btn1 btn-sunflower1" id="orderDetail">주문 정보</a>
					</div>
					<div class="col three">
						<a href="#" class="btn2 btn-sunflower2" id="orderCencel">주문 취소</a>
					</div>
				</div>

			</div>
		</div>
		<%
			}}
		%>
	</div>
	
	<hr />
	



</body>
</html>