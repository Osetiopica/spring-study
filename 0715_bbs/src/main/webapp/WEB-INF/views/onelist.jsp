<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${bvo.subject }</title>
<style type="text/css">
	.bbs table {
	    width:700px;
	    margin:0 auto;
	    margin-top:20px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	}
	
	.bbs table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	.bbs table th {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.bbs table td {
	    text-align:left;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.reply {
		width: 700px;
	    margin: 0px auto;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	.odd {background:silver}
</style>
<script type="text/javascript">
	
	function list_go() {
		location.href="list.do?cPage=${cPage}";
	}
	function update_go() {
		location.href="update.do?b_idx=${bvo.b_idx}&cPage=${cPage}";
	}
	function delete_go() {
		location.href="delete.do?b_idx=${bvo.b_idx}&cPage=${cPage}";
	}
	function reply_write(f) {
		f.action="reply_write.do";
		f.submit();
	}
	function reply_del(f) {
		f.action = "reply_delete.do";
		f.submit();
	}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	function getReplyList() {
		$("#tbody").empty();
		$.ajax({
			url:"reply_list.do?b_idx=${bvo.b_idx}",
			method:"post",
			dataType:"json",
			success:function(data){
				var tag = "";
				$.each(data, function() {
					tag += "<form method='post'><table><tbody id='reply'><tr>";
					tag += "<td><textarea rows='4' cols='70' name='content' readonly>"+this["content"]+"</textarea></td>";
					tag += "<td><input type='button' value='삭제' onclick='reply_del(this.form)'>";
					tag += "<input type='hidden' name='cPage' value='"+${cPage}+"'>";
					tag += "<input type='hidden' name='c_idx' value='"+this["c_idx"]+"'>";
					tag += "<input type='hidden' name='b_idx' value='"+this["b_idx"]+"'></td>";
					tag += "</tr></tbody></table></form>";
				});
				$("#reply_list").append(tag);
			},
			error:function(){
				alert("read fail");
			}
		});
	}
	$("#reply_write_btn").click(function() {
		getReplyList();
	});
	getReplyList();
});
</script>
</head>
<body>
	<div class="bbs">
	<form method="post">
		<table summary="글 보기">
			<caption>글 보기</caption>
			<tbody>
				<tr>
					<th style="width:100px;">제목:</th>
					<td>${bvo.subject }</td>
					<td style="width:50px;">${bvo.hit }</td>
				</tr>
				<tr>
					<th>이름:</th>
					<td colspan="2">${bvo.writer }</td>
				</tr>
				<tr>
					<th>내용:</th>
					<td colspan="2">
					<pre>${bvo.content }</pre>
					</td>
				</tr>
				<tr>
					<th>첨부파일:</th>
					<c:choose>
							<c:when test="${empty bvo.file_name}">
								<td colspan="2">첨부파일 없음</td>
							</c:when>
							<c:otherwise>
								<td colspan="2" class="content" style="text-align: center;"><a href="down.do?path=upload&file_name=${bvo.file_name }">
								<img alt="" src="resources/upload/${bvo.file_name }" style="width: 100px"> <br>${bvo.file_name }</a></td>
							</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<td colspan="1" style="text-align: left">
						<input type="button" value="목록" onclick="list_go()">
					<td colspan="2" style="text-align: right">
						<input type="button" value="수정" onclick="update_go()">
						<input type="button" value="삭제" onclick="delete_go()">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
	<br>
	<br>
	<div class="reply" style="border-top: 1px solid black;">
		<br>
		<div id="reply_list">
		<form method="post">
			<table>
				<tbody id="reply"></tbody>
			</table>
		</form>
		</div>
	</div>
	<br>
	<div class="reply">
		<form method="post">
			<table>
				<tbody>
					<tr>
						<td><textarea rows="4" cols="70" name="content"></textarea></td>
						<td><input type="button" id="reply_write_btn" value="댓글" onclick="reply_write(this.form)">
							<input type="hidden" name="b_idx" value="${bvo.b_idx }">
							<input type="hidden" name="cPage" value="${cPage}"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>

