<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String pjName = "/Cacao";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=pjName %>/css/mypage/qabtn.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function(){
   $('#qaCencel').click(function(){
      event.preventDefault();
      window.location = '/Cacao/MyPage?cmd=main-page&page=4';
   });

   $('#qaSubmit').click(function () {
		if($('#qCate').val()==0){
	   		alert('유형을 선택하세요');			
		}else if($('#qTitle').val()==""){
			alert('제목을 입력하세요');
		}else if($('#qContent').val()==""){
			alert('내용을 입력하세요');
		}else{
 			$('#qaFrm').submit();
		}
		
		/*  */
   });
});   
</script>


<title> 우리반 연습</title>
</head>

<body>
<form class="form-horizontal" id='qaFrm' name='qaFrm' action="<%=pjName %>/MyPage?cmd=myPageQASave-page" method='post'>
<legend style="text-align: center">문의 내용</legend>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="qCate">유형</label>
  <div class="col-md-4">
    <select id="qCate" name="qCate" class="form-control">
      <option value="0">문의 유형을 선택하세요</option>
      <option value="회원">회원</option>
      <option value="상품">상품</option>
      <option value="주문결제">주문결제</option>
      <option value="배송">배송</option>
      <option value="쿠폰">쿠폰</option>
      <option value="교환/반품/환불">교환/반품/환불</option>
      <option value="기타">기타</option>
      <option value="해외배송">해외배송</option>
   </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qTitle">제목</label>  
  <div class="col-md-4">
  <input id="qTitle" name="qTitle" type="text" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qContent">내용</label>  
  <div class="col-md-5">
  <textarea  id="qContent" class="form-control input-md" name="qContent" rows="10" cols="20"></textarea>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qFile">첨부 파일</label>  
  <div class="col-md-5">
  <input id="qFile" name="qFile" type="text" placeholder="첨부 파일공간" class="form-control input-md">
  <span class="help-block">
  * 상품 불량 및 오배송의 경우, 해당 제품 사진을 등록 부탁드립니다.<br/>
  * 첨부파일은 1개만 등록 가능하며, 최대 10M의 용량 제한이 있습니다.<br/>
  * 첨부 파일은 1개만 등록가능합니다.<br/>
  </span>  
  </div>
</div>

<div class="btn_wrap">
   <div class="col three">            
      <a href="#" class="btn2 btn-sunflower2" id="qaCencel">취소하기</a>         
   </div>
   <div class="col three">            
      <a href="#" class="btn btn-sunflower" id="qaSubmit">등록하기</a>         
   </div>
</div>
</fieldset>


</form>

</body>
</html>