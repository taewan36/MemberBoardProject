<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>index.jsp</h2>
	<a href="/board/save">글쓰기화면</a><br>
	<a href="/board/findAll">글목록출력</a><br>
	
	<a href="/board/paging">페이징</a><br>
	
	<!-- 회원 관련된 주소를 요청할 때는 /member/ 이렇게 시작. 게시판 관련된 주소 요청할 때는 /board/ 이렇게 시작 넵  
		아까 컨트롤러에서 member/save 는 jsp를 찾는거니까 헷갈리면 안되고 네-->
	<a href="/member/save">회원가입</a>
	<a href="/member/login">로그인</a>
	
	세션값: ${sessionScope.loginId }
</body>
</html>