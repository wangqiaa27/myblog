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
</head>
<body>
	<h1>文章列表</h1>
	<ul>
		<c:forEach var="t" items="${articles}">
			<li>
				<h3>${t.title}</h3>
				<p>${t.content}</p>
				<p>
					发表日期：<span>${t.publishDate}</span>
				</p> <a href="./del.do?id=${t.id}">删除</a>
			</li>
		</c:forEach>
	</ul>

	<div>
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