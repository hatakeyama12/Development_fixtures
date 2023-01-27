<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Development_fixtures" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
</head>
<body>	
	<table border="1">
		<tr>
			<th>No.</th>
			<th>商品名</th>
			<th>商品内容</th>
			<th>商品数</th>
		</tr>
	<%
	List<Development_fixtures> goods = (ArrayList<Development_fixtures>)request.getAttribute("goods");
	int index = 1;
	for(Development_fixtures g : goods) {
	%>
		<tr>
			<td><%=g.getId() %></td>
			<td><%=g.getName() %></td>
			<td><%=g.getContent() %></td>
			<td><%=g.getQuantity() %></td>
		</tr>
	<%} %>
	</table>	
	<a href="＃" onclick="window.history.back(); return false;">直前のページに戻る</a>
</body>
</html>