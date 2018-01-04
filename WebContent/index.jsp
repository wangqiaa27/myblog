<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>微博应用</title>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
		text-align: center;
	}
body{
	background: aquamarine;
}
.one{
	width: 100%;
	height: 300px;
	background: darkmagenta;
}
.we{
	text-align: center;
	font-size: 100px;
}
#one_1{
	margin: 0 auto;
	padding: 50px;
	color: azure;
	font-size: 20px;
}
#one_1 a{
	color:red;
}
#one_1 a:hover{
	color: orange;
}

</style>
</head>
<body>
<br>
	<br />
<h1>微博应用</h1>
<div class="we"><p><b>WELCOME</b></p></div>
<div class="one">
	<div id="one_1">
		<br />
		<br />
		<b>欢迎来到个人微博<br><br />
		你可以选择 <a href="./login.jsp">登录</a> <a href="./register.jsp">注册</a></b>
	</div>
</div>
</body>
</html>