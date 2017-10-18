<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String pjName = "/Cacao"; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 카카오프렌즈 관리자페이지 </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
html {
    font-family: Lato, 'Helvetica Neue', Arial, Helvetica, sans-serif;
    font-size: 14px;
}

h5 {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
    margin: 0;
}

.card {
    font-size: 1em;
    overflow: hidden;
    padding: 0;
    border: none;
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
}

.card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;
}

.card-img-top {
    display: block;
    width: 100%;
    height: auto;
}

.card-title {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
}

.card-text {
    clear: both;
    margin-top: .5em;
    color: rgba(0, 0, 0, .68);
}

.card-footer {
    font-size: 1em;
    position: static;
    top: 0;
    left: 0;
    max-width: 100%;
    padding: .75em 1em;
    color: rgba(0, 0, 0, .4);
    border-top: 1px solid rgba(0, 0, 0, .05) !important;
    background: #fff;
}

.card-inverse .btn {
    border: 1px solid rgba(0, 0, 0, .05);
}

.profile {
    position: absolute;
    top: -12px;
    display: inline-block;
    overflow: hidden;
    box-sizing: border-box;
    width: 25px;
    height: 25px;
    margin: 0;
    border: 1px solid #fff;
    border-radius: 50%;
}

.profile-avatar {
    display: block;
    width: 100%;
    height: auto;
    border-radius: 50%;
}

.profile-inline {
    position: relative;
    top: 0;
    display: inline-block;
}

.profile-inline ~ .card-title {
    display: inline-block;
    margin-left: 4px;
    vertical-align: top;
}

.text-bold {
    font-weight: 700;
}

.meta {
    font-size: 1em;
    color: rgba(0, 0, 0, .4);
}

.meta a {
    text-decoration: none;
    color: rgba(0, 0, 0, .4);
}

.meta a:hover {
    color: rgba(0, 0, 0, .87);
}

</style>

<script type="text/javascript">
	$(function(){
		$('#product').click(function(){
			var result = confirm('상품관리 페이지로 이동하시겠습니까?'); 
			 	if(result) { 
			 		location.replace('<%=pjName%>/Admin?cmd=adminProductMain-page'); 
			 	}
		});
		
		$('#orderlist').click(function(){
			var result = confirm('주문관리 페이지로 이동하시겠습니까?'); 
			 	if(result) { 
			 		location.replace('<%=pjName%>/Admin?cmd=adminOrderMain-page'); 
			 	}
		});
		
		$('#mypage').click(function(){
			var result = confirm('문의관리 페이지로 이동하시겠습니까?'); 
			 	if(result) { 
			 		location.replace('<%=pjName%>/Admin?cmd=adminMyPageMain-page'); 
			 	}
		});
		
		$('#service').click(function(){
			var result = confirm('고객센터관리 페이지로 이동하시겠습니까?'); 
			 	if(result) { 
			 		location.replace('<%=pjName%>/Admin?cmd=adminServiceMain-page'); 
			 	}
		});
	});
	

</script>
</head>
<body>
<!-- 	<div class='header'>
		<img src="https://t1.daumcdn.net/friends/prod/category/W001_friends_ryan1.jpg" class="img_intro rw_show" alt="라이언">
		<img src="https://t1.daumcdn.net/friends/prod/category/M001_friends_ryan2.jpg" class="img_intro rw_hide" alt="라이언">
			<h2 id="kakaoBody" class="tit_intro">라이언</h2>
	</div>
	 -->
		<div class="container">
        <div class="row">
            <!-- 상품 관리자 페이지  --> 
            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card card-inverse card-info">
                    <img class="card-img-top" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
                    <div class="card-block">
                        <h4 class="card-title">상품 관리</h4>
                        <div class="card-text">
                          	  상품 정보관리 및 재고관리
                        </div>
                    
                    </div>
					<div class="card-footer">
                        <button class="btn btn-info btn-sm" id="product">상품</button>
                    </div>
                </div>
            </div>
            
            <!-- 주문 관리자 페이지  --> 
            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card card-inverse card-info">
                    <img class="card-img-top" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
                    <div class="card-block">
                        <h4 class="card-title">주문 관리</h4>
                        <div class="card-text">
                          	  주문상태변경 및 취소관리
                        </div>
                    
                    </div>
					<div class="card-footer">
                        <button class="btn btn-info btn-sm" id="orderlist">주문</button>
                    </div>
                </div>
            </div>
            
            <!-- 1:1문의 관리자 페이지  --> 
            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card card-inverse card-info">
                    <img class="card-img-top" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
                    <div class="card-block">
                        <h4 class="card-title">문의 관리</h4>
                        <div class="card-text">
                          	  마이페이지 내 1:1 문의 관리
                        </div>
                    
                    </div>
					<div class="card-footer">
                        <button class="btn btn-info btn-sm" id="mypage">문의</button>
                    </div>
                </div>
            </div>
            
            <!-- 고객센터 관리자 페이지  --> 
            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card card-inverse card-info">
                    <img class="card-img-top" src="http://success-at-work.com/wp-content/uploads/2015/04/free-stock-photos.gif">
                    <div class="card-block">
                        <h4 class="card-title">고객센터 관리</h4>
                        <div class="card-text">
                          	  공지사항 및 FAQ 관리
                        </div>
                    
                    </div>
					<div class="card-footer">
                        <button class="btn btn-info btn-sm" id="service">고객센터</button>
                    </div>
                </div>
            </div>
        </div>
</div>
</body>
</html>