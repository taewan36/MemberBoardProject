<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
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
	<h2>mypage.jsp</h2>
	<table class="table table-dark">
		<tr>
			<th>회원번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>프로필사진</th>
			<th>삭제</th>
			<th>수정</th>
			<c:if test="${sessionScope.loginId eq 'admin'}">
			<th>회원목록</th>
			</c:if>

		</tr>
		
		<tr>

			<td>${mypage.m_number}</td>
			<td>${mypage.m_id}</td>
			<td>${mypage.m_password}</td>
			<td>${mypage.m_name}</td>
			<td>${mypage.m_email}</td>
			<td><img alt="" src="/resources/upload/${mypage.m_filename}"></td>


			<td><a href="/member/delete?m_number=${mypage.m_number}">삭제</a></td>
			<td><a href="/member/update?m_number=${mypage.m_number}">수정</a></td>
			<c:if test="${sessionScope.loginId eq 'admin'}">
			<td><a href="/member/findAll">전체목록</a></td>
			</c:if>
			
		</tr>
		
	</table>	
	
		<button onclick="logout()">로그아웃</button><br><br><br>
		
				<td><a href="/">첫페이지로</a></td>
</body>
</html>