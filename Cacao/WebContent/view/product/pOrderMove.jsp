<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습</title>
<style type="text/css">
.body{

width:50px;
height:100px;
}

#screen{
margin-top:10%;
margin-left:10%;
background-color : yellow;
}

#btn{
margin-top:5%;
}

#cancel{
	margin-left:1%;
	margin-right:1%;
	background-color : white;
	border-color : gray;
	width : 10%;
	height : 30px;
}
#complete{
	background-color : orange;
	border-color : gray;
	width : 10%;
	height : 30px;
}

</style>
</head>
<body>
<div id='screen'>
<div id='question'>
	장바구니로 이동 하시 겠습니까?
</div>
<div id='btn'>
	<input id='cancel' type="button" value='취소'/>
	<input id='complete'type="button" value='확인'/>
</div>
</div>
</body>
</html>