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
	<h2>1st spring mvc</h2>
	<h3><a href="hello.do">hello</a></h3>
	<h3><a href="hi.do">hi</a></h3>
	<h3><a href="arr.do">array</a></h3>
	<h3><button onclick="send_go()">push</button></h3>
</body>
</html>