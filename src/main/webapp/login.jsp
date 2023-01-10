<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function checkIdPw() {
		
		if(document.loginForm.id.value.length == 0){
			alert('아이디를 입력해주세요');
			return false;
		}
		if (document.loginForm.id.value.length < 6){
			alert('아이디는 6자리 이상 입력해주세요');
			return false;
			
		}
		if(document.loginForm.pw.value.length == 0){
			alert('비밀번호를 입력해주세요');
			return false;
		}
		if (document.loginForm.pw.value.length < 8){
			alert('비밀번호는 8자리 이상 입력해주세요');
			return false;
			
		}
		/*
		if(isNaN(document.loginForm.pw.value)){
			alert('비밀번호는 숫자만 입력해주세요');
			return false;
		}
		for(var i=0;i<document.loginForm.id.value.length;i++){
			var firstChar = document.loginForm.id.value.charAt(i);
			
			if(firstChar <= 'Z'&& firstChar >= 'A'){
				alert('아이디의 모든글자는 소문자만 가능합니다')
				return false;
				
			}
		}
		*/
		
		var memberid = document.loginForm.id.value;
		var charCheck = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //아이디의 영문자 한글을 제외한 값이 들어오면 false
		
		
		
		if(!charCheck.test(memberid)){
			alert('아이디의 첫글자는 영문자 또는 한글만 가능합니다.');			
			return false;
		}
		
		var memberpw = document.loginForm.pw.value;
		var numCheck = /^[0-9]*$/;  //숫자나 공백
		
		console.log(numCheck.test(memberpw))
		
		if(!numCheck.test(memberpw)){
			alert('비밀번호는 숫자만 가능합니다.');			
			return false;
		}
		
		document.loginForm.submit();
		
	}
	
	
</script>
</head>
<body>
	<form action="result.jsp" name="loginForm" onsubmit="return checkIdPw()">
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name ="pw"><br><br>
		<input type="submit" value="제출하기" >
		<input type="button" value="입력하기" onclick="checkIdPw()">
		<input type="button" value="네이버로가기" onclick="javascript:window.location='https://www.naver.com'">
		<button onclick="javascript:window.location='https://www.daum.net'">다음으로 가기</button>
	</form>
</body>
</html>