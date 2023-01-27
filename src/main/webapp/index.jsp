<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
		<p style="color:red">ログイン失敗</p>
	<form action="LoginServlet" method="post">
		【メアドとパスワードを入力してください。】<br>
		メールアドレス：<input type="text" name="mail" value="<%=request.getParameter("mail") %>"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="RegisterFormServlet">新規登録はこちら</a>
	<%
		} else {
	%>
	<form action="LoginServlet" method="post">
		【メアドとパスワードを入力してください。】<br>
		メールアドレス：<input type="text" name="mail"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="###">新規登録はこちら</a>
	<%
		}
	%>
	
	</div>
</body>
</html>