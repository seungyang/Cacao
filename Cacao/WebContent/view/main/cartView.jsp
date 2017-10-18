<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cacao.model.vo.*"%>
<%@ page import="cacao.service.*"%>
<% 
	request.setCharacterEncoding("utf-8");
	
// 	삭제시 사용하기 위한변수
	String change = request.getParameter("change");
	String index = request.getParameter("index");
	
// 전페이지 에서 받아오는 변수
	String cnt = request.getParameter("cnt");
	String price = request.getParameter("price");
	String name = request.getParameter("name");
	String id = request.getParameter("id");

	

	

	int sum = 0;
	Info info = new Info();
	ArrayList<Info> infolist = null;
	infolist = (ArrayList)session.getAttribute("cart");
	
	if(change==null){
// 		일반적인 삽입
		info.setiCnt(cnt);
		info.setiName(name);
		info.setiCost(price);
		info.setiId(id);
		
		if(infolist == null){
			infolist = new ArrayList();
			infolist.add(info);
		}else{
			infolist.add(info);
		}
	}else if(change.equals("1")){
// 		수량감소
		infolist.get(Integer.parseInt(index)).setiCnt(String.valueOf(Integer.parseInt(infolist.get(Integer.parseInt(index)).getiCnt())-1));
		
	}else if(change.equals("2")){
// 		수량증가
		infolist.get(Integer.parseInt(index)).setiCnt(String.valueOf(Integer.parseInt(infolist.get(Integer.parseInt(index)).getiCnt())+1));
		
	}else if(change.equals("3")){
// 		데이터삭제
		infolist.remove(Integer.parseInt(index));
	}else if(change.equals("4")){
// 		선택삭제
		
		String[] deleteindex = request.getParameterValues("itemcheck");
		
		for(int i=0;i<deleteindex.length;i++){
			infolist.remove(Integer.parseInt(deleteindex[i])-i);
		}
		
	}
	
	
	session.setAttribute("cart", infolist);

// 	CacaoMainService service = CacaoMainService.getInstance();
// 	infolist = service.selectInfo(infolist);
	
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
<meta charset="utf-8">

<title>카카오프렌즈</title>
 
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Fancybox -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.css">
<!-- Animate -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<!-- Main Responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">


<!-- product페이지 css -->



<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">

<!-- Modernizer Script for old Browsers -->

<style type="text/css">
.checks {position: relative;}

.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}
.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 21px;  /* 체크박스의 너비를 지정 */
  height: 21px;  /* 체크박스의 높이를 지정 */
  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
  content: '\2714';  /* 체크표시 유니코드 사용 */
  color: #99a1a7;
  text-shadow: 1px 1px #fff;
  background: #e9ecee;
  border-color: #adb8c0;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
}

.btn {
  background-color: #CCFFFF;
  border: 0;
  font-family: 'Open Sans', sans-serif;
  

}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
var check_arr = []; //check된 배열
// 수량체크 이벤트
$(function(){
	$('input[name="plus"]').each(function(){
		$(this).click(function(){
			$(this).parent().find('input.cnt').val(parseInt($(this).parent().find('input.cnt').val()) + 1);
		});
	});
	
	$('input[name="minus"]').each(function(){
		$(this).click(function(){
			$(this).parent().find('input.cnt').val(parseInt($(this).parent().find('input.cnt').val()) - 1);
		});
	});

// 	모든선택 클릭시 이벤트
	 $('input[name="all"]').change(function(){
	        if($(this).is(":checked")){
	        	$('input[name="itemcheck"]').each(function(){
	        		$(this).prop("checked",true);
		        });
			
	            
	        }else{
	        	$('input[name="itemcheck"]').each(function(){
	        		$(this).prop("checked",false);
		        });
		        
	          
	        }
	    });


// 	 모든 선택  해제  이벤트
	 $('input[name="itemcheck"]').each(function(){
		$(this).change(function(){

			if(!$(this).is(":checked")){
	        
				$('input[name="all"]').prop("checked",false);
	        }
			
		});
     });

// 선택 데이터 삭제
	 $('input[name="itemcheck"]').each(function(){
			$(this).change(function(){

				if(!$(this).is(":checked")){
		        
					$('input[name="all"]').prop("checked",false);
		        }
				
			});
	 	});

	
	


	
});

</script>







<script
	src="${pageContext.request.contextPath}/js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<jsp:include page="/view/include/header.jsp"></jsp:include>
	<section id="sec" style="height=5000px;margin-top:20%;margin-left:10%;margin-right:25%" >
	
	<div id="search">
	<h4>총 <%=infolist.size() %>개의 상품이 조회 되었습니다.</h4> 
	</div>
	<div class="all" style="float:right;margin-left:2%">
	<form method='post'>
	<input type="hidden" value='4' name='change'/>
	<input class="checks" type="checkbox" name="all"/>전체 선택<input value='선택 삭제하기' class="btn" type="submit" value="선택 삭제하기" style="margin-left:30px;margin-top:-4px;float:right"/></br>
	
	</div>
	
<!-- 	상품조회 -->
	<div id=product style="margin-top : 10%">
	<%
		 
		 
		for(int i=0; i < infolist.size(); i++) { 
			Info item = (Info) infolist.get(i); 
			sum = sum + Integer.parseInt(item.getiCnt()) * Integer.parseInt(item.getiCost());

	%>	
			<div class="detail">
			<div class=choose>
			<input class="checks" type="checkbox" value=<%=i%> name="itemcheck" style="float:left;margin-right:20px"/>
			</div>
			<div class=img style="float:left;margin-bottom:20px;border-color:black;" >
			<img src="/Cacao/img/product/all/<%= item.getiId() %>00.jpg" style="width:200px;height:250px" /> 
			</div>
			<div class=information style="margin-bottom:3.5%;margin-top:2%">
			</br>
			상품이름 : <%= item.getiName() %>
			</br>
			</br>
			주문개수 : <%= item.getiCnt() %>
			</br>
			</br>
			금액 : <%= item.getiCost() %>
			</div>
			<div class='cancel' style="float:left;margin-left:95%;margin-top:-20%;margin-right:30%">
			<a href="/Cacao/view/main/cartView.jsp?change=3&index=<%=i%>"><input type='button' class='btn' value="취소"/></a>
			</div>
			<div class=number style="float:left;margin-left:68%">
			<a href="/Cacao/view/main/cartView.jsp?change=1&index=<%=i%>"><input type='button' class='btn' name='minus'  value="-"/></a>
			<input type='text' class="cnt"  value='<%=item.getiCnt()%>'/>
			<a href="/Cacao/view/main/cartView.jsp?change=2&index=<%=i%>"><input type='button' class='btn' name= 'plus' value="+"/></a>
			</div>
			
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			<hr/>
			</br>
			</div>

<%
		
} 	
%>
	</div>
	
<!-- 	합계창         -->
	<div>
	<div style="margin-left:50%"><h4>장바구니 합계 : </h4></div>                
	<div style="float:right;margin-top:-4%;margin-rigt"><h4><%=sum %>원</h4></div></br>
	<div style="margin-top:-2.5%;margin-left:50%"><h4>배송비 : </h4></div>                     
	<div style="float:right;margin-top:-4%"><h4>2500원</h4></div>                                                         
	<div style="margin-left:50%"><h4>총 결제 금액 : </h4></div>
	<div style="float:right;margin-top:-4%"><h4><%=sum+2500 %>원</h4></div>
	</div>
	<br/>
	<br/>
	<br/>
	<hr/>
	</form>
	</section>
	
	<jsp:include page="/view/include/footer.jsp"></jsp:include>
	
</body>
</html>






















