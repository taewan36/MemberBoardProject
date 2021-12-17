<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script>
	function logout() {
		location.href = "logout";
	}
</script>

<title>Insert title here</title>
</head>
<body>
	<h2>main.jsp</h2>
	세션에 저장한 데이터 출력: ${ssessionScope.loginId } 
	<!-- 로그아웃 버튼을 클릭하면 logout 이라는 주소 요청 -->
	<button onclick="logout()">로그아웃</button><br>
	<!--  아래링크를 클릭하면 전체회원목록을 조회하여 findAll.jsp에 출력 -->
	<!--  아이디가 admin 인 관리자가 로그인 했을 때만 목록 링크가 보이도록 -->
	<c:if test= "${sessionScope.loginId eq 'admin' }">
		<a href="findAll">회원목록(관리자만 보여요)</a>
	</c:if>
		
	
	
	<a href="findAll">회원목록</a>
	
	<a href="/member/mypage?m_number=${loginNumber}">마이페이지</a><br><br>
	
	<a href="mypage">마이페이지</a>
	<button onclick="mypage()">마이페이지</button><br>
</body>
</html>