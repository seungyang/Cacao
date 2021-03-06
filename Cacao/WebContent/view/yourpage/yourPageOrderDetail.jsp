<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%
	String pjName = "/Cacao";
	List<Order> orderListDetail = (List<Order>) request.getAttribute("orderListDetail");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=pjName %>/css/mypage/orderbtn.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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
		$('#orderClose').click(function(){
			window.close();
		})
	})


</script>
<title>우리반 연습</title>
</head>
<body>
	<div class="container">
		<%
			if ( orderListDetail.size() < 1) {
		%>
						주문내역이 없습니다.
		<% } else {
			for (int i = 0; i < orderListDetail.size(); i++) {
		%>
		<div class="row equipo-item">
			<div class="col-md-3 separador-vertical">
				<img src="<%=pjName %>/img/product/all/<%=orderListDetail.get(i).getiId() %>00.jpg"
					class="img-responsive center-block" lo="<%=orderListDetail.get(i).getiId() %>">
			</div>
			<br><br>
			<div class="col-md-9">
				<p class="texto-equipo">
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">주문번호</label>
					<div class="col-md-5">
						<span class="help-block did"> <%=orderListDetail.get(i).getdId()%>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상품명</label>
					<div class="col-md-5">
						<span class="help-block"> <%=orderListDetail.get(i).getiName()%> </span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">수량</label>
					<div class="col-md-5">
						<span class="help-block"> <%=orderListDetail.get(i).getoCnt()%> 개</span>
					</div>
				</div>
				</p>
			</div>
		</div>
		<%
			}}
		%>

		<input type="button" id="orderClose" value="닫기"/> 
	</div>
</body>
</html>