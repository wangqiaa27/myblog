<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<title>所有文章</title>
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
	background:darkgray;
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
.jz{
	width:80%;
	margin: 0 auto;
	
}
.jz1{
	width:500px;
	margin: 0 auto;
}
#right{
	margin-left:20px;
	
}
#right a{
	text-decoration: none;
	color:green;
}
#right a:hover{
	color:red;
}
.liebiao{
	border-right: 1px solid black;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	margin-bottom:2px;
}
</style>
</head>
<body>
<div id="top">
		<div class="top_1"><img alt="头像" src="../uploads/${currentUser.filename}"/></div>
		<div class="top_2">欢迎${currentUser.username}</div>
		<div class="top_3"><a href="../login.jsp">切换用户</a>&nbsp;&nbsp;
		<form action="../inva.do" method="post">
		<a href="#"  onclick=" document.forms[0].submit();">登出</a>
		
			<!-- <button type="submit"> 删除</button> -->
		</form>
		</div>
		
	</div>
	<h1>文章列表</h1>
	<div id="right"><a href="./dashboard.jsp">返回首页</a></div>
	<div class="jz">
	<ul>
		<c:forEach var="t" items="${articles}">
			<li class="liebiao">
				<h3>${t.title}</h3>
				<p>${t.content}</p>
				<p>
					发表日期：<span>${t.publishDate}</span>
				</p> <a href="./del.do?id=${t.id}">删除</a>
			</li>
		</c:forEach>
	</ul>
	</div>
	

	<div class="jz1">
		<ul class="pagination">
			<c:choose>
				<c:when test="${current == 0 }">
					<li class="disabled">
						<a href="#"><span aria-hidden="true">&laquo;</span></a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="./list.do?page=${current-1}"><span aria-hidden="true">&laquo;</span></a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<c:if test="${current <= 4}">
				<c:forEach var="num" begin="0" end="8">
					<li class="${num == current ? 'active' : ''}">
						<a href="./list.do?page=${num}">${num}</a>
					</li>
				</c:forEach>	
				<li><a>...</a></li>
				<li>
					<a href="./list.do?page=${total}">${total}</a>
				</li>	
			</c:if>
			
				<c:if test="${current>4}">
					<c:if test="${current<=total-8 }">
					<li>
						<a href="./list.do?page=0">0</a>
					</li>
					<li><a>...</a></li>
					<c:forEach var="num1" begin="${current-2 }" end="${current+2 }">
						<li class="${num1 == current ? 'active' : ''}">
							<a href="./list.do?page=${num1}">${num1}</a>
						</li>
					</c:forEach>
					<li><a>...</a></li>
				<li>
					<a href="./list.do?page=${total}">${total}</a>
				</li>
				</c:if>
				</c:if>
				<c:if test="${current>total-8 }">
					<li>
						<a href="./list.do?page=0">0</a>
					</li>
					<li><a>...</a></li>
					<c:forEach var="num1" begin="${total-8}" end="${total }">
						<li class="${num1 == current ? 'active' : ''}">
							<a href="./list.do?page=${num1}">${num1}</a>
						</li>
					</c:forEach>
					
				</c:if>
			<c:choose>
				<c:when test="${current ==total}">
					<li class="disabled"><a href="#" aria-label="Next"><span>&raquo;</span></a></li>
				</c:when>
				<c:otherwise><li><a href="./list.do?page=${current+1}" aria-label="Next"><span>&raquo;</span></a></li></c:otherwise>
			</c:choose>
		    
		</ul>
	</div>

</body>
</html>