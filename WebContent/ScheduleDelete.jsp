<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行動予定表</title>
<script type="text/javascript">
<!--
function disp(){
	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('削除しますか？')){
		location.href = "Delete.jsp"; // Delete.jsp へジャンプ
	}
	// 「OK」時の処理終了
	// 「キャンセル」時の処理開始
	else{
		window.alert('キャンセルされました'); // 警告ダイアログを表示
	}
	// 「キャンセル」時の処理終了
}
// -->
</script>
</head>
<body>
<h2>行動予定の削除</h2>
<%
	request.setCharacterEncoding("UTF-8");
// 	String reqid = request.getParameter("id");
	HttpSession ses = request.getSession();
	String reqid = (String)ses.getAttribute("id");

	System.out.println(reqid);

	Class.forName("com.mysql.jdbc.Driver");
	Connection users = DriverManager.getConnection("jdbc:mysql://localhost/vsn_scheduleDB","root","");
	Statement state = users.createStatement();
	ResultSet result = state.executeQuery("select * from schedule where id=\"" + reqid + "\"");
 	out.println("<table border=1>");
 	out.println("<tr><th>日付</th><th>時間</th><th>社員番号</th><th>名前</th><th>行先</th></tr>");
	while(result.next()){
		String date = result.getString("date");
		String time = result.getString("time");
		String id = result.getString("id");
		String name = new String(result.getString("name").getBytes("UTF-8"));
		String place = new String(result.getString("place").getBytes("UTF-8"));
		out.println("<tr><td>" + date + "</td>");
		out.println("<td>" + time + "</td>");
		out.println("<td>" + id + "</td>");
		out.println("<td>" + name + "</td>");
		out.println("<td>" + place + "</td></tr>");
	}
	out.println("</table>");

%>
<input type="submit" value="削除" onclick="disp()">
<input type="button" value="行動予定一覧へ" onclick="location.href='Schedule.jsp'">
<input type="button" value="ログアウト" >
</body>
</html>