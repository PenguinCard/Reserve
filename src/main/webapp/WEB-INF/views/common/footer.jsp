<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/footer.css">
</head>
<body>
<footer>
<div class="footer_div">
  <div class="footerTop">
<div class="footer_content">
  <ul>
    <li><a href="#">회사소개&nbsp;&nbsp;&nbsp;&nbsp;</a></li> 
    <li><a href="#">이용약관&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    <li><a href="#">개인정보처리방침&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    <li><a href="#">청소년보호정책&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    <li><a href="#">이용안내&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
    <li><a href="#">티켓판매안내&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
  </ul>
</div>

<div class="selectbox">
<select>
  <option selected="selected"> Family Site</option>
  <option>isTYLE24</option>
  <option>한세예스24홀딩스</option>
  <option>한세실업</option>
  <option>한세드림</option>
  <option>한세MK</option>
  <option>컬리수</option>
  <option>YES24 Vietnam</option>
  <option>동아출판</option>
</select>
</div>
</div>

<div class="footerBot">
<div class="footer_logo">
<img src="${path}/resources/img/footer/logo_footer.png">
</div>

<div class="footer_logo_content">
  예스이십사㈜<br><br>

<p>서울시 영등포구 은행로 11, 5층~6층(여의도동,일신빌딩)<br>
대표 김석환  |  개인정보보호책임자 : 권민석 yes24help@yes24.com<br>
사업자등록번호 229-81-37000  | 통신판매업신고 제 2005-02682호&nbsp;&nbsp;&nbsp;<a href="#">사업자 정보확인<img src="${path}/resources/img/footer/contentarrow.png" height="7" ></a><br>
호스팅 서비스사업자 : 예스이십사㈜<br><br> </p>

<b>Copyright © YES24 Corp. All Rights Reserved.</b><br>
</div>

<div class="footer_etc">
  <img src="${path}/resources/img/footer/i_footer1.png">
  <span style="size: 15px;"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서비스가입사실확인<img src="${path}/resources/img/footer/contentarrow.png" height="7"></a></span> <br><br>
 <p>고객님은 안전거래를 위한 현금 등으로 결제 시<br>
저희 쇼핑몰에서 가입한 구매안전서비스를<br>
이용하실 수 있습니다.</p> 
</div>


</div>
</div>

</footer>
</body>
</html>