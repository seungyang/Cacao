<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.util.*" %>
<%@ page import="cacao.model.vo.*" %>
<%List<Choose> orderList = (List) request.getAttribute("orderResult"); %>
    <%
   String pjName = "/Cacao";
    int sum = 0;
    for(int i =0; i < orderList.size(); i ++){
    	sum += Integer.parseInt(orderList.get(i).getiCost());
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=pjName %>/css/mypage/qabtn.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(function(){
	
   $('#Cancel').click(function(){
      event.preventDefault();
      window.location = '/Cacao/MyPage?cmd=main-page&page=4';
   });
   $('#Insert').click(function () {
	   if($('#qName').val() == ''){
			alert('주문자를 입력하세요');
			return;
		}
		if($('#qEmail').val() == ''){
			alert('이메일을 입력하세요');
			return;
		}
		if($('#qTel').val() == ''){
			alert('전화번호를 입력하세요');
			return;
		}
		if($('#post1').val() == ''){
			alert('주소를 선택하세요');
			return;
		}
		if(($('input[type ="radio"]').is(":checked")) == false){
			alert('결제 방법을 선택하세요');
			return;
		}
		if(($('#personal').is(":checked")) == false){
			alert('개인정보 수집 및 이용에 동의하세요');
			return;
		}
		if(($('#member').is(":checked")) == false){
			alert('회원 이용 약관에 동의하세요');
			return;
		}
		
		$('#orderInsert').submit();
  });
   
   $('.minus').click(function(){
	   var countm =  $(this).parent().find("input.textcnt").val();
	   var gob = $(this).parent().parent().parent().parent().find("span.money").text();
	   var allmoney = $(this).parent().parent().parent().parent().parent().find("span#sum").text();
	   var totalmoney = $(this).parent().parent().parent().parent().parent().find("span#allmoney").text();
	   
	   if(countm <= 1){
		   alert("수량은 최소 1개 입니다.");
		   return;
	   }
	   $(this).parent().find("input.textcnt").val(countm-1);
	   $(this).parent().parent().parent().parent().parent().find("span#sum").text(parseInt(allmoney)-parseInt(gob)+"원");
	   $(this).parent().parent().parent().parent().parent().find("span#allmoney").text(parseInt(totalmoney)-parseInt(gob)+"원");
   });
   $('.plus').on("click",function(){
	   var countp = $(this).parent().find("input.textcnt").val();
	   var gob = $(this).parent().parent().parent().parent().find("span.money").text();
	   var allmoney = $(this).parent().parent().parent().parent().parent().find("span#sum").text();
	   var totalmoney = $(this).parent().parent().parent().parent().parent().find("span#allmoney").text();
	   
	   if(countp >= 50){
		   alert("주문 최대수량은 최대 50개 입니다.");
		   return;
	   }
	   $(this).parent().find("input.textcnt").val(parseInt(countp)+1);
	   $(this).parent().parent().parent().parent().parent().find("span#sum").text(parseInt(allmoney)+parseInt(gob)+"원");
	   $(this).parent().parent().parent().parent().parent().find("span#allmoney").text(parseInt(totalmoney)+parseInt(gob)+"원");
   });
});
function openDaumPostcode() {
    var width = 500; //팝업창이 실행될때 위치지정
    var height = 600; //팝업창이 실행될때 위치지정
    new daum.Postcode({
        width : width, //팝업창이 실행될때 위치지정
        height : height, //팝업창이 실행될때 위치지정
        oncomplete: function(data) {
             // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
            // 법정동명이 있을 경우 추가한다.
            if(data.bname !== ''){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있을 경우 추가한다.
            if(data.buildingName !== ''){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }
             
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("post1").value = data.postcode1;
            document.getElementById("post2").value = data.postcode2;
            document.getElementById("addr1").value = fullRoadAddr;
            document.getElementById("addr2").value = data.jibunAddress;
 
            document.getElementById('addr2').focus();
        }
    }).open({
        left : (window.screen.width/2) - (width/2), //팝업창이 실행될때 위치지정
        top : (window.screen.height/2) - (height/2) //팝업창이 실행될때 위치지정
    });
}
</script>


<title> 우리반 연습</title>
</head>
<body>
	
	<form class="form-horizontal" id='orderInsert' name='orderInsert' action="<%=pjName %>/Order?cmd=insert-page" method='post'>

<fieldset>
<legend style="text-align: center">주문 및 배송 정보</legend>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qName">주문자명</label>  
 <div class="col-md-5">
  <input id="qName" name="qName" type="text" placeholder="실명을 입력하지 않을 경우 반품 또는 분실의 우려가 있습니다." class="form-control input-md" required="">
</div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qEmail">이메일</label>  
  <div class="col-md-5">
  <input id="qEmail" name="qEmail" type="text" placeholder="잘못 입력 시 배송정보와 주문정보 확인이 불가합니다." class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">연락처</label>  
  <div class="col-md-5">
  <input id="qTel" name="qTel" type="text" placeholder="잘못 입력 시 택배 도착이 지연될 수 있습니다." class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">주소</label>  
  <div class="col-md-5">
<!--   <input id="qTel" name="qTel" type="text" placeholder="주소" class="form-control input-md" required=""> -->
    
  <input id="post1" readonly="" size="5" name="post1"> - <input id="post2" readonly="" size="5" name="post2">
					<input onclick="openDaumPostcode()" type="button" value="우편번호찾기"><br>
					<span style="LINE-HEIGHT: 10%"></span>
					<input id="addr1" readonly="" size="40" name="addr1" placeholder="도로명주소"><br>
					<span style="LINE-HEIGHT: 10%"></span>
					<input id="addr2" size="40" name="addr2" placeholder="지번주소">
					  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qTitle">배송메모</label>  
  <div class="col-md-4">
  <input id="qTitle" name="qTitle" type="text" placeholder="20자 이내로 작성해 주세요" class="form-control input-md" required="">
  <span class="help-block">
  * 배송메모 작성시 특수문자 & < > 등은 제외하고 입력해 주시기 바랍니다.
  </span>
  <span class="help-block">
  * 위에 내용을 허위기재 시에 발생하는 모든 불이익은 책임지지 않습니다.
  </span> 
  </div>
</div>

<legend style="text-align: center">상품리스트</legend>

<% for(int i=0; i <orderList.size(); i++){ %>
<div class='product'>
<div ></div>
<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">상품이름</label>  
  <div class="col-md-5">
  <span class="help-block">
  <%=orderList.get(i).getiName()%>
  
  </span> 
  </div>
  <div align='right' style="position:absolute; y-index:1; right:25%; margin-left:0px; margin-top:0px;">
	<img src="<%=pjName %>/img/product/all/<%=orderList.get(i).getiId() %>00.jpg" width=150px height=150px>
</div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">금액</label>  
  <div class="col-md-5">
  <span class="money">
  <%=orderList.get(i).getiCost()%>
  </span> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">수량</label>  
  <div class="col-md-5">
  <span class="help-block">
  <input type="button" name="minus" value = "-" class="minus">
  <input type="text" size='1' name="count" disabled = 'true' class ="textcnt" value = "1">
  <input type="button" name="plus" value = "+" class="plus">
  <br/>
  <br/>
  <hr/>
  </span> 
  </div>
</div>


</div>

<%} %>

<hr/>
<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">장바구니 합계</label>  
  <div class="col-md-5">
  <span class="help-block" id="sum">
  <%=sum %>원
  </span> 
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">배송비</label>  
  <div class="col-md-5">
  <span class="help-block">
  2500원
  </span> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">총 결제금액</label>  
  <div class="col-md-5">
  <span class="help-block" id="allmoney">
  <%=sum+2500 %>원
  </span> 
  </div>
</div>

<legend style="text-align: center">결제수단</legend>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">결제 방법</label>  
  <div class="col-md-5">
  <span class="help-block">
  <input type="radio" name="payment" value="deposit">무통장 입금
  <input type="radio" name="payment" value="account"/>계좌이체
  </span> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">개인정보 수집 및 이용 동의</label>  
  <div class="col-md-5">
  <span class="help-block">
  <input type="checkbox" name="check1" id="personal"> 
  </span> 
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">회원 이용 약관 동의</label>  
  <div class="col-md-5">
  <span class="help-block">
  <input type="checkbox" name="check1" id="member"> 
  </span> 
  </div>
</div>
  
<div class="btn_wrap">
   <div class="col three">            
      <a href="#" class="btn2 btn-sunflower2" id="Cancel">취소하기</a>         
   </div>
   <div class="col three">            
      <a href="#" class="btn btn-sunflower" id="Insert">등록하기</a>         
   </div>
</div>



</fieldset>


</form>
	
	
</body>
</html>