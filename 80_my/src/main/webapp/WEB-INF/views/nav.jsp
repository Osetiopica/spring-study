<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Other Phone</title>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	/* outline-style: solid;
	outline-color: lightpink; */
}

a {
	text-decoration: none;
}

nav {
  margin: 10px 0;
  width: 1000px;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

nav li {
  float: left;
}

.dropbtn {
  display: inline-block;
  color: white;
  text-decoration: none;
  width: 200px;
  padding: 10px 0px;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: hotpink;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* .dropdown-content a {
  color: black;
  padding: 12px 0px;
  text-decoration: none;
  display: inline-block;
  position: absolute;
} */

.dropdown-content a:hover {
background-color: hotpink;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.all-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 1000px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  text-align: left;
}

.condiv {
  color: black;
  padding: 6px 10px;
  text-decoration: none;
  text-align: left;
  width: 200px;
  float: left;
}

.all-content .condiv {
  color: black;
  padding: 6px 10px;
  text-decoration: none;
  text-align: left;
  width: 180px;
  float: left;
}

.space_short {
  color: black;
  padding: 6px 10px;
  text-decoration: none;
  text-align: left;
  width: 100px;
  float: left;
}

#wrap{
	position: relative;
	min-height: 1500px;
	width:100%; 
	text-align: center;
}

.space a{
	height:0px;
	padding:0 0 0 0;
}

.space {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  width: 200px;
}

</style>
<script>
var c=2;
function show_all(sa) {
	if(c%2==0){
		document.getElementsByClassName('all-content')[0].style.display = 'block';
	}else{
		document.getElementsByClassName('all-content')[0].style.display = 'none';
	}
	c++;
}
</script>
</head>
<body>
<nav>
<ul>
  <li>
    <a onclick="show_all(this);" href="javascript:void(0)" class="dropbtn">전체 메뉴</a>
    <div class="all-content">
      <div class="space_short">종류</div><div class="condiv">&nbsp;</div><a href="product_list.jsp" class="condiv">해외 스마트폰</a><div class="condiv">&nbsp;</div><a class="condiv">해외 태블릿</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">삼성 갤럭시 S시리즈</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">삼성</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">삼성 갤럭시 A시리즈</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">애플</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">애플</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">아마존</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">샤오미</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">엘지</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">화웨이</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">레노버</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">엘지</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">기타</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">소니</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">원플러스</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">오포</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">HTC</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">ASUS</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">구글</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">비보</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">ZTE</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">기타</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">고객센터</div><div class="condiv">&nbsp;</div><a class="condiv" href="service_notice.jsp">공지사항</a><a class="condiv" href="service_faq.jsp">자주 묻는 질문</a><a class="condiv" href="service_question.jsp">1:1 문의</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">회원</div><a class="condiv" href="login.jsp">로그인</a><a class="condiv" href="mypage.jsp">마이페이지</a><a class="condiv" href="mypage_history.jsp">구매내역</a><a class="condiv" href="mypage_cart.jsp">장바구니</a><a class="condiv" href="join_terms.jsp">회원가입</a><br>
    </div>
  </li>
  <li class="dropdown">
    <a href="product_list.jsp" class="dropbtn">해외 스마트폰</a>
    <div class="dropdown-content">
      <a class="condiv" href="#">삼성 갤럭시 S시리즈</a><br>
      <a class="condiv" href="#">삼성 갤럭시 A시리즈</a><br>
      <a class="condiv" href="#">애플</a><br>
      <a class="condiv" href="#">샤오미</a><br>
      <a class="condiv" href="#">화웨이</a><br>
      <a class="condiv" href="#">엘지</a><br>
      <a class="condiv" href="#">소니</a><br>
      <a class="condiv" href="#">원플러스</a><br>
      <a class="condiv" href="#">오포</a><br>
      <a class="condiv" href="#">HTC</a><br>
      <a class="condiv" href="#">ASUS</a><br>
      <a class="condiv" href="#">구글</a><br>
      <a class="condiv" href="#">비보</a><br>
      <a class="condiv" href="#">ZTE</a><br>
      <a class="condiv" href="#">기타</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">해외 태블릿</a>
    <div class="dropdown-content">
    <a class="condiv" href="#">삼성</a><br>
    <a class="condiv" href="#">애플</a><br>
    <a class="condiv" href="#">아마존</a><br>
    <a class="condiv" href="#">엘지</a><br>
    <a class="condiv" href="#">레노버</a><br>
    <a class="condiv" href="#">기타</a>
    </div>
  </li>
  <li class="space">
    <a href="javascript:void(0)"></a>
  </li><li class="dropdown">
    <a href="service_notice.jsp" class="dropbtn">고객센터</a>
    <div class="dropdown-content">
    <a class="condiv" href="service_notice.jsp">공지사항</a><br>
    <a class="condiv" href="service_faq.jsp">자주 묻는 질문</a><br>
    <a class="condiv" href="service_question.jsp">1:1 문의</a>
    </div>
  </li>
</ul>
</nav>
</body>
</html>
