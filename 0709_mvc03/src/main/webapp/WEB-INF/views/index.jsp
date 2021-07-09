<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function sum_go() {
		location.href="sum.do";
	}
	function sub_go() {
		location.href="sub.do";
	}
	function mul_go() {
		location.href="mul.do";
	}
	function div_go() {
		location.href="div.do";
	}
	
	function sum_go2() {
		location.href="calc.do?cmd=1";
	}
	function sub_go2() {
		location.href="calc.do?cmd=2";
	}
	function mul_go2() {
		location.href="calc.do?cmd=3";
	}
	function div_go2() {
		location.href="calc.do?cmd=4";
	}
</script>
</head>
<body>
	<button onclick="sum_go()">sum_go</button>
	<button onclick="sub_go()">sub_go</button>
	<button onclick="mul_go()">mul_go</button>
	<button onclick="div_go()">div_go</button>
	<hr>
	<button onclick="sum_go2()">sum_go2</button>
	<button onclick="sub_go2()">sub_go2</button>
	<button onclick="mul_go2()">mul_go2</button>
	<button onclick="div_go2()">div_go2</button>
</body>
</html>