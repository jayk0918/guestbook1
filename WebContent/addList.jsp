<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.GuestBookVo" %>

<%
	GuestBookDao guestBookDao = new GuestBookDao();
	List<GuestBookVo> gList = guestBookDao.getList();
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action = "./add.jsp" method = "get">
	<table border = '1'>
		<tr>
			<td>이름</td>
			<td><input type = "text" name = "name" value = ""></input></td>
			<td>비밀번호</td>
			<td><input type = "password" name = "password" value = ""></td>
		</tr>
			
		<tr>
			<td><input type = "text" name = "content" value = ""></input></td>
		</tr>
	
		<tr>
			<td><button type = "submit">확인</button></td>
		</tr>
	</table>
</form>

<br>

<% for(int i=0; i<gList.size(); i++){ %>
	<table border = '1'>
		<tr>
			<td><%=gList.get(i).getNo()%></td>
			<td><%=gList.get(i).getName()%></td>
			<td><%=gList.get(i).getDate()%></td>
			<td><a href = "./deleteForm.jsp">삭제</a></td>
		</tr>
		
		<tr>
			<td><%=gList.get(i).getContent()%></td>
		</tr>
	
	</table>


<%}%>



</body>
</html>