<%@page import="cacao.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String pjName = "/Cacao";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(function(){
		
		$('#findBtn').click(function(){
			var findNick = $('#findNick').val();
			var findBirth = $('#findBirth').val();

			$.ajax({
				type:'post',
				url : '/Cacao/view/login/Index.jsp',
				data : { 'findNick':findNick ,'findBirth':findBirth },
				dataType : 'text',
				success : function(data){
					var obj = {};
		               obj = eval("("+data+")");
		               var arr = obj.result;
		               
		               var str = "";
		               /* data값이 없을떄  */
		               if(arr==""){
		            	    $('.ajax').text("");
		            	   	str = '<input id="findEmail" name="findEmail" type="text" value="검색된 이메일이 없습니다." class="form-control input-md" required="" readonly="readonly">';
		            	   	$('.ajax').append(str);
		               }else{
		            	   $('.ajax').text("");
		            	   for ( var i =0; i<arr.length;i++){
		            		str = '<input id="findEmail" name="findEmail" type="text" value="'+arr[i].email+'" class="form-control input-md" required="" readonly="readonly">';
			            	$('.ajax').append(str);	   
		            	   }
		               }		               
				},
				error : function(err){
					alert("에러발생 : "+ err)
				}
			});
		
		});
	});
</script>
</head>
<body>
<br/>
<br/>

<form >
<div class="form-group">
  <label class="col-md-4 control-label" for="findNick">닉네임</label>  
  <div class="col-md-5">
  <input id="findNick" name="findNick" type="text" placeholder="가입시 입력한 닉네임을 적어주세요" class="form-control input-md" required="" values="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="findBirth">생년월일 (Ex.19990101)</label>  
  <div class="col-md-5">
  <input id="findBirth" name="findBirth" type="text" placeholder="YYYYMMDD" class="form-control input-md" required="" values="">
    
  </div>
</div>
<div class="form-group" style="margin-left: 200px">
<input type="button" name="findBtn" id="findBtn" value=" 찾 기  "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>


<div class="form-group">
  <label class="col-md-4 control-label" for="findEmail">검색된 이메일 주소</label>  
 	<div class="col-md-5 ajax">
	  
 	</div>
</div>






</body>
</html>