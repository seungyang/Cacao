<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
   content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">

<title>카카오프렌즈</title>

<!-- combobox css -->

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
<style type="text/css">
#drop{
	float : left; 
	margin-left : 48.5%;

}
#print{
	float : left;

}
</style>

</head>
<body>
	<img src="/Cacao/img/product/product_img.png" width=100%>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	
	
	<section id="portfolio" style="margin-top: 10%">
   
   
<div class="container">
<div id="print">
<h3>총 number 개의 상품이 조회되었습니다 </h3> 
</div>
<div id="drop">
<select class="dropdown">
  <option value="" class="label">검색기준</option>  
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
</div>
</div>

<div class="container">
	</br>
        <div class="row" style="margin-top: 3.5%;">
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <a href='/Cacao/Product?cmd=pCateCaseView-page'><img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
             <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
             <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal2" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal3" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal4" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal5" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
              
            </a>
          </div>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal6" data-toggle="modal">
                          <img class="img-fluid" src="${pageContext.request.contextPath}/img/product/portfolio/caca1.jpg" alt="" style="height: 240px; width: 300px;">
            
              <div class="caption">
                <div class="caption-content">
                     <img class="fa fa-search-plus fa-3x" src="${pageContext.request.contextPath}/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
	
	
	
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
</body>
</html>