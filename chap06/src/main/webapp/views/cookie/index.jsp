<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
   

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ű (Cookie)</title>
</head>
<body>

	<h3># Cookie</h3>
	<ul>
		<li>���������� ���ϴ� �����͸� ������� �������� ��򰡿� �����ϴ� ��</li>
		<li>�����͸� Ű ��� ���·� ����</li>
		<br />
		<li><b>local Storage, Session Storage���� ������</b></li>
		<li>local Storage, Session Storage�� Ŭ���̾�Ʈ ������ ���ϴ� �����͸� ���������� �����Ѵ�.</li>
		<li>���������� ���ϴ� �����ʹ� ��Ű�� ����</li>
		<li>������ ���ϴ� ��Ű �����͸� ���信 �Ǿ� ������ Ŭ���̾�Ʈ�� �װ��� ������ �� ��� ��û�� ���Խ��� ������.</li>
	</ul>
	
	<hr />
	<form action="<c:url value="/views/cookie/add.jsp" />" method="GET">
		��Ű�̸� : <input type="text" name="name"/>
		��Ű�� : <input type="text" name="value" /><br />
		��Ű���� : <input type="number" name="max-age" />
		<input type="submit" value="��Ű �߰��ϱ�" />
	</form>

<hr />

	<button id="btn">��Ű Ȱ���Ϸ� ����</button>
	
	<!-- ��� �� -->
	<script>
		const btn = document.getElementById('btn');
		btn.addEventListener('click', (e)=> {
			location.href = '<%= request.getContextPath() %>/abc';
		});
	</script>


	<!-- ��� �� �� -->
	<!-- <script src="<c:url value="/assets/myscript.js"/>"></script> -->
	<script src="<c:url value="/assets/variables.js"/>"></script>

</body>
</html>