<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.GuestBookVo" %>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");	
		
	GuestBookDao guestBookDao = new GuestBookDao();	
	GuestBookVo guestBookVo = new GuestBookVo(name, password, content);
	
	
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>