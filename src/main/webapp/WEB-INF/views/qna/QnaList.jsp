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
    <title>QNA리스트</title>
    <link rel="stylesheet" href="${path}/resources/css/qnalist.css">
</head>
<body>

    <div class="wrap">
        <section id="customer">
           <article class="qnaform">
               <table id="mainqna">
                   <tr>
                       <th class="aside" id="asidetitle">고객센터</th>
                       <th id="rightTitle">
                            <div class="qnalist">
                                문의내역
                            </div>
                           <div class="qnalist">
                               <a href="${path}/qna/Qna">글쓰기</a>
                            </div>
                       </th>
                   </tr>
                   <tr>
                       <td class="aside">
                           <ul>
                               FAQ
                               <li>
                                   <a href="#">
                                   상품
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   주문/결제/영수증
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   배송
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   취소/교환/반품
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   회원관리
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   회원계정
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   영화
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   공연
                                   </a>
                                </li>
                               <li>
                                   <a href="#">
                                   기타
                                   </a>
                                </li>
                           </ul>
                       </td>

                       <td rowspan="8" id="qnamain">
                        
                        <div class="contents">
                            <div class="board_view">
                                <form name="qnaboard" id="qnaboard">
                                    <table id="board">
                                    <colgroup>
                                        <col style="width:50px;">
                                        <col>
                                        <col style="width:80px;">
                                        <col style="width:80px;">
                                        <col style="width:80px;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">번호</th>
                                            <th scope="col">제목</th>
                                            <th scope="col">작성자</th>
                                            <th scope="col">등록일</th>
                                            <th scope="col">답변</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                     <c:forEach var="listFor" items="${list}">
                                        <tr>
                                            <td>${listFor.articleno}</td>
                                            <td>
                                            <c:choose>
                                             <c:when test='${listFor.level > 1 }'> <!--level값이 1보다 크면 ,level1이 부모 -->
                                              <c:forEach begin="2" end="${listFor.level}" step="1"> <!-- 초기값 2로 줘야함,level 2부터 ㄴ출력하기 때문에 -->
                                              
                                            └
                                              </c:forEach>
                                              <a href="${path}/qna/QnaDetail?articleno=${listFor.articleno}">
                                              ${listFor.title}
                                              </a>
                                             </c:when>
                                             <c:otherwise> <!--level값이 1 보다 작으면 즉 부모면  -->
                                             <a href="${path}/qna/QnaDetail?articleno=${listFor.articleno}">
                                              ${listFor.title}
                                              </a>
                                             </c:otherwise>
                                            </c:choose>
                                            </td>
                                            <td>${listFor.writer_id}</td>
                                            <td>${listFor.writedate}</td>
                                            <td>접수중</td>
                                        </tr>
                                       
                                      </c:forEach>  
                                      
                                     
                                    </tbody>
                                    </table>
                                </form> 
                            </div>

                            <div class="paging_pagination">
                                <div class="paging">
                                    <a class="prev">
                                        <img src="${path}/resources/img/qnalist/pasing_left.gif" id="left">
                                    </a>
                                    <a style class="on">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <a href="#">4</a>
                                    <a href="#">5</a>
                                    <a href="#">6</a>
                                    <a href="#">7</a>
                                    <a href="#">8</a>
                                    <a href="#">9</a>
                                    <a href="#">10</a>
                                    <a href="#" class="prev">
                                        <img src="${path}/resources/img/qnalist/pasing_right.gif" id="right">
                                    </a>
                                </div>
                            </div>
                        </div>
                       </td>
                   </tr>
                   <tr >
                       <td class="aside">
                           <ul>
                               1:1 문의
                               <li>
                                   <a href="#">
                                   1:1 문의하기
                                   </a>
                               </li>
                               <li>
                                   <a href="#">
                                   1:1 문의내역
                                   </a>
                               </li>
                           </ul>
                       </td>
                   </tr>
                   <tr>
                       <td class="aside" id="notice">
                           <ul>
                               <li class="not">
                                   공지사항
                                   <span class="arrow"></span>
                                   <a href="#"></a>
                               </li>
                           </ul>
                       </td>
                   </tr>
                   <tr>
                       <td class="aside">
                           <div class="arsinfo">
                                <a href="#">
                                    ARS 안내
                                </a>
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <td class="aside">
                           <div class="phonEx">
                               <div class="phontitle">
                                   일반문의
                               </div>
                               <div class="phonnum">
                                   1544-3800
                               </div>
                               <div class="phondate">
                                   평일 09:00 ~ 18:00
                                   <br>
                                   토,일요일 및 공휴일 휴무
                               </div>
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <td class="aside">
                           <div class="phonEx">
                               <div class="phontitle">
                                   영화예매 문의
                               </div>
                               <div class="phonnum">
                                   1544-7758
                               </div>
                               <div class="phondate">
                                   평일 09:00 ~ 18:00
                                   <br>
                                   토,일,공휴일 10:00 ~ 17:00
                                   <br>
                                   점심시간 12:00 ~ 13:00
                               </div>
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <td class="aside">
                           <div class="phonEx">
                               <div class="phontitle">
                                   공연예매 문의
                               </div>
                               <div class="phonnum">
                                   1544-6399
                               </div>
                               <div class="phondate">
                                   평일 09:00 ~ 18:00
                                   <br>
                                   토요일 09:00 ~ 17:00
                                   <br>
                                   점심시간 12:00 ~ 13:00
                                   <br>
                                   일요일 및 공휴일 휴무
                               </div>
                           </div>
                       </td>
                   </tr>
               </table>
           </article>
        </section>

    </div>
    
</body>
</html>