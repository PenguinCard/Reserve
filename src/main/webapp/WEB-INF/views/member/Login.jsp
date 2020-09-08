<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
  request.setCharacterEncoding("UTF-8");
%>
<%-- <c:set var="result" value="loginFailed" /> --%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>YES24-대한민국 대표 인터넷서점</title>
  <!-- <link rel="stylesheet" type="text/css" href="../css/login.css"> -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/css/login.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <c:choose>
   <c:when test="${result=='loginFailed' }">
     <script>
       window.onload=function(){
         alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
       }
     </script>
   </c:when>
</c:choose>

     <!--  random 함수를 사용한 광고 사진 삽입 -->
<script type="text/javascript"> 

   var images = ['1.jpg', '2.jpg', '3.jpg']; 
   
   $(function(){
      $('#loginAdImg').attr('src', '${path}/resources/img/login/'+ images[Math.floor(Math.random() * images.length)]); 
   }); 

   </script>

</head>
<body>

  <div id="wrap">
    <header>
      <div class="log_header">
        <div class="logo">
          <div id="logoimg">
            <img src="${path}/resources/img/login/logo.png" alt="YES24">
            <a class="login_logo" href="${path}/main/main.do"/>
          </div>
          <h1>
            로그인
          </h1>
      
      </div>
    
      <div class="lnk_header">
        <a href="${path}/member/MemberForm.do"><span><b>회원가입</b></span></a>
      </div>
      </div>

    
    </header>
  <!-- </div> -->

   <div class="clear"></div>

   <section>

    <div class="container">
      <div class="tab_content">
        <input type="radio" name="tabmenu" id="tab1" checked>
        <label for="tab1" id="labeltab1">
          회원
        </label>
        <input type="radio" name="tabmenu" id="tab2">
        <label for="tab2" id="labeltab2">
          비회원 주문확인
        </label>
    
      <div class="conbox con1"> 
        <form name="inputbox" method="Post" action="${path}/member/login.do">
          <input type="text" name="userid" placeholder="아이디" onfocus="value='';" ><br>
          <input type="password" name="userpw" placeholder="비밀번호" onfocus="value='';" ><br>
       
          <input type="checkbox" name="select" value="login_keep" id="keeplog">
          <label for="keeplog">
            로그인 상태 유지&nbsp;
          </label>
          <input type="checkbox" name="select" value="id_keep" id="keepid">
          <label for="keepid"> 아이디 저장</label>
          <input type="submit" name="login_submit" value="로그인">
        </form>


        <div class="miss_login">
          <a href="#"><span>아이디찾기</a>&nbsp;|&nbsp;<a href="#">비밀번호 찾기</a></span>
        </div>
        <br>
        <br>

         <div class="sns_login">

       
           <ul>
         <li>
           <span class="logo2" id="logonaver"></span>
           <span id="naver">네이버 아이디로 로그인</span>
            <a href="#">
             <img id="naverlogo" src="${path}/resources/img/login/naver.png" alt=""> 
            </a>
          </li>
          <br>
         <li><a href="#">
           <span class="logo2" id="logokakao"></span>
           <span id="kakao">카카오 아이디로 로그인</span>
           <img id="kakaologo"src="${path}/resources/img/login/kakao.png" alt=""></a></li>
           <br>
         <li><a href="#">
           <span class="logo2" id="logoface"></span>
           <span id="facebook">페이스북 아이디로 로그인</span>
           <img id="facelogo" src="${path}/resources/img/login/facebook.png" alt="">
           </a></li><br>
        </ul> 
        </div> 

      </div>
      <div class="conbox con2">
        <form name="inputbox2">
          <input type="text" name="ordernum" placeholder="주문번호" onfocus="value='';"><br>
          <input type="password" name="orderpw" placeholder="주문비밀번호" onfocus="value='';"><br>
          <input type="submit" name="ordersubmit" value="확인">
        </form>

        <div class="miss_order">
          <a href="#"><span>주문번호 찾기</span></a> &nbsp;|&nbsp;<a href="#">주문비밀번호 찾기</a>
        </div>

      </div>
    </div> 
    
    <div class="clear"></div>
    <div class="container_right">
      <div class="ad_image"> 
      
      <img src="${path}/resources/img/login/login-ad.jpg" alt="ad1" id="loginAdImg"> <br>
      <img src="${path}/resources/img/login/login-ad2.jpg" alt="ad2">
    </div>
    </div>
  </div>


   </section>

   <footer>
     <div class="footer_banner">
       <img src="${path}/resources/img/login/bn_login_960x60.gif" width="80%"><br>
      <br>
      <p>Copyright © <b>YES24 Corp.</b> All Rights Reserved.</p>
      </div>
      <br>
      

     
   </footer>
  </div>
</body>
</html>