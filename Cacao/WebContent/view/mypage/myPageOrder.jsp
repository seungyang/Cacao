<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<Order> orderList = (List<Order>) request.getAttribute("orderList"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
.separador-vertical{
  border-right:1px solid #bfbdbd;
  }
  
  .titulo-equipo{
  margin-top:0px;
      
    }
  .img-responsive{
  	height: 200px;
  	width: 200px;
  }
    
  .equipo-item{
    border:	1px solid #D1CFCF ;
        padding: 10px;
    border-radius:10px;
  margin-bottom:25px;
      }

</style>

<title> 우리반 연습</title>
</head>
<body>
<div class="container">
<%for(int i =0; i < orderList.size(); i++){ %>
<div class="row equipo-item">  
 <div class="col-md-3 separador-vertical"><img src="//placehold.it/500x500" class="img-responsive center-block"></div> 
  <div class="col-md-9">
    <h3 class="titulo-equipo">TITULO</h3>
  <p class="texto-equipo">
  	주문번호 : <%= orderList.get(i).getdId() %><br/> 
	상품명 : <%= orderList.get(i).getiName() %><br/>
	수량  : <%= orderList.get(i).getoCnt() %><br/>
	상태 : <%= orderList.get(i).getdStatus() %><br/>
  </p>  
  </div>
</div>
<%} %>

  

</div>
</body>
</html>