<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
	%>
	제출하신 아이디는<%= memberId %>이고 , 비밀번호는 <%= memberPw %> 입니다.
</body>
</html>