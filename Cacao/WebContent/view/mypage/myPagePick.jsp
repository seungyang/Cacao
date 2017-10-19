<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
 <%@ page import="cacao.model.vo.Info" %>
<% List<Info> infolist = (List<Info>) request.getAttribute("infolist"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="/Cacao/css/product/easydropdown.css"/>


<!--
        Google Fonts
        ============================================= -->
<link
   href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"
   rel="stylesheet" type="text/css">

<!--
        CSS
        ============================================= -->
<!-- Fontawesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">




<!-- product페이지 css -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

<!-- Modernizer Script for old Browsers -->
<script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>

<!-- combobox js -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="/Cacao/js/product/easydropdown.js" type="text/javascript"></script>

<title> 우리반 연습</title>

</head>
<body>
	<div class="container">
	</br>
        <div class="row" style="margin-top: 3.5%;">
        <%for(int i=0;i<infolist.size();i++){ %>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <a href='/Cacao/Product?cmd=pCateCaseView-page&id=<%=infolist.get(i).getiId()%>&cnt=<%=infolist.get(i).getiImgcnt()%>&detail=<%=infolist.get(i).getiDetail()%>'><img class="img-fluid" 
                          src="/Cacao/img/product/all/<%=infolist.get(i).getiId() %>00.jpg" 
                          alt="" style="height: 240px; width: 300px;"></a>
            				
              <div class="caption">
                <div class="caption-content">
                	상품명 : <%= infolist.get(i).getiName() %><br/>가격 : <%= infolist.get(i).getiCost() %>원<br/>
                     <a href='/Cacao/view/main/cartView.jsp?cnt=1&name=<%=infolist.get(i).getiName()%>&price=<%= infolist.get(i).getiCost()%>&id=<%= infolist.get(i).getiId()%>'><img class="fa fa-search-plus fa-3x" src="/Cacao/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img></a>
                </div>
              </div>
            </a>
          </div>
          <%} %>
        </div>
      </div>	
</body>
</html>