<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行動予定表</title>
</head>
<h2>削除しました</h2>
<br><br>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection users = DriverManager.getConnection("jdbc:mysql://localhost/vsn_scheduledb","root","");
	Statement state = users.createStatement();
	try{
	 	int res = state.executeUpdate("delete from schedule where id=\"" + id + "\"");
	}catch(Exception ex){}
	state.close();
%>
<table border=1>
<tr><th>日付</th><th>時間</th><th>社員番号</th><th>名前</th><th>行先</th></tr>
<tr>
<%-- <td><%=date %></td> --%>
<%-- <td><%=time %></td> --%>
<%-- <td><%=id %></td> --%>
<%-- <td><%=name %></td> --%>
<%-- <td><%=place %></td> --%>
</tr>
</table>
<input type="submit" value="行動予定一覧へ" onclick="location.href='Schedule.jsp'">
<input type="button" value="ログアウト" >
</body>
</html>