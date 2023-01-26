<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
<%

	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");
	
	//#서버측에서 쿠키 만들기
	
	//1. 새 쿠키 인스턴스를 생성한다. 
	Cookie cookie = new Cookie(name, value); //javax.servlet.http.Cookie.Cookie(String name, String value)
	

	//2. 해당 쿠키 인스턴스를 원하는 대로 설정한다. 
	
	
	//★쿠키 유효시간 설정(초)
	try {
		cookie.setMaxAge(Integer.parseInt(maxAge));
	} catch (NumberFormatException e) {
			System.out.println("cookie max-age == session");
	}
	//기본적으로 session(웹브라우저 종료시 삭제) //근데 서버측에 있는 세션 객체와는 다르지
	//0으로 설정시 해당 쿠키를 웹 브라우저에서 삭제한다.★★★★★★
	
	
	//cookie.setPath(); //★이 쿠키를 사용할 수 있는 경로를 지정. 지정하지 않으면 기본적으로 현재 경로로 설정됨
	
	cookie.setHttpOnly(true); //쿠키로 http이외의 프로그래밍 언어를 보낼 수 없도록 설정 (보안)
	//쿠키에 jsp, js코드 등..을 보내서 이상하게 조작하는 걸 방지하기 위한 보안 기능

	cookie.setComment("쿠키에 대한 설명을 추가할 수 있다.");
	
	
	//3. 해당 쿠키를 응답에 추가해놓는다.
	response.addCookie(cookie);
							//chap06 말고 request.getContextPath()쓰기~~~
	response.sendRedirect(request.getContextPath() + "/views/cookie/index.jsp");
	
%>

