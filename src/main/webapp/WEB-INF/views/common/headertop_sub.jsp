<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/headertop_sub.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${path}/resources/js/allmenu.js"></script>
</head>
<body>
	<header id="headTop">
		<div class="top-menu">
			<ul>
				<li><a href="#">YES24</a></li>
				<li><a href="#">영화</a></li>
				<li><a href="#">CD/LP</a>&nbsp;·&nbsp;<a href="#">DVD/BD</a></li>
				<li>|</li>
				<li><a href="#">예스24라이브홀</a>&nbsp;·&nbsp;<a href="#">예스24스테이지</a></li>
			</ul>
			<ul>
				<li id="align-right"> 
				<c:choose>
					<c:when test="${isLogOn==true }">
						<li><a href="${path}/logout.do">로그아웃</a></li>
						 <li id="align-right"><a href="${path}/mypage">마이페이지</a></li>
						 <li id="align-right"><a href="${path}/qna/QnaList">Q&A</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${path}/member/Login">로그인</a></li>
					</c:otherwise>
				</c:choose> 
				</li>
			</ul>
		</div>
	</header>
</body>
</html>