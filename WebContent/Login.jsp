<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>行動予定表</title>
</head>
<body>
<h2>ログイン画面</h2>
<form name="frm" method="post" action="Signup.jsp">
社員番号:<input type="text" maxlength="7"name="id"onKeyup="this.value=this.value.replace(/[^0-9]+/,'')">
<br><br>
名前:<input type="text" maxlength="10"name="name">
<br><br>

<input type="submit" name=btn1 value="ログイン" onclick="location.href='Signup.jsp'">
<input type="reset" value="リセット">
<input type="button" name=btn2 value="ユーザ登録" onclick="location.href='UserAdd.jsp'">
</form>
</body>
</html>