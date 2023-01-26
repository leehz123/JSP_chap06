<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

	//Servlet
	
 	Cookie[] cookies = request.getCookies();
	request.setAttribute("cookies", cookies);
	
	//System.out.println(java.util.Arrays.toString(cookies));
	//걍 이렇게 나오네 Cookie클래스는 toString이 구현 돼 있지 않네 [javax.servlet.http.Cookie@59c8bb2, javax.servlet.http.Cookie@24708f12]

			
	//해당 path 의 쿠키가 요청에 함께 실려오게 된다.		
	if(cookies != null) {
		for(int i = 0, len = cookies.length; i < len; ++i) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			System.out.println(name + "=" + value);
		}
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>쿠키 구경하기</h1>



</body>
</html>