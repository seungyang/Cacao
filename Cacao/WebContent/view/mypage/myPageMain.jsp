<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title> 우리반 연습</title>
<link rel="stylesheet" type="text/css" href="../../css/mypage/tabs.css" />
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
							<iframe src="myPageOrder.jsp" frameborder="0"></iframe>
						</div>
						<div class="tab-pane" id="tab_default_2">
							<iframe src="myPagePick.jsp" frameborder="0"></iframe>
						</div>
						<div class="tab-pane" id="tab_default_3">
							<iframe src="myPageCancelList.jsp" frameborder="0"></iframe>
						</div>
						<div class="tab-pane" id="tab_default_4">
							<iframe src="myPageQAList.jsp" frameborder="0"></iframe>
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