<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = "admin";
	String pwd = "1234";
	
	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
%>
技记 积己 肯丰!
<a href="04_viewSessionInfo.jsp">技记 沥焊 犬牢</a>
</body>
</html>