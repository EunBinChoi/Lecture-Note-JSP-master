<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<hr/>
<% 
	String email = request.getParameter("adminEmail");
	// 7�� ���������� ����� �Է��� ��
%>
Include Action Tag�� Bottom �κ�<br/>
<b><%=email%></b>


</body>
</html>