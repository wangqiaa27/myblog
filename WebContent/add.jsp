<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加文章</title>
</head>
<body>
	<form action="./add.do" method="post">
		标题：<input type="text" name="title"/>
		内容：<textarea rows="5" name="content"></textarea>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>