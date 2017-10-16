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
<%-- <link rel="stylesheet" type="text/css"	href="<%=pjName%>/css/mypage/orderbtn.css" /> --%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script>


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
			$(location).attr('href','<%=pjName%>/MyPage?cmd=CmdMyPageOrderDetail-page&orderid='+ img);
				});
		$("#popbutton").click(function() {
			$('div.modal').modal();
		})

	});
</script>
<title>우리반 연습</title>
</head>
<body>
	<div class="container">
		<%
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
						<span class="help-block"> <%=orderList.get(i).getiName()%>
							외 <%=orderList.get(i).getoCnt()%>개
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
				</p>
			</div>
		</div>
		<%
			}
		%>
	</div>
	
	<hr />
	<div class="container">
		<h2>모달</h2>
		<!-- 버튼 -->
		<button type="button" class="btn btn-primary btn-lg"
			data-toggle="modal" data-target="#myModal">Launch demo
			modal</button>
		<!-- 모달 팝업 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Modal title</h4>
					</div>
					<div class="modal-body">...</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>