<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加文章</title>
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
	background:darkturquoise;
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
#left{
	border-right:1px solid black ;
	border-top:1px solid black ;
	width: 150px;
	float: left;
	text-align: center;
}
#left a{
	text-decoration: none;
	color: black;
	width: 150px;
}
#left a:hover{
	color: mediumaquamarine;
}
#left div:hover{
	background: white;
}
.zhu{
	
}
#left1{
	width: 150px;
	padding-top: 15px;
	padding-bottom: 15px;
	background: coral;
}
#left2{
	width: 150px;
	padding-top: 13px;
	padding-bottom: 13px;
	background: chartreuse;
}
#left3{
	width: 150px;
	padding-top: 10px;
	padding-bottom: 10px;
	background: beige;
}
#left4{
	width: 150px;
	padding-top: 7px;
	padding-bottom: 7px;
	background: crimson;
}
#left5{
	width: 150px;
	padding-top: 5px;
	padding-bottom: 5px;
	background: blueviolet;
}
.right{
	background: whitesmoke;
	width:75%;
	margin-left: 180px;
	padding: 10px;
	padding-bottom: 40px;
}
.right1{
	margin-bottom: 20px;
}
.right2{
	
}
.right3{
	margin-left: 50px;
}
textarea{
	width: 93%;
}
.last{
	float: right;
}
</style>
</head>
<body>
	<div id="top">
		<div class="top_1"><img alt="头像" src="./uploads/${currentUser.filename}"/></div>
		<div class="top_2">&nbsp;&nbsp;&nbsp;&nbsp;${currentUser.username}</div>
		<div class="top_3"><a href="./login.jsp">切换用户</a>&nbsp;&nbsp;<a href="./register.jsp">注册</a></div>
	</div>
	<br />
	
	<div class="zhu">
		<div id="left">
			<div id="left1"><a href="./dashboard.jsp">返回首页</a></div>
			<div id="left2"><a href="./dashboard.jsp">返回首页</a></div>
			<div id="left3"><a href="./dashboard.jsp">返回首页</a></div>
			<div id="left4"><a href="./dashboard.jsp">返回首页</a></div>
			<div id="left5"><a href="./dashboard.jsp">返回首页</a></div>
		</div>
		<div class="right">
			
			<form action="./add.do" method="post">
				<div class="right1">
					标题：<input type="text" name="title"/>
				</div>
				<div class="right2">
					内容：
				</div>
				<div class="right3">
					<textarea rows="30" name="content"></textarea>
				</div>
				
				<div class="last"><button type="submit" value="提交">上传</button></div>
				
			</form>
		</div>
		
	</div>
</body>
</html>