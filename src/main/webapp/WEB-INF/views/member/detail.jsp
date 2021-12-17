<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>detail.jsp</h2>
	${member.m_number }
	${member.m_id }
	${member.m_password }
	${member.m_name }
	${member.m_email }
	${member.m_phone }
	
	<a href="findAll">목록으로 돌아가기</a>
	<!-- http://localhost:8081/member/detail?m_number=1 -->
	<a href="/">홈</a> <!-- //localhost:8081/ -->
	<a href="./">홈</a> <!-- //localhost:8081/member -->
	<a href="../">홈</a> <!-- //localhost:8081/ -->
	
</body>
</html>