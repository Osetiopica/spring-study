<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="resources/images/icon.png">
<title>월드폰</title>
<meta charset="UTF-8">
<style type="text/css">
	a{
		text-decoration: none;
		color: black;
	}
	.wrap {
		margin: 0px auto;
		width: 1000px;
		text-align: center;
		position: relative;
	}
	.clear{
		content: "";
  		clear: both;
  		display: table;
	}
	article{
		width: 1000px;
		text-align: left;
		margin: 10px 0;
	}
	article .join_terms_title{
		margin-left: 200px;
	}
	article .join_terms_outside{
		width: 600px;
		height: 400px;
		margin: 0px auto;
	}
	article .join_terms_inside{
		width: 350px;
		height: 150px;
		margin: 130px auto;
	}
	article .join_terms_input{
		padding: 10px;
		margin: 5px;
		float: left;	
	}
	article .join_terms_btn{
		width: 100px;
		height: 90px;
		background-color: hotpink;
		color: white;
		font-weight: bold;
		font-size: 130%;
		margin-top: 5px;
	}
	article .join_terms_inside a{
		padding: 3px;
		margin: 15px 5px;
	}
	article .join_terms_doc{
		overflow-x: hidden;
		overflow-y: auto;
		height: 100px;
		padding: 20px;
		border: 1px solid black;
		background-color: white;
	}
	#terms_chk1, #terms_chk2{
		float: right;
	}
	article .join_terms_outside .move_btn{
		text-align: center;
	}
	article .join_terms_outside .move_btn .prev{
		background-color: white;
		height: 40px;
		width: 100px;
	}
	article .join_terms_outside .move_btn .next{
		background-color: hotpink;
		height: 40px;
		width: 100px;
	}
</style>
<script type="text/javascript">
	function chk_all() {
		if(document.getElementById("chk3").checked){
			document.getElementById("chk1").checked=true;
			document.getElementById("chk2").checked=true;
		} else if(!document.getElementById("chk3").checked){
			document.getElementById("chk1").checked=false;
			document.getElementById("chk2").checked=false;
		}
	}
	function chk_chk() {
		if(document.getElementById("chk1").checked && document.getElementById("chk2").checked){
			document.getElementById("chk3").checked=true;
		} else if(!document.getElementById("chk1").checked || !document.getElementById("chk2").checked){
			document.getElementById("chk3").checked=false;
		} 
	}
	function join() {
		if(!document.getElementById("chk3").checked){
			alert("모든 약관에 동의하지 않으면 가입할 수 없습니다.");			
			return;
		}
		location.href="join.do";
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
<div><a>HOME</a> > 회원가입</div>
<br>
<h2 class="join_terms_title">회원 약관 동의</h2>
	<div class="join_terms_outside">
			<div class="join_terms_doc">
				<%@include file="term1.jsp" %>
			</div>
			<div class="terms_chk" id="terms_chk1">
			<input type="checkbox" id="chk1" required="required" onclick="chk_chk()"><font color="hotpink">(필수)</font> 이용약관 동의
			</div>
			<p class="clear">
			<div class="join_terms_doc">
				<%@include file="term2.jsp" %>
			</div>
			<div class="terms_chk" id="terms_chk2">
			<input type="checkbox" id="chk2" required="required" onclick="chk_chk()"><font color="hotpink">(필수)</font> 개인정보 수집 및 이용 동의
			</div>
			<p class="clear">
			<div class="move_btn">
				<div id="terms_chk3">
				<input type="checkbox" id="chk3" onclick="chk_all()">모든 약관 동의
				</div>
			<br><br>
			<input type="button" class="prev" value="이전 단계" onclick="javascript:history.back()">
			<input type="button" class="next" value="다음 단계" onclick="join()">
			</div>
	</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
