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
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	Class.forName("com.mysql.jdbc.Driver");
	Connection users = DriverManager.getConnection("jdbc:mysql://localhost/vsn_scheduleDB","root","");
	Statement state = users.createStatement();
	ResultSet result = state.executeQuery("select * from user where id=\"" + id + "\"");
	boolean flg = false;
	if(result.next())
		if(result.getString("id").equals(id));
			flg = true;

	HttpSession ses = request.getSession();
	if(flg){
		ses.setAttribute("login", "true");
		ses.setAttribute("id", id);
		ses.setAttribute("name", name);
		out.println("<h2>ログインしました。</h2>");
	}else{
		ses.setAttribute("login", "false");
		out.println("<h2>ログインエラー</h2>");
	}
%>
<input type="button" value="行動予定一覧へ" onclick="location.href='Schedule.jsp'">
</body>
</html>