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
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			UserRegisterDTO ud = (UserRegisterDTO)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規会員登録</h3>
		<form action="UserRegisterConfirmServlet" method="post">
			名前：<input type="text" name="name" value="<%=ud.getName()%>"><br>
			メール：<input type="email" name="email" value="<%=ud.getMail()%>"><br>
			ＰＷ：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規会員登録</h3>
	<form action="UserRegisterConfirmServlet" method="post">
		名前：<input type="text" name="name"><br>
		メール：<input type="email" name="email"><br>
		ＰＷ：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>