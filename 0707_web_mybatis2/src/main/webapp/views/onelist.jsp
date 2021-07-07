<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.ict.db.VO"%>
<%@page import="com.ict.db.DAO"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
	DAO dao = (DAO) context.getBean("dao");
	VO vo = dao.getDetail(request.getParameter("id"));
	request.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.title }</title>
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
a{
	text-decoration: none;
}
img{
max-height:50px;
}
</style>
<script type="text/javascript">
function update_go(f) {
	f.action="update.jsp";
	f.submit();
}
function delete_go(f) {
	f.action="delete.jsp";
	f.submit();
}
</script>
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend>내용화면</legend>
				<a href="list.jsp">[목록으로]</a><br><br>
				<table>
					<tbody>
						<tr>
							<td class="tt">번호</td>
							<td>${vo.id }</td>
						</tr>
						<tr>
							<td class="tt">작성자</td>
							<td>${vo.name }</td>
						</tr>
						<tr>
							<td class="tt">제목</td>
							<td>${vo.title }</td>
						</tr>
						<tr>
							<td class="tt">이메일</td>
							<td>${vo.email }</td>
						</tr>
						<tr style="padding:0 300px;">
							<td colspan="2"><pre>${vo.text }</pre></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2">
								<input type="button" onclick="update_go(this.form)" value="수정">
								<input type="button" onclick="delete_go(this.form)" value="삭제">
								<input type="hidden" name="id" value="${vo.id }">
								<input type="hidden" name="pw" value="${vo.pw }">
							</td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>