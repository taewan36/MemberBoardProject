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
			<th>ȸ����ȣ</th>
			<th>���̵�</th>
			<th>��й�ȣ</th>
			<th>�̸�</th>
			<th>�̸���</th>
			<th>�����ʻ���</th>
			<th>����</th>
			<th>����</th>
			<c:if test="${sessionScope.loginId eq 'admin'}">
			<th>ȸ�����</th>
			</c:if>

		</tr>
		
		<tr>

			<td>${mypage.m_number}</td>
			<td>${mypage.m_id}</td>
			<td>${mypage.m_password}</td>
			<td>${mypage.m_name}</td>
			<td>${mypage.m_email}</td>
			<td><img alt="" src="/resources/upload/${mypage.m_filename}"></td>


			<td><a href="/member/delete?m_number=${mypage.m_number}">����</a></td>
			<td><a href="/member/update?m_number=${mypage.m_number}">����</a></td>
			<c:if test="${sessionScope.loginId eq 'admin'}">
			<td><a href="/member/findAll">��ü���</a></td>
			</c:if>
			
		</tr>
		
	</table>	
	
		<button onclick="logout()">�α׾ƿ�</button><br><br><br>
		
				<td><a href="/">ù��������</a></td>
</body>
</html>