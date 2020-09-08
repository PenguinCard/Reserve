<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="UTF-8">
<head><link rel="stylesheet" href="${path}/resources/css/member_form.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
      <script type="text/javascript">
      $(document).ready(function(){
         $("#id_btn").on('click', function(){
            var name=$("#id_box").val(); //사용자가 input박스에 입력한 값 가져오는 함수
            var idchk={
                    mem_id: name //컨트롤러에 보내는 값(키,값) 즉  jason 형식
            }
            if(name==null||name==""){
          	  $("#result").text("아이디를 입력해주세요").css("color","red");
            } else {
            	$.ajax({
                    url: "idcheck", //jsp경로
                    type: "POST",
                    data: JSON.stringify(idchk), //idchk 에 담긴 json 값 가져와 스트링 형식으로 변환
                    contentType: "application/json; charset=utf-8;",
                    dataType: "json",
                    success: function(data){
                    	$("#result").text(data.chk);
                    	if(data.chk=="true"){
                    		$("#result").text("중복된 아이디입니다.").css("color","red");
                    	} else {
                    		$("#result").text("사용가능한 아이디입니다.").css("color","green");
                    	}
                    }
                 });
            }
         });
      });
   </script>
</head>
<body>
    <header>
        <div id="logo">
        <a href="#">
            <img src="http://image.yes24.com/sysimage/renew/gnb/logoN2.png" alt="">
        </a>
        </div>
    </header>
    <form action="${path}/insertMember.do" method="POST"> <!--controller의 requestmapping주소  -->
    <section>
        <div id="id">
            <div id="id_subject">
                <span id="id_span">
                아이디</span></div>
            <input type="text" id="id_box" name="mem_id">
           
            	<button id="id_btn" type="button">중복확인</button>
            	<div id="result"></div>
            
        </div>
        <div id="pw">
            <div id="pw_subject">
                <span id="pw_span">
                    비밀번호
                </span></div>
            <input type="password" id="pw_box" name="mem_pw">
            <div id="pw_lock_img">
            	<a href="#">    
            	</a>  
            </div>
        </div>
        <div id="name">
            <div id="name_subject">
                <span id="name_span">
                이름</span></div>
            <input type="text" id="name_box" name="mem_name">
        </div>
        <div id="birth">
            <div id="birth_subject">
                <span id="birth_span">
                생년월일</span></div>
            <div id="birth_1">
            <div id="year"> 
            <input type="text" size="15" placeholder="년(4글자)" onfocus="this.placeholder=''" onblur="this.placeholder='년(4글자)'" class="year_txt" name="mem_birth_year">
            </div>   
            
            </div>
            
            <select id="birth_2" name="mem_birth_month">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            <div id="birth_2_img"></div>
            <div id="birth_3">
             <input type="text" size="15" placeholder="일" onfocus="this.placeholder=''" onblur="this.placeholder='일'" class="day_txt" name="mem_birth_day"> 
            </div>
        </div>
        <div id="phone">
            <div id="phone_subject">
                <span id="phone_span">
                휴대전화</span></div>
            <div id="phone_1">
            <input type="text" size="15" placeholder="" onfocus="this.placeholder=''" onblur="this.placeholder=''" class="phone_txt" name="mem_phone1"> 
            </div>
            <input type="text" id="phone_2" name="mem_phone2">
            <input type="text" id="phone_3" name="mem_phone3">
        </div>
        <div id="tel">
            <div id="tel_subject">
                <span id="tel_span">
                전화번호</span></div>
            <select id="tel_1" name="mem_tel1">
                <option>02</option>
                <option>031</option>
                <option>032</option>
                <option>033</option>
                <option>041</option>
                <option>042</option>
                <option>043</option>
                <option>044</option>
                <option>051</option>
                <option>052</option>
                <option>053</option>
                <option>054</option>
                <option>055</option>
                <option>061</option>
                <option>062</option>
                <option>063</option>
                <option>064</option>
            </select>
            <div id="tel_img"></div>
            <input type="text" id="tel_2" name="mem_tel2">
            <input type="text" id="tel_3" name="mem_tel3">
        </div>
        <div id="address">
            <div id="address_subject">
             <span id="address_span">주소</span>
            </div>
            <input type="text" id="address_1" name="mem_address1">
            <a href="#">
                <button id="address_btn">우편번호 검색</button>
               </a>
            <div id="address_2">
                <input type="text" size="60" placeholder="지번주소" onfocus="this.placeholder=''" onblur="this.placeholder='지번주소'" class="jibun_txt"> 
            </div>
            <div id="address_3">
                <input type="text" size="60" placeholder="도로명 주소" onfocus="this.placeholder=''" onblur="this.placeholder='도로명 주소'" class="doro_txt" name="mem_address2"> 
            </div>
            <div id="address_4">
            <input type="text" size="60" placeholder="나머지 주소" onfocus="this.placeholder=''" onblur="this.placeholder='나머지 주소'" class="restadd_txt" name="mem_address3"> 
            </div>
        </div>
        <div id="email">
            <div id="email_subject">
                <span id="email_span">이메일</span>
            </div>
            <input type="text" id="email_1" name="mem_email1"></input>
            <span id="email_1_at">@</span>
            <select id="email_2" name="mem_email2">
                <option>naver.com</option>
                <option>hanmail.net</option>
                <option>yahoo.co.kr</option>
                <option>hotmail.com</option>
                <option>nate.com</option>
                <option>gmail.com</option>
            </select>
            <div id="email_2_img"></div>
        </div>
        <div style="text-align: center;">
        	<input type="submit" value="가입하기" id="join_btn" />
        </div>
    </section>
    </form>
    <footer>
        <div id="list"><a href="#">이용약관</a></div>
        <img src="${path}/resources/img/login/bu_bar_2x.gif" id="footer_img1">
        <div id="personal_info"><a href="#">개인정보처리방침</a></div>
        <img src="${path}/resources/img/login/bu_bar_2x.gif" id="footer_img2">
        <div id="responsiblity"><a href="#">책임의 한계와 법적고지</a></div>
        <img src="${path}/resources/img/login/bu_bar_2x.gif" id="footer_img3">
        <div id="customer_center"><a href="#">회원정보 고객센터</a></div>
        <div class="clear"></div>
        <div id="corp">
        <span>
            © 
        </span>
         <a href="#">
          YES24 Corp.
         </a>
       </div>
    </footer>
   

</body>
</html>

