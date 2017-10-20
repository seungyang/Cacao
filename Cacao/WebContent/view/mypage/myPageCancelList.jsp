<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%
	String pjName = "/Cacao";
	List<Order> cancelList = (List<Order>) request.getAttribute("cancelList");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/Cacao/css/mypage/canceldetail.css" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(function(){
		
		$('.btn1').on('click',function(){
			var data =$(this).parent().parent().parent().find("span.did").text();
			var img = $(this).parent().parent().parent().parent().find("img").attr("lo");
			window.open("<%=pjName%>/MyPage?cmd=CmdMyPageCancelDetail-page&cancelid="+ img, "상세정보", "width=1275, height=800");
		});


	});
</script>
<title>우리반 연습</title>
</head>
<body>
	<div class="container">
		<%
			if ( cancelList.size() < 1) {
		%>
						취소내역이 없습니다.
		<% } else {

			for (int i = 0; i < cancelList.size(); i++) {
		%>
		<div class="row equipo-item">
			<div class="col-md-3 separador-vertical">
				<img
					src="<%=pjName%>/img/product/all/<%=cancelList.get(i).getiId()%>00.jpg"
					class="img-responsive center-block"
					lo="<%=cancelList.get(i).getdId()%>">
			</div>
			<br>
			<br>
			<div class="col-md-9">
				<p class="texto-equipo">
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">주문번호</label>
					<div class="col-md-5">
						<span class="help-block did"> <%=cancelList.get(i).getdId()%>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상품명</label>
					<div class="col-md-5">
						<span class="help-block"> <%=cancelList.get(i).getiName()%>
							등 <%=cancelList.get(i).getoCnt()%> 개
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상태</label>
					<div class="col-md-5">
						<span class="help-block"> <%=cancelList.get(i).getdStatus()%>
						</span>
					</div>
				</div>
				<div class="btn_wrap">
					<div class="col three">
						<a href="#" class="btn1 btn-sunflower1" id="orderDetail">주문 정보</a>
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