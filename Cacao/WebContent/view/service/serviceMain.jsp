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

<link rel="stylesheet" type="text/css" href="/Cacao/css/service/service_main.css" />

</head>
<body>

<div class="container">
    <div class="row">
		<div class="col-md-12">
			<h3>고객센터</h3>

			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
					
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
							공지사항 </a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
							FAQ </a>
						</li>
						
					</ul>
					
					<div class="tab-content">
					
						<div class="tab-pane active" id="tab_default_1">
							<iframe class="f_width" src="/Cacao/Service?cmd=notice-page" frameborder="0" scrolling="no" ></iframe>
						</div>
						<div class="tab-pane" id="tab_default_2">
							<iframe class="f_width" src="/Cacao/Service?cmd=faq-page" frameborder="0" scrolling="no" ></iframe>
							
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