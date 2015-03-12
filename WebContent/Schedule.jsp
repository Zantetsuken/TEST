<jsp:include page="CheckLogin.jsp"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行動予定表</title>
</head>
<body>
<h3>ようこそ<jsp:include page="GetUser.jsp"/>さん</h3>
<%
// 	request.setCharacterEncoding("UTF-8");
// // 	String id = request.getParameter("id");
// // 	String name = request.getParameter("name");
// 	Class.forName("com.mysql.jdbc.Driver");
// 	Connection users = DriverManager.getConnection("jdbc:mysql://localhost/vsn_scheduleDB","root","password");
// 	Statement state = users.createStatement();
// 	ResultSet result = state.executeQuery("select * from schedule");
//  	out.println("<table border=1>");
//  	out.println("<tr><th>日付</th><th>時間</th><th>社員番号</th><th>名前</th><th>行先</th></tr>");
// 	while(result.next()){
// 		String date = result.getString("date");
// 		String time = result.getString("time");
// 		String id = result.getString("id");
// 		String name = result.getString("name");
// 		String place = result.getString("place");
// 		out.println("<tr><td>" + date + "</td>");
// 		out.println("<td>" + time + "</td>");
// 		out.println("<td>" + id + "</td>");
// 		out.println("<td>" + name + "</td>");
// 		out.println("<td>" + place + "</td></tr>");
// 	}
%>
<h2>行動予定一覧</h2>
<table border=1>
<tr><th>日付</th><th>時間</th><th>社員番号</th><th>名前</th><th>行先</th></tr>
</table>
<form action="frm2">
<input type="button" value="登録" onclick="location.href='ScheduleAdd.jsp'">
<input type="button" value="変更" onclick="location.href='ScheduleChange.jsp'">
<input type="button" value="削除" onclick="location.href='ScheduleDelete.jsp'">
<input type="button" value="ログアウト" >
</form>
</body>

</html>