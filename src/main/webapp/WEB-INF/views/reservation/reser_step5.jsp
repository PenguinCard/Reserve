<%@page import="com.shop.yes24.musical.DTO.MusicalDetailDTO"%>
<%@page import="com.shop.yes24.concert.DTO.ConcertDetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% HttpSession sess=request.getSession(); %>
<% String genre =(String)sess.getAttribute("genre"); %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예매</title>
    <link rel="stylesheet" href="${path}/resources/css/reser_step5.css">
</head>
<body>
    <div class="wrap">
        <div class="leftbody">
            <div class="topNav">
                <div class="rLogo">
                    <div id="rLogoimg"></div>
                </div>
                <div class="steps">
                    <div id="stepimg1"></div>
                    <div id="stepimg2"></div>
                    <div id="stepimg3"></div>
                    <div id="stepimg4"></div>
                    <div id="stepimg5"></div>
                </div>
            </div>
            <div id="remain">
                <div id="selects">
                  
                        <h2>
                            <img src="${path}/resources/img/reserved/h2_tit06.gif" alt="">
                            <img src="${path}/resources/img/reserved/icon_nt.gif" alt="">
                        </h2>

                        <div id="money">
                            <div id="yesmoney">
                                <span>YES머니</span>
                                <div id="yesmoneyinput">
                                    <input type="text">원
                                </div>
                                <div id="yesmoneycheck">
                                    <input type="checkbox"><div id="check">전액사용 (총 0원)</div>

                                </div>
                                <div id="yesmoneypoint">
                                    <span>/ YES포인트 0 원</span>
                                </div>
                                <img src="${path}/resources/img/reserved/btn_yes01.gif" alt="">

                            </div>
                            <div class="clear"></div>
                            <div id="point">
                                <span>예치금</span>
                                <div id="yesmoneypointinput">
                                    <input type="text">원
                                </div>
                                <div id="yesmoneypointcheck">
                                    <input type="checkbox"><div id="check2">전액사용 (총 0원)</div>

                                </div>
                                
                            </div>
                            <div id="giftcard">
                                <span>YES24상품권</span>
                                <div id="giftcardinput">
                                    <input type="text">원
                                </div>
                                <div id="giftcardbtn">
                                    <img src="${path}/resources/img/reserved/btn_use.gif" alt="">
                                    <div id="giftcard3">(총 0원 / 사용가능 0장)</div>
                                </div>
                            </div>
                            <div id="bookingticket">
                                <span>공연예매권</span>
                                <div id="bookingticket1">
                                    사용가능 예매권[총 <span>0</span>장]
                                </div>
                                <img src="${path}/resources/img/reserved/btn_yes02.gif" alt="">
                            </div>
                            <div id="dotline"></div>
                        </div>
                        <div class="clear"></div>
                        <div id="paymethod">
                            <span>결제방법선택</span>
                            <div id="card">
                                <input type="radio" name="radio"> 신용카드
                            </div>
                            <div id="banking">
                                <input type="radio" name="radio"> 무통장입금
                            </div>
                            <select id="bankname">
                                <option>입금은행선택</option>
                                <option>국민은행</option>
                                <option>기업은행</option>
                                <option>농협중앙회</option>
                                <option>신한은행</option>
                                <option>우리은행</option>
                            </select>
                            <img src="${path}/resources/img/reserved/btn_infor04.gif" alt="">
                        </div>
                        
                    
                </div> 
                <div class="clear"></div>
                <div id="table">
                    <div id="left">
                     <div id="first">
                         <div id="firsttxt">내용</div>
                         <div id="firsttxt">취소수수료</div>
                         
                     </div>
                     <div id="second">
                         <div id="secondtxt">예매 후 7일 이내</div>
                         <div id="secondtxt">없음</div>
                    
                    </div>
                    <div id="third">
                        <div id="thirdtxt">예매 후 8일~관람일 10일 전까지</div>
                        <div id="thirdtxt2">뮤지컬, 콘서트, 클래식 등: 장당 4,000원 / <br>
                            연극, 전시 등: 장당 2,000원 <br>
                            (단, 티켓 금액의 10% 이내)</div>
                    </div>
                    <div id="fourth">
                        <div id="fourthtxt">
                            관람일 9일 전 ~ 관람일 7일 전까지	
                        </div>
                        <div id="fourthtxt">
                            티켓금액의 10%
                        </div>
                    </div>
                    <div id="fifth">
                        <div id="fifthtxt">
                            관람일 6일 전 ~ 관람일 3일 전까지	
                        </div>
                        <div id="fifthtxt">
                            티켓금액의 20%
                        </div>
                    </div>
                    <div id="sixth">
                        <div id="sixthtxt">
                            관람일 2일 전 ~ 관람일 1일 전까지	
                        </div>
                        <div id="sixthtxt">
                            티켓금액의 30%
                        </div>
                    </div>
                    </div>
                    <div id="right">
                        <div id="first1">
                            <div id="first1txt">
                            비고
                            </div>
                        </div>
                        <div id="first2">
                            <br>
                            - 취소 시 예매수수료는 예매 당 <br>
                            일 밤 12시 이전까지만 환불됩니 <br>
                            다.
                            - 예매 후 7일 이내라도 취소시점 <br>
                            이 관람일로부터 10일 이내라면 <br>
                            그에 해당하는 취소수수료가 부과 <br>
                            됩니다.
                            - 관람 당일 취소 가능 상품의 경 <br>
                            우 관람 당일 취소 시 티켓금액의 <br>
                             90%가 취소수수수료로 부과됩니다.   
                        </div>
                    </div>
                </div>  
                <div class="clear"></div> 
                <div id="policy">
                    <input type="checkbox">취소수수료 및 취소기한을 확인하였으며, 동의합니다. <input type="checkbox">제3자 정보제공 내용에 동의합니다. <a href="#">[상세보기]</a> &nbsp;
                </div>
            </div>
                        
                       
        </div>
        <div class="rightbody">
            <div class="rightTop">
            <% if(genre.equals("concert")){ 
            	ConcertDetailDTO main=(ConcertDetailDTO)sess.getAttribute("main");
            	ConcertDetailDTO all=(ConcertDetailDTO)sess.getAttribute("all"); %>
                <div id="dataimg">
                    <img src="${path}/resources/img/detail/<%= main.getCon_detail_title() %>/<%= main.getCon_detail_imagelist_name() %>" alt="">
                </div>
                <div id="datainfo">
                    <p class="posttitle">
                        <%=all.getCon_detail_name() %>
                    </p>
                    <p class="postetc">
                        <%=all.getCon_detail_period() %>
                        <br>
                        <%=all.getCon_detail_place() %>
                    </p>
                </div>
                <% } else if(genre.equals("musical")) { 
                MusicalDetailDTO main =(MusicalDetailDTO)sess.getAttribute("main");
                MusicalDetailDTO all = (MusicalDetailDTO)sess.getAttribute("all");
                %>
                <div id="dataimg">
                    <img src="${path}/resources/img/detail/<%=main.getMusical_detail_title() %>/<%=main.getMusical_detail_image_name()%>" alt="">
                </div>
                <div id="datainfo">
                    <p class="posttitle">
                       <%=all.getMusical_detail_name() %>
                    </p>
                    <p class="postetc">
                        <%=all.getMusical_detail_period() %>
                        <br>
                        <%=all.getMusical_detail_place() %>
                    </p>
                </div>
                <% } %>
                
                <div class="bar"></div>
            </div>
            <div class="rightsec">
                <div class="selinfo">
                    <div class="selinfoTitle"></div>
                    <ul>
                        <li>
                            <div id="ticketdate"></div>
                            <p class="tickinfo"><%=sess.getAttribute("day") %></p>
                        </li>
                        <li>
                            <div id="tickettime"></div>
                            <p class="tickinfo"><%=sess.getAttribute("count") %></p>
                        </li>
                        <li>
                            <div id="ticketcnt"></div>
                            <p class="tickinfo">1</p>
                        </li>
                        <li>
                            <div id="ticketseat"></div>
                            <p class="tickinfo"><c:out value="${sessionScope.grade} ${sessionScope.rowno}"/>석</p>
                        </li>
                    </ul>
                    <div class="bar"></div>
                </div>
            </div>
            <div class="rightthir">
                <div class="payinfo">
                    <div id="paytitle"></div>
                    <ul>
                        <li>
                            <div id="payment"></div>
                            <p class="tickinfo"><c:out value="${sessionScope.price}"/></p>
                        </li>
                        <li>
                            <div id="payvat"></div>
                            <p class="tickinfo">0</p>
                        </li>
                        <li>
                            <div id="paydelivery"></div>
                            <p class="tickinfo">0</p>
                        </li>
                        <li>
                            <div id="totalpay"></div>
                            <p class="tickinfo"><c:out value="${sessionScope.price}"/></p>
                        </li>
                    </ul>
                    <div class="bar"></div>
                </div>
            </div>
            <div class="rightfour">
                <ul>
                    <li>
                        <div id="salepay"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="coupon"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="yesmon"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="defaltpay"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="yesticket"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="playticket"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="etcpay"></div>
                        <p class="tickinfo">0</p>
                    </li>
                    <li>
                        <div id="totalsale"></div>
                        <p class="tickinfo">0</p>
                    </li>
                </ul>
                <div class="bar"></div>
            </div>
            <div class="rightend">
                <ul>
                    <li>
                        <h3 class="finalpay">
                            <p class="paycnt"><c:out value="${sessionScope.price}"/></p>
                            <p>원</p>
                        </h3>
                    </li>
                    <li>
                        <a href="${path}/reservation/receivemethod.do" id="nextstepbtn"></a>
                        <a href="${path}/myticket/Myticket" id="paybtn"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>