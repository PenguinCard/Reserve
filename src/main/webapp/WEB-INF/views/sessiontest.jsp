<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <c:choose>
   <c:when test="${isLogOn==true }">
    <li>로그아웃<li>
   </c:when>
   <c:otherwise>
    <li>로그인</li>
   </c:otherwise>
  </c:choose>
  
</body>
</html>