<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go() {
		location.href="say.do";
	}
</script>
</head>
<body>
	<h2>1st spring mvc annotation</h2>
	<form action="hello.do" method="get">
		<input type="submit" value="get">
	</form>
	<form action="hello.do" method="post">
		<input type="submit" value="post">
	</form>
	<a href="hi.do">hi</a>
</body>
</html>