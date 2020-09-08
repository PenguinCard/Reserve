<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
    <link rel="stylesheet" href="${path}/resources/css/header.css">
    <link rel="stylesheet" href="${path}/resources/css/sideMenustyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${path}/resources/js/allmenu_sub.js"></script>
</head>
<body>
    
   <header>
       <div id="logo">
           <div id="menubar">
               <a href="#">
               <span id="menubar1"></span>
               <span id="menubar2"></span>
               <span id="menubar3"></span>
            </a>
           </div>
        <a href="${path}/main/main.do" id="logoimg">
        </a>
       </div>
       <div id="submenu">
           <ul id="concert-head">
               <li>
                   <a href="${path}/sub/sub2">
                   콘서트
                   </a>
               </li>
               <li>
                   <a href="${path}/sub/sub1">
                   뮤지컬
                   </a>
               </li>
               <li>
                   <a href="#">
                   연극
                   </a>
               </li>
               <li>
                   <a href="#">
                   클래식
                    </a>
               </li>
               <li>
                   <a href="#">
                   전시
                   </a>
               </li>
               <li>
                   <a href="#">
                   아동
                   </a>
               </li>
           </ul>
           <div id="ranking-head">
               <ul>
                   <li>
                       <a href="#">
                      랭킹 
                       </a>
                   </li>
                   <li>
                       <a href="#">
                       이벤트
                       </a>
                   </li>
               </ul>
           </div>

       </div>
       <div id="search">
           <div class="searchBox">
             <input type="text" id="search_text">
             <a href="#">
             
            </a>
           </div>
           <a href="#" id="myticket">
           <span>MY티켓</span>
           </a>
           <a href="#" id="global">
           <span>GLOBAL</span>
           </a>
       </div>
   </header>
   <aside>
    <div class="allMenu">
        <div class="menubtn">
            <div class="allbtn">
                <span class="bar" id="bar1"></span>
                <span class="bar" id="bar2"></span>
                <span class="bar" id="bar3"></span>
            </div>
            <div class="closebtn">
                <a href="#"></a>
            </div>
        </div>
    </div>
    <div class="clear"></div>

    <div class="allMenulist">
        <div class="thema-side">
            <ul>
                <li>
                    <a href="#">
                  	  콘서트
                        <ul class="smenu">
                            <li>
                                <a href="#">
                                -전체보기
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -국내뮤지션
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -해외뮤지션
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -페스티벌
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                        </ul>
                    </a>
                </li>
                <li>
                    <a href="#">
                        뮤지컬
                        <ul class="smenu">
                            <li>
                                <a href="#">
                                    <div class="hovarrow"></div>
                                -전체보기
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -라이선스
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -오리지널
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -창작
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -넌버벌 퍼포먼스
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                        </ul>
                    </a>
                </li>
                <li>
                    <a href="#">
                        연극
                        <ul class="smenu">
                            <li>
                                <a href="#">
                                -전체보기
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -대학로
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -기타지역
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                        </ul>
                    </a>
                </li>
                <li>
                    <a href="#">
                        클래식/국악/무용
                        <ul class="smenu">
                            <li>
                                <a href="#">
                                -전체보기
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -클래식
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -발레/무용
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -국악
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                        </ul>
                    </a>
                </li>
                <li>
                    <a href="#">
                        전시/행사
                        <ul class="smenu">
                            <li>
                                <a href="#">
                                -전체보기
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -전시
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -체험/행사
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -워터파크/스파
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                        </ul>               
                    </a>
                </li>
                <li>
                    <a href="#">
                        아동/가족
                        <ul class="smenu">
                            <li>
                                <a href="#">
                                -전체보기
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -뮤지컬
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -연극
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                -기타
                                <div class="hovarrow"></div>
                                </a>
                            </li>
                        </ul>
                    </a>
                </li>
            </ul>
        </div>
        <div class="clear"></div>


        <div class="middleTap">
            <ul>
                <li>
                    <a href="#">
                        랭킹
                    </a>
                </li>
                <li>
                    <a href="#">
                        지역별
                    </a>
                </li>
                <li>
                    <a href="#">
                        공연장
                    </a>
                </li>
            </ul>
        </div>
        <div class="clear"></div>

        <div class="note">
            <ul>
                <li>
                    <a href="#">
                        공지사항 
                        <div class="hovarrow"></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        이벤트
                        <div class="hovarrow"></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        읽을거리
                        <div class="hovarrow"></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        이용안내
                        <div class="hovarrow"></div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="clear"></div>

        <div class="myTicket">
            <ul>
                MY티켓
                <li>
                    <a href="#">
                        -예매확인/취소
                        <div class="hovarrow"></div>
                    </a>
                </li>
            </ul>
            <ul>
                최근 본 상품
                <li>
                    <ul class="thumbslide">
                        <li id="thumbimg1">
                            <a href="#">

                            </a>
                        </li>
                        <li id="thumbimg2">
                            <a href="#">

                            </a>
                        </li>
                        <li id="thumbimg3">
                            <a href="#">

                            </a>
                        </li>
                        <li id="thumbimg4">
                            <a href="#">

                            </a>
                        </li>
                        <li id="thumbimg5">
                            <a href="#">

                            </a>
                        </li>
                        <li class="thumbbtn">
                            <div id="thumbprev"></div>
                            <div id="thumbnext"></div>
                        </li>
                        <li class="imgcount">
                            <p>
                                <span>1</span>
                                /5
                            </p>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clear"></div>

        <div class="subAnother">
            <ul>
                <li>MD#</li>
                <li>GLOBAL</li>
            </ul>
        </div>
        <div class="scroll"></div>
    </div>
    
</aside>

<div class="topscroll">
    <div class="arrow">
        <div class="arrowbtn"></div>
    </div>
</div>
</div>
</body>
</html>


