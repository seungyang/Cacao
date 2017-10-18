<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cacao.model.vo.*" %>
<%@ page import="java.util.*" %>
<% 
   String pjName = "/Cacao"; 
   
   	Order orderAcc = (Order)session.getAttribute("orderAcc");
   	
   	System.out.println("orderAccView.jsp:"+orderAcc.getdId());	
   	
   	List<Deliver> deliverAcc = (List<Deliver>) request.getAttribute("deliverAcc");
   	
   	System.out.println("orderAccView.jsp:"+deliverAcc.get(0).getOlDid());	

	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title> 우리반 연습</title>


</head>
<body style="margin-top: 3%; margin-left: 21%;">


 	<div class="container">
 	<img alt="" src="${pageContext.request.contextPath}/img/order/orderAcc_img.png" style="width: 75.4%;">
	<div class="row">
		<div class="col-md-6">
			<!--Windows-->
			<div class="panel panel-primary" style="width: 155%; height: 200px;">
      			<div class="panel-heading">
       				<h3 class="panel-title">[주문 완료] 주문 번호 : <%=orderAcc.getdId() %></h3>
      			</div>
      			<div class="panel-body">
      				<ul>
      					<li>이메일: <%=orderAcc.getmEmail() %></li>
						<li>주문자명: <%=orderAcc.getoName() %></li>
						<li>연락처: <%=orderAcc.getoTel() %></li>
						<li>결제수단: <%=orderAcc.getoPayment() %></li>
						<li>배송주소: <%=orderAcc.getoTel() %></li>
						<li>배송메모: <%=orderAcc.getoMemo() %></li>
					</ul>
      			</div>
    		</div>
	
		</div>
 	
 	</div>
 	
 	<div class="container">
			
		<%	for (int i = 0; i < deliverAcc.size(); i++) {	%>
		<div class="row equipo-item">
			<div class="col-md-3 separador-vertical">
				<img src="<%=pjName %>/img/product/all/<%=deliverAcc.get(i).getOlIid() %>00.jpg"
					class="img-responsive center-block" >
			</div>
			<br><br>
			<div class="col-md-9">
				<p class="texto-equipo">
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">캐릭터</label>
					<div class="col-md-5">
						<span class="help-block did"> <%=deliverAcc.get(i).getOlDid()%>
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">카테고리</label>
					<div class="col-md-5">
						<span class="help-block"> <%=deliverAcc.get(i).getiChar()%> </span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">상품명</label>
					<div class="col-md-5">
						<span class="help-block"> <%=deliverAcc.get(i).getiName()%> </span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">가격</label>
					<div class="col-md-5">
						<span class="help-block"> <%=deliverAcc.get(i).getiCost()%> </span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="qTel">수량</label>
					<div class="col-md-5">
						<span class="help-block"> <%=deliverAcc.get(i).getOlOcnt()%> 개</span>
					</div>
				</div>
				</p>
			</div>
		</div>
		<%	}	%>

	<div style="height: 0.01px; width: 73.5%;border: solid;border-top-color: grey;margin-top: 4%;"></div>

		<input type="button" class="btn btn-primary" id="orderClose" value="닫기" style="width: 90px; height: 45px; margin-left: 33.5%; margin-top: 2%;"/> 
	</div>
 	
 	
 	</div> 	
</body>
</html>