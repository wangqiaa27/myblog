<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
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
background-color:gainsboro;

}
img{
	width: 80px;
	height: 80px;
	margin-top: 3px;
	margin-left: 3px;
}
#top{
	width: 100%;
	height: 85px;
	background: black;
	color: white;
	font-size: 20px;
	margin-bottom: 10px;
}
.top_1{
	width: 85px;
	height: 85px;
	margin: 0;
	padding: 0;
	float: left;
}
.top_2{
	width: 300px;
	height: 85px;
	float: left;
	margin-top:30px ;
}
.top_3{
	float: right;
	margin-top: 60px;
	font-size: 15px;
	margin-right: 10px;
}
#top a{
	text-decoration: none;
	color: white;
}
#top a:hover{
	color: red;
}


.nei{
	width: 80%;
	margin: 0 auto;
	border: 1px solid black;
}
#tian{
	float: left;
	
}
#tian a{
	background: darkmagenta;
	padding: 4px;
	border: 2px solid black;
	text-decoration: none;
	color: burlywood;
}
#tian a:hover{
	border: 3px solid black;
}
</style>
</head>
<body>
	<div id="top">
		<div class="top_1"><img alt="头像" src="./uploads/${currentUser.filename}"/></div>
		<div class="top_2">欢迎${currentUser.username}</div>
		<div class="top_3"><a href="./login.jsp">切换用户</a>&nbsp;&nbsp;<a href="./register.jsp">注册</a></div>
	</div>
		<p>BLOGS</p>
	<div id="tian"><a href="./add.jsp">添加文章</a></div>
	<br>
	<br>
	<div id="tian"><a href="./list.do">文章列表</a></div>
	<div class="container">
		
		<ul class="list-group" id="list-articles">		
		</ul>
	</div>
	<script type="text/javascript" src="./js/list.js"></script>
</body>
</html>