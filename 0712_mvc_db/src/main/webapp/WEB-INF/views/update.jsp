<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
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
function update_ok(f) {
	if("${vo.pw}"==f.pw.value){
		f.action="update_ok.do";
		f.submit();
	}else{
		alert("wrong pw");
		f.pw.value="";
		f.pw.focus();
		return;
	}
}
function remove(f) {
	f.oldfname.value="";
	f.fname.value="";
}
</script>
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend>수정</legend>
				<a href="list.do">[목록으로]</a><br><br>
				<table>
					<tbody>
						<tr>
							<td class="tt">번호</td>
							<td><input type="text" name="id" value="${vo.id }" readonly></td>
						</tr>
						<tr>
							<td class="tt">작성자</td>
							<td><input type="text" name="name" value="${vo.name }" readonly></td>
						</tr>
						<tr>
							<td class="tt">제목</td>
							<td><input type="text" name="title" value="${vo.title }" required></td>
						</tr>
						<tr>
							<td class="tt">email</td>
							<td><input type="text" name="email" value="${vo.email }"></td>
						</tr>
						<tr>
							<td class="tt">비밀번호</td>
							<td><input type="password" name="pw" placeholder="비밀번호 입력" required></td>
						</tr>
						<tr>
							<td colspan="2"><textarea name="text" rows="5" cols="50" required>${vo.text }</textarea></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
								<input type="button" onclick="update_ok(this.form)" value="저장">
							</td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>