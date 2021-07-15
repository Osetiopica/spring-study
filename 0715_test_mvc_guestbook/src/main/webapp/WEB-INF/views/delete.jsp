<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
<style type="text/css">
fieldset {
	width: 700px;
	margin: auto;
}

div {
	text-align: center;
	margin: 100px;
	auto;
}

table{
	width: 700px;
}

table, th, td{
	border: 1px solid black;
	border-collapse: collapse;
}
th, td {
	padding: 10px;
}
.tt{
	width:200px;
	background-color: skyblue;
}
input {
	padding: 10px;
}
</style>
<script type="text/javascript">

	function delete_ok(f) {
		if ("${vo.pw}" == f.pw2.value) {
			var chk = confirm("정말 삭제하시겠습니까?");
			if (chk) {
				f.action = "delete_ok.do"
				f.submit();
			}else{
				history.go(-1);
			}
		}else{
			alert("비밀번호가 틀렸습니다.\n다시 입력해주세요.");
			f.pw2.value="";
			f.pw2.focus();
			return;
		}
	}
	
</script>
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend>삭제</legend>
				<a href="list.do">[목록으로]</a><br><br>
					<table>
						<tr>
						<td class="tt">pw</td>
						<td><input type="password" name="pw2" placeholder="pw"></td>
						</tr>
						<tr>
						<td colspan="2">
						<input type="button" value="삭제" onclick="delete_ok(this.form)">
						<input type="hidden" name="id" value="${vo.id }">
						</td>
						</tr>
					</table>
			</fieldset>
		</form>
	</div>
</body>
</html>