<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input {
	border: 1px solid red;
	padding: 8px;
}

table {
	width: 70%;
	margin: 0 auto;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid gray;
	text-align: center;
}

h2 {
	text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	function getList() {
		$("#tbody").empty();
		$.ajax({
			url:"list.do",
			method:"post",
			dataType:"json",
			success:function(data){
				var tag = "";
				$.each(data, function() {
					tag += "<tr>";
					tag += "<td>"+this["idx"]+"</td>";
					tag += "<td>"+this["id"]+"</td>";
					tag += "<td>"+this["pw"]+"</td>";
					tag += "<td>"+this["name"]+"</td>";
					tag += "<td>"+this["age"]+"</td>";
					tag += "<td>"+this["addr"]+"</td>";
					tag += "<td>"+this["reg"]+"</td>";
					tag += "<td><button>삭제</button></td>";
					tag += "</tr>";
				});
				$("#tbody").append(tag);
			},
			error:function(){
				alert("read fail");
			}
		});
	}
	$("#btn1").click(function() {
		if($("#id").val()==""){
			alert("id is null");
			$("#id").focus();
			return;
		}
		$.ajax({
			url:"idchk.do",
			method:"post",
			data:"id="+$("#id").val(),
			dataType:"json",
			success:function(data){
				var tag = "";
				$.each(data, function() {
					alert("가입 가능");
				});
			},
			error:function(){
				alert("이미 있음");
			}
		});
	});
	getList();
});
</script>
</head>
<body>
	<h2>회원 정보 입력하기</h2>
	<form method="post" id="myForm">
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>PW</th>
					<th>NAME</th>
					<th>AGE</th>
					<th>ADDR</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="id" id="id" required> 
					<button id="btn1">중복확인</button></td>
					<td><input type="password" name="pw"></td>
					<td><input type="text" name="name"></td>
					<td><input type="number" name="age"></td>
					<td><input type="text" name="addr"></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5"><input type="button" id="btn2" value="가입하기" disabled></td>
				</tr>
			</tfoot>
		</table>
	</form>

	<h2>회원정보보기</h2>
	<div>
		<table>
			<thead>
				<tr>
					<th>IDX</th><th>ID</th><th>PW</th><th>NAME</th>
					<th>AGE</th><th>ADDR</th><th>REG</th><th>삭제</th>
				</tr>
			</thead>
			<tbody id="tbody"></tbody>
		</table>
	</div>
</body>
</html>