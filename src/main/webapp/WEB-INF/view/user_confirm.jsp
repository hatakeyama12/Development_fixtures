<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.UserRegisterDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>下記の内容で登録してよろしいですか？</p>
	<%
		UserRegisterDTO UserDTO = (UserRegisterDTO)session.getAttribute("input_data");
	%>
	名前：<%=UserDTO.getName() %><br>
	メール：<%=UserDTO.getMail() %><br>
	パスワード：********<br>
	<a href="UserRegisterExecuteServlet">OK</a><br>
	<INPUT type="button" value="戻る" onClick="history.go(-2)">
</body>
</html>