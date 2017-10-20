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
<link href="/Cacao/css/header.css" rel="stylesheet" type="text/css">
<script src="/Cacao/js/vendor/modernizr-2.6.2.min.js"></script>
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
                     <img src="/Cacao/img/product/portfolio/cart.png" onclick="parent.location.href='/Cacao/view/main/cartView.jsp?cnt=1&name=<%=infolist.get(i).getiName()%>&price=<%= infolist.get(i).getiCost()%>&id=<%= infolist.get(i).getiId()%>'" style="width: 30px; height: 30px;"/>

                     
                </div>
              </div>
            </a>
          </div>
          <%} %>
        </div>
      </div>	
</body>
</html>