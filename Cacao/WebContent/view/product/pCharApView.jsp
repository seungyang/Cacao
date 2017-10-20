<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%
List<Info> catelist1 = (List<Info>)session.getAttribute("Apresultall");
List<Info> catelist2 = (List<Info>)session.getAttribute("Apresulthall");	
List<Info> catelist3 = (List<Info>)session.getAttribute("Apresultlall");	
List<Info> catelist4 = (List<Info>)session.getAttribute("Apresultsell");	
List<Info> selectcatelist = null;
String order = "";

int selectsize = 0;
int size1 = 0;
int size2 = 0;
int size3 = 0;
int size4 = 0;

if(catelist1==null){
	size1=0;
}else{
	size1=catelist1.size();
}
if(catelist2==null){
	size1=0;
}else{
	size2=catelist2.size();
}
if(catelist3==null){
	size3=0;
}else{
	size3=catelist3.size();
}
if(catelist4==null){
	size4=0;
}else{
	size4=catelist4.size();
}

if(request.getParameter("order")==null){
	selectcatelist = catelist1;
	selectsize = size1;
}else if(request.getParameter("order").equals("높은가격순")){
	selectcatelist = catelist2;
	selectsize = size2;
}else if(request.getParameter("order").equals("낮은가격순")){
	selectcatelist = catelist3;
	selectsize = size3;
}else if(request.getParameter("order").equals("이름순")){
	selectcatelist = catelist4;
	selectsize = size4;
}

%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
   content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">
<title>라이언 페이지</title>

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
<link rel="stylesheet" href="/Cacao/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="/Cacao/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet" href="/Cacao/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet" href="/Cacao/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet" href="/Cacao/css/animate.css">
<link rel="stylesheet" href="/Cacao/css/main.css">
<link rel="stylesheet" href="/Cacao/css/responsive.css">
<link rel="stylesheet" href="/Cacao/css/responsive.css">
<script src="/Cacao/js/vendor/modernizr-2.6.2.min.js"></script>

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
<h3>총 <%=selectsize%>개의 상품이 조회되었습니다 </h3> 



</div>
<div id="drop">

<select onchange="location.href='/Cacao/Product?cmd=pCharApView-page&order='+this.value;" class="dropdown1" style="float:right">
  <option class="option" value="" class="label">검색기준</option>  
  <option class="option" value="높은가격순">높은가격순</option>
  <option class="option" value="낮은가격순">낮은가격순</option>
  <option class="option" value="이름순">이름순</option>
</select>
</div>



<div class="container">
	</br>
        <div class="row" style="margin-top: 3.5%;">
        <%for(int i=0;i<selectsize;i++){ %>
          <div class="col-sm-4 portfolio-item">
            <a class="portfolio-link" href="#portfolioModal1" data-toggle="modal">
                          <a href='/Cacao/Product?cmd=pCateCaseView-page&id=<%=selectcatelist.get(i).getiId()%>&cnt=<%=selectcatelist.get(i).getiImgcnt()%>&detail=<%=selectcatelist.get(i).getiDetail()%>&name=<%=selectcatelist.get(i).getiName()%>&price=<%=selectcatelist.get(i).getiCost()%>'><img class="img-fluid" src="/Cacao/img/product/all/<%=selectcatelist.get(i).getiId() %>00.jpg" alt="" style="height: 240px; width: 300px;"></a>
            				
              <div class="caption">
                <div class="caption-content">
                	상품명 : <%= selectcatelist.get(i).getiName() %><br/>가격 : <%= selectcatelist.get(i).getiCost() %>원<br/>
                     <a href='/Cacao/view/main/cartView.jsp?cnt=1&name=<%=selectcatelist.get(i).getiName()%>&price=<%= selectcatelist.get(i).getiCost()%>&id=<%= selectcatelist.get(i).getiId()%>'><img class="fa fa-search-plus fa-3x" src="/Cacao/img/product/portfolio/cart.png" style="width: 30px; height: 30px;"></img></a>
                </div>
              </div>
            </a>
          </div>
          <%} %>
        </div>
      </div>
    </section>
	
	
	
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
</body>
</html>