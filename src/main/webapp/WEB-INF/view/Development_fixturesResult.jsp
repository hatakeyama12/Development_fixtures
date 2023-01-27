<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録成功</title>
</head>
<body>
	<h1>登録成功!</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	String quantityStr = request.getParameter("quantity");
	%>
	<p>名前:<%=name %></p>
	<p>内容:<%=content %></p>
	<p>個数:<%=quantityStr %></p>
	
	<a href="./">戻る</a>
</body>
</html>