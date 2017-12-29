<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<style type="text/css">
input{
    border: 1px solid #ccc;
    padding: 7px 0px;
    border-radius: 3px;
    padding-left:5px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
}
input:focus{
    border-color: #66afe9;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
}
body{
background-color:cornsilk;

}
h3{
	text-align:center;
}
input{
	text-align:center;
}
.first{
	width:498px;
	margin: 0 auto;
	
	border: solid 1px;
	margin-top: 30px;
}
.two{
	width: 385px;
	margin: 2px;
	border: 4px solid black;
	padding: 50px;
}
.cd{
	margin-left:100px;
	width: 200px;
}
.cd1{
	margin-left: 180px;
}
.duiqi{
	margin: 0 auto;
}
</style>
</head>

<body>
	<div class="first">
		<div class="two">
	<form action="./login.do" method="post">
		
			<h3>用户名</h3>
		
		
			<input type="text" name="username" class="cd" placeholder="请输入用户名"/>
		
		<h3>密码</h3><input type="password" name="password" class="cd" placeholder="请输入密码"/>
		<p>   </p>
		<button type="submit" value="提交" class="cd1">提交</button>
		<div class="bg-warning,duiqi" >${errMsg}</div>
	</form>
</div>
</div>
</body>
</html>