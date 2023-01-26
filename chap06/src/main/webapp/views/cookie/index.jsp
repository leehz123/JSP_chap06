<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
   

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키 (Cookie)</title>
</head>
<body>

	<h3># Cookie</h3>
	<ul>
		<li>서버측에서 원하는 데이터를 사용자의 웹브라우저 어딘가에 저장하는 것</li>
		<li>데이터를 키 밸류 형태로 보관</li>
		<br />
		<li><b>local Storage, Session Storage와의 차이점</b></li>
		<li>local Storage, Session Storage는 클라이언트 측에서 원하는 데이터를 웹브라우저에 보관한다.</li>
		<li>서버측에서 원하는 데이터는 쿠키에 저장</li>
		<li>서버가 원하는 쿠키 데이터를 응답에 실어 보내면 클라이언트가 그것을 보관한 후 모든 요청에 포함시켜 보낸다.</li>
	</ul>
	
	<hr />
	<form action="<c:url value="/views/cookie/add.jsp" />" method="GET">
		쿠키이름 : <input type="text" name="name"/>
		쿠키값 : <input type="text" name="value" /><br />
		쿠키수명 : <input type="number" name="max-age" />
		<input type="submit" value="쿠키 추가하기" />
	</form>

<hr />

	<button id="btn">쿠키 활용하러 가기</button>
	
	<!-- 얘는 됨 -->
	<script>
		const btn = document.getElementById('btn');
		btn.addEventListener('click', (e)=> {
			location.href = '<%= request.getContextPath() %>/abc';
		});
	</script>


	<!-- 얘는 안 됨 -->
	<!-- <script src="<c:url value="/assets/myscript.js"/>"></script> -->
	<script src="<c:url value="/assets/variables.js"/>"></script>

</body>
</html>