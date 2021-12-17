<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	input {
		display:block;
		}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>>
<script>
/* ���̵� �Է��� �ϴ� ���ȿ� inDuplicate() �Լ��� ȣ���ϰ� �Էµ� ���� �ֿܼ� ��� */
	function idDuplicate() {
		const id = document.getElementById('m_id').value;
		console.log(id);
		const checkResult = document.getElementById('id-dup-check');
		$.ajax({
			type: 'post', //(get, post, delete, put��)
			url: 'idDuplicate', //��û�ּ�(��Ʈ�ѷ��� ��û�ϴ� �ּ�)
			data: {'m_id': id}, //������ ������
			dataType: 'text' , // ��û �� ���Ϲ��� ���� ������ ����
			success: function(result) { //��û�� ���������� ó������ �� ������ �Լ�
				console.log('ajax ����');
				console.log(result);
				if(result=="ok") {
					checkResult.style.color = 'green';
					checkResult.innerHTML = '���� ���̵�׿�!!';
				} else {
					checkResult.style.color = 'red';
					checkResult.innerHTML = '�̹� ������� ���̵��Դϴ�.';
				}
			},
			error: function() {  //��û�� �������� �� ������ �Լ�
				console.log('��Ÿ ã������');
			}
		});
}
</script>
</head>
<body>
	<h2>ȸ������ ������</h2>
	<form action="save" method="post">
		���̵�: <input type="text" name="m_id" onkeyup="idDuplicate()" id="m_id">
		<span id="id-dup-check"></span>
		��й�ȣ: <input type="password" name="m_password">
		�̸�: <input type="text" name="m_name">
		�̸���: <input type="text" name="m_email">
		��ȭ��ȣ: <input type="text" name="m_phone">
		<input type="submit" value="ȸ������">
	</form>
</body>
</html>