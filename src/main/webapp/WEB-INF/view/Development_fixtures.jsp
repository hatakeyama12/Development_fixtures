<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録画面</title>
</head>
<body>
	<h1>登録する備品を入力してください</h1>
	<form action=" Development_fixturesResultServlet" method="post">
		名前:<input type="text" name="name"><br>
		内容:<input type="text" name="content"><br>
		個数:<input type="text" name="quantity"><br>
	<input type="submit" value="登録">
	</form>
</body>
</html>