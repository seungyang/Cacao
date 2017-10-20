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
		$('#pwdBtn').click(function(){
				window.close();
		});
	})
</script>
</head>
<body>

<form >
<div class="form-group">
 	<label class="col-md-4 control-label" for="findMail">변경되었습니다.</label>
</div>
<div class="form-group" style="margin-left: 200px">
<input type="button" name="pwdBtn" id="pwdBtn" value=" 닫 기   "
					style="background-color: #ffda01; margin-top: 20px; font-weight: bold; color: black;
					width: 200px; height: 40px;">

</div>
</form>


</body>
</html>