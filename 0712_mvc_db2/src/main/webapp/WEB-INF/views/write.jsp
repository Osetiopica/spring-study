<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쓰기</title>
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
function list_go(f) {
	f.action="list.do";
	f.submit();
}
</script>
</head>
<body>
	<div>
		<form action="write_ok.do" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend>글쓰기</legend>
				<table>
					<tbody>
						<tr>
							<td class="tt">작성자</td>
							<td><input type="text" name="name" placeholder="이름 입력" required></td>
						</tr>
						<tr>
							<td class="tt">제목</td>
							<td><input type="text" name="title" placeholder="제목 입력" required></td>
						</tr>
						<tr>
							<td class="tt">email</td>
							<td><input type="text" name="email" placeholder="이메일 입력"></td>
						</tr>
						<tr>
							<td class="tt">비밀번호</td>
							<td><input type="password" name="pw" placeholder="비밀번호 입력" required></td>
						</tr>
						<tr>
							<td class="tt">첨부파일</td>
							<td><input type="file" name="fname2"></td>
						</tr>
						<tr>
							<td colspan="2"><textarea name="text" rows="5" cols="50"></textarea></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
							<input type="submit" value="저장">
							<input type="button" onclick="list_go(this.form)" value="취소">
							</td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>