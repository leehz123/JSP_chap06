<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
<%

	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");
	
	//#���������� ��Ű �����
	
	//1. �� ��Ű �ν��Ͻ��� �����Ѵ�. 
	Cookie cookie = new Cookie(name, value); //javax.servlet.http.Cookie.Cookie(String name, String value)
	

	//2. �ش� ��Ű �ν��Ͻ��� ���ϴ� ��� �����Ѵ�. 
	
	
	//����Ű ��ȿ�ð� ����(��)
	try {
		cookie.setMaxAge(Integer.parseInt(maxAge));
	} catch (NumberFormatException e) {
			System.out.println("cookie max-age == session");
	}
	//�⺻������ session(�������� ����� ����) //�ٵ� �������� �ִ� ���� ��ü�ʹ� �ٸ���
	//0���� ������ �ش� ��Ű�� �� ���������� �����Ѵ�.�ڡڡڡڡڡ�
	
	
	//cookie.setPath(); //���� ��Ű�� ����� �� �ִ� ��θ� ����. �������� ������ �⺻������ ���� ��η� ������
	
	cookie.setHttpOnly(true); //��Ű�� http�̿��� ���α׷��� �� ���� �� ������ ���� (����)
	//��Ű�� jsp, js�ڵ� ��..�� ������ �̻��ϰ� �����ϴ� �� �����ϱ� ���� ���� ���

	cookie.setComment("��Ű�� ���� ������ �߰��� �� �ִ�.");
	
	
	//3. �ش� ��Ű�� ���信 �߰��س��´�.
	response.addCookie(cookie);
							//chap06 ���� request.getContextPath()����~~~
	response.sendRedirect(request.getContextPath() + "/views/cookie/index.jsp");
	
%>

