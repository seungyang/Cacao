<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%	
	String pjName = "/Cacao";
	List<Order> cancelListDetail = (List<Order>) request.getAttribute("cancelListDetail");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/Cacao/css/mypage/canceldetail.css" rel="stylesheet" type="text/css">
<script src="/Cacao/js/vendor/modernizr-2.6.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


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
			if ( cancelListDetail.size() < 1) {
		%>
						취소내역이 없습니다.
		<% } else {
			for (int i = 0; i < cancelListDetail.size(); i++) {
		%>
		<div class="row equipo-item">
			<div class="col-md-3 separador-vertical">
				<img src="<%=pjName %>/img/product/all/<%=cancelListDetail.get(i).getiId() %>00.jpg"
					class="img-responsive center-block" lo="<%=cancelListDetail.get(i).getiId() %>">
			</div>
			<br><br>
			<div class="col-md-9">
				<p class="texto-equipo">
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">주문번호</label>
					<div class="col-md-5">
						<span class="help-block did"> <%=cancelListDetail.get(i).getdId()%>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상품명</label>
					<div class="col-md-5">
						<span class="help-block"> <%=cancelListDetail.get(i).getiName()%> </span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">수량</label>
					<div class="col-md-5">
						<span class="help-block"> <%=cancelListDetail.get(i).getoCnt()%> 개 </span>
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