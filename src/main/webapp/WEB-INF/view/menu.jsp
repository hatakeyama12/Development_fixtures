<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.UserRegisterDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/index.css">
<title>Insert title here</title>
</head>
<body>
<div class="example">
	<%
		UserRegisterDTO ac = (UserRegisterDTO)session.getAttribute("user");
	%>
	<h3>図書管理システム</h3>
	<p>ようこそ<%=ac.getName() %>さん</p>
	
<h1>図書管理</h1>
	<a href="###">備品一覧へ</a><br>
	<a href="###">登録画面へ</a><br>
	</span>
	
</div>
</body>
</html>