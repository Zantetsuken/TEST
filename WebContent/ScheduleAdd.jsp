<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行動予定表</title>
<script type="text/javascript">
<!--
function disp(){
	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('登録しますか？')){
		location.href = "Update.jsp"; // Update.jsp へジャンプ
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
<%
	request.setCharacterEncoding("UTF-8");
	HttpSession ses = request.getSession();
	String id = (String)ses.getAttribute("id");
	String name = (String)ses.getAttribute("name");
%>
<h2>行動予定の登録</h2>
<form method="post"action="Update.jsp">
<table border=1>
<tr><th>日付</th><th>時間</th><th>社員番号</th><th>名前</th><th>行先</th></tr>
<tr>
<td>
<select name="year">
<option value="2015"selected>2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
</select>
<select name="month">
<option value="01">01</option>
<option value="02">02</option>
<option value="03"selected>03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>
<select name="day">
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
</td>
<td>
<select name="hour">
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
</select>
<select name="minute">
<option value="00">00</option>
<option value="15">15</option>
<option value="30">30</option>
<option value="45">45</option>
</select>
</td>
<td>
<%=id %>
</td>
<td>
<%=name %>
</td>
<td>
<input type="text" name="place" maxlength="10">
</td>
</tr>
</table>
<input type="submit" value="登録" onclick="disp()">
<input type="button" value="行動予定一覧へ" onclick="location.href='Schedule.jsp'">
<input type="button" value="ログアウト" >
</form>
</body>
</html>