<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行動予定表</title>
</head>
<h2>次の内容で登録しました</h2>
<br><br>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	HttpSession ses = request.getSession();
	String id = (String)ses.getAttribute("id");
	String name = (String)ses.getAttribute("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String date = year + "-" + month + "-" + day;
	String hour = request.getParameter("hour");
	String minute = request.getParameter("minute");
	String time = hour + ":" + minute;
// 	String id = request.getParameter("id");
// 	String name = request.getParameter("name");
	String place = request.getParameter("place");
	Class.forName("com.mysql.jdbc.Driver");
	Connection users = DriverManager.getConnection("jdbc:mysql://localhost/vsn_scheduledb","root","");
	Statement state = users.createStatement();
	try{
// 	 	int res = state.executeUpdate("insert into schedule set date=" + date + "\",time=" + time + "\",id=" + id + "\",name=" + name + "\",place=" + place);
	 	int res = state.executeUpdate("insert into schedule(date,time,id,name,place)values" + "('" + date + "','" + time + "','" + id + "','" + name + "', '" + place + "')");
	}catch(Exception ex){}
	state.close();
%>
<table border=1>
<tr><th>日付</th><th>時間</th><th>社員番号</th><th>名前</th><th>行先</th></tr>
<tr>
<td><%=date %></td>
<td><%=time %></td>
<td><%=id %></td>
<td><%=name %></td>
<td><%=place %></td>
</tr>
</table>
<input type="submit" value="行動予定一覧へ" onclick="location.href='Schedule.jsp'">
<input type="button" value="ログアウト" >
</body>
</html>