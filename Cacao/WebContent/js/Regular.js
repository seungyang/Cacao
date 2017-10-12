function openAccount(){

	var name = $("#boardname").value;
	var title =$("#title").value;
	var contents = $("#contents").value; 
	var email = $("#email").value;
	
	/* 유효성 검사  및 정규 표현식 */

	if(!name){
		$("#contents1").innerHTML = messageTable("이름을 입력해 주세요..");
		$("#name").focus();
		return false;
		
	}else if(!/^[가-힣]{2,5}$/.test(name)){
		$("#contents1").innerHTML = messageTable("예금주명은 2자 이상 5자 이하 한글만 입력 가능합니다.");
		$("#name").focus();
		return false;
	}
	
	if(!email){
		$("#contents1").innerHTML = messageTable("입금금액을 입력해 주세요..");
		$("#email").focus();
		return false;
	}else if(!/^[a-zA-Z]{0,15}$/.test(email)){
		$("#contents1").innerHTML = messageTable("입금금액은 숫자만 입력 가능합니다.");
		$("#email").focus();
		return false;
	}
	
	if(!title){
		$("#contents1").innerHTML = messageTable("계좌번호를 입력해 주세요..");
		$("#title").focus();
		return false;
		
	}
	
	if(!contents){
		$("#contents1").innerHTML = messageTable("비밀번호를 입력해 주세요..");
		$("#contents").focus();
		return false;
	}
}
	window.onload = function() {
		$("#writeCheck").onclick=function(){
			openAccount();
		}
	
	
	}