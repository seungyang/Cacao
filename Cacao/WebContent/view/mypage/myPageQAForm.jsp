<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title> 우리반 연습</title>
</head>

<body>
<form class="form-horizontal">
<fieldset>
<legend style="text-align: center">고객 정보</legend>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qName">이름</label>  
 <div class="col-md-5">
  <input id="qName" name="qName" type="text" placeholder="이름" class="form-control input-md" required="">
</div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qEmail">이메일</label>  
  <div class="col-md-5">
  <input id="qEmail" name="qEmail" type="text" placeholder="이메일" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="qTel">연락처</label>  
  <div class="col-md-5">
  <input id="qTel" name="qTel" type="text" placeholder="연락처" class="form-control input-md" required="">
    
  </div>
</div>

<legend style="text-align: center">문의 내용</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="qType">유형</label>
  <div class="col-md-4">
    <select id="qType" name="qType" class="form-control">
      <option value="0">뮨의 유형을 선택하세요</option>
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
  <input id="qContent" name="qContent" type="text" class="form-control input-md">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="check">첨부파일</label>  
  <div class="col-md-5">
  <input id="check" name="check" type="text" placeholder="첨부파일공간" class="form-control input-md">
  <span class="help-block">
  * 상품 불량 및 오배송의 경우, 해당 제품 사진을 등록 부탁드립니다.<br/>
  * 첨부파일은 1개만 등록 가능하며, 최대 10M의 용량 제한이 있습니다.<br/>
  * 첨부 파일은 1개만 등록가능합니다.<br/>
  </span>  
  </div>
</div>

</fieldset>
</form>



</body>
</html>