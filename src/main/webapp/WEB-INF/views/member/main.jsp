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
	���ǿ� ������ ������ ���: ${ssessionScope.loginId } 
	<!-- �α׾ƿ� ��ư�� Ŭ���ϸ� logout �̶�� �ּ� ��û -->
	<button onclick="logout()">�α׾ƿ�</button><br>
	<!--  �Ʒ���ũ�� Ŭ���ϸ� ��üȸ������� ��ȸ�Ͽ� findAll.jsp�� ��� -->
	<!--  ���̵� admin �� �����ڰ� �α��� ���� ���� ��� ��ũ�� ���̵��� -->
	<c:if test= "${sessionScope.loginId eq 'admin' }">
		<a href="findAll">ȸ�����(�����ڸ� ������)</a>
	</c:if>
		
	
	
	<a href="findAll">ȸ�����</a>
	
	<a href="/member/mypage?m_number=${loginNumber}">����������</a><br><br>
	
	<a href="mypage">����������</a>
	<button onclick="mypage()">����������</button><br>
</body>
</html>