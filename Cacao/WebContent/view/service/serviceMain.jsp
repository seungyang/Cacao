<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String pjName = "/Cacao"; 
    
    String pageNum = request.getParameter("page");

    String class1 = "1";
    String class2 = "2";


    if (pageNum == null) {
       pageNum = "1";
    }
    switch (pageNum) {
       case "1" :
          class1 = "active";
          break;
       case "2" :
          class2 = "active";
          break;
    }
    
    %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="/Cacao/css/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/Cacao/css/service/service_main.css" />

<script src="/Cacao/js/vendor/modernizr-2.6.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title> 우리반 연습</title>

</head>
<body>
<img class='img_set' src="/Cacao/img/service/service_img.png"/>
<jsp:include page="/view/include/header.jsp"></jsp:include>
	
<section id="portfolio">
<div class="container">
    <div class="row">
		<div class="col-md-12">

			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
					
						<li class="<%=class1%>">
							<a href="#tab_default_1" data-toggle="tab">
							공지사항 </a>
						</li>
						<li class="<%=class2%>">
							<a href="#tab_default_2" data-toggle="tab">
							FAQ </a>
						</li>
						
					</ul>
					
					<div class="tab-content">
					
						<div class="tab-pane <%=class1%>" id="tab_default_1">
							<iframe class="f_width" src="/Cacao/Service?cmd=notice-page" frameborder="0" scrolling="no" ></iframe>
						</div>
						<div class="tab-pane <%=class2%>" id="tab_default_2">
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
</section>
<jsp:include page="/view/include/footer.jsp"></jsp:include>

</body>
</html>