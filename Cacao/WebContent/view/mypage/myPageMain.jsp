<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String pjName = "/Cacao";
	System.out.println("MypageSession : "+session.getAttribute("useremail"));
	session = request.getSession();
	
	if(session.getAttribute("loginresult")!=null){

	}else{
	out.println("<script>alert('로그인이 되어있지 않습니다');location.href='/Cacao/Main?cmd=main-page';</script>");

	}
	
	String pageNum = request.getParameter("page");
	
	String class1 = "1";
	String class2 = "2";
	String class3 = "3";
	String class4 = "4";
	
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
		case "3" :
			class3 = "active";
			break;
		case "4" :
			class4 = "active";
			break;

	}
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" 	content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">


<link href="/Cacao/css/header.css" rel="stylesheet" type="text/css">
<script src="/Cacao/js/vendor/modernizr-2.6.2.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"	href="<%=pjName%>/css/mypage/main.css" />



<title>우리반 연습</title>




<script type="text/javascript">
	$(function(){
		$('#qaBtn').click(function(){
			event.preventDefault();
			/* window.location = 'myPageQAForm.jsp'; */
			window.location = '<%=pjName%>/MyPage?cmd=myPageQAForm-page';
		});

	});

	
</script>
</head>

<body>
	<img class='img_set' src="/Cacao/img/mypage/myPage_img.png">
	<jsp:include page="/view/include/header.jsp"></jsp:include>

	<section id="portfolio" >
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="tabbable-panel">
						<div class="tabbable-line">
							<ul class="nav nav-tabs ">
								<li class="<%=class1%>"><a href="#tab_default_1"
									data-toggle="tab"> 주문내역 </a></li>
								<li class="<%=class2%>"><a href="#tab_default_2"
									data-toggle="tab"> 찜 </a></li>
								<li class="<%=class3%>"><a href="#tab_default_3"
									data-toggle="tab"> 취소내역</a></li>
								<li class="<%=class4%>"><a href="#tab_default_4"
									data-toggle="tab"> 1:1 문의 </a></li>
							</ul>
							<div class="tab-content" style="height: 800px">
								<div class="tab-pane <%=class1%>" id="tab_default_1">
									<iframe class="f_width"
										src="<%=pjName%>/MyPage?cmd=myPageOrder-page" frameborder="0"
										scrolling="yes" ></iframe>
								</div>
							
								<div class="tab-pane <%=class2%>" id="tab_default_2">
									<iframe class="f_width"
										src="<%=pjName%>/MyPage?cmd=myPagePick-page" frameborder="0"
										scrolling="yes" ></iframe>
								</div>
								<div class="tab-pane <%=class3%>" id="tab_default_3">
									<iframe class="f_width"
										src="<%=pjName%>/MyPage?cmd=myPageCancelList-page"
										frameborder="0" scrolling="no" ></iframe>
								</div>
								<div class="tab-pane <%=class4%>" id="tab_default_4">
									<iframe class="f_width"
										src="<%=pjName%>/MyPage?cmd=myPageQAList-page" frameborder="0" scrolling="yes" ></iframe>
									<div class="col three" style="float: right;">
										<a href="#" class="btn1 btn-sunflower1" id="qaBtn">문의하기</a>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		
	</script>

	<jsp:include page="/view/include/footer.jsp"></jsp:include>

</body>
</html>