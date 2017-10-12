<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String pjName = "/Cacao"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title> 우리반 연습</title>
<link rel="stylesheet" type="text/css" href="../../css/mypage/tabs.css" />
<link rel="stylesheet" type="text/css" href="../../css/mypage/iframe.css" />
<link rel="stylesheet" type="text/css" href="../../css/mypage/qabtn.css" />
</head>
<body>

<div class="container">
    <div class="row">
		<div class="col-md-12">
			<h3>Default Tab</h3>

			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
							주문내역 </a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
							찜 </a>
						</li>
						<li>
							<a href="#tab_default_3" data-toggle="tab">
							취소내역</a>
						</li>
						<li>
							<a href="#tab_default_4" data-toggle="tab">
							1:1 문의 </a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_default_1">
							<iframe class="f_width" src="myPageOrder.jsp" frameborder="0" scrolling="no"></iframe>
						</div>
						<div class="tab-pane" id="tab_default_2">
							<iframe class="f_width" src="<%=pjName %>/MyPage?cmd=myPagePick-page" frameborder="0" scrolling="no"></iframe>
						</div>
						<div class="tab-pane" id="tab_default_3">
							<iframe class="f_width" src="myPageCancelList.jsp" frameborder="0" scrolling="no"></iframe>
						</div>
						<div class="tab-pane" id="tab_default_4">
							<iframe class="f_width" src="myPageQAList.jsp" frameborder="0" scrolling="no"></iframe>
							<div class="col three">				
								<a href="#" class="btn btn-sunflower">문의하기</a>			
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<br>
<br>

<br>
<br>


<script type="text/javascript">

</script>
</body>
</html>