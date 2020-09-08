<%@page import="com.shop.yes24.musical.DTO.MusicalDetailDTO"%>
<%@page import="com.shop.yes24.concert.DTO.ConcertDetailDTO"%>
<%@page import="com.shop.yes24.member.DTO.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<% HttpSession sess=request.getSession(); %>
<% MemberDTO dto=(MemberDTO)sess.getAttribute("memberInfo");%>
<% String genre =(String)sess.getAttribute("genre"); %>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예매</title>
    <link rel="stylesheet" href="${path}/resources/css/reser_step4.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
                        <img src="${path}/resources/img/reserved/h2_tit05.gif" alt="">
                        <img src="${path}/resources/img/reserved/icon_nt.gif" alt="">
                    </h2>
                    <table>
                        <tbody>
                            <tr class="row1">
                                <td class="col1"><b>수령방법선택</b></td>
                                <td class="col2 chk"><input type="radio" name="" id="radio" checked>&nbsp;현장수령</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="col1 row2"><br>주문자확인</td>
                            </tr>
                            <tr>
                                <td class="col1">이름</td>
                                <td class="col2">
                                <input type="text" name="" id="name" value="<%=dto.getMem_name()%>">
                                
                                
                                </td>
                            </tr>
                            <tr>
                                <td class="col1">긴급연락처</td>
                                <td class="col2"><input type="text" name="" id="phone1" value="<%=dto.getMem_phone1()%>">
                                
                                &nbsp;-&nbsp;<input type="text" name="" id="phone2" value="<%=dto.getMem_phone2()%>">
                                
                                &nbsp;-&nbsp;<input type="text" name="" id="phone3" value="<%=dto.getMem_phone3()%>">
                                
                                </td>
                            </tr>
                            <tr>
                                <td class="col1">email</td>
                                <td class="col2"><input type="text" name="" id="email1" value="<%=dto.getMem_email1()%>">
                                
                                &nbsp;@&nbsp;<input type="text" name="" id="email2" value="<%=dto.getMem_email2()%>">
                                
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="clear"></div>
                <div class="notice">
                    <div class="nottext">
                        <ul class="notcont">
                            <li>
                                <b>주의사항</b>&nbsp;*&nbsp;부정확한 정보입력으로 인한 문제 발생 시 예스24는 책임을 지지 않습니다.
                            </li>
                            <li>
                                1)&nbsp;&nbsp;<span class="red">배송 선택 시 티켓 수령자의 배송지 정보를 정확히 입력해주시기 바랍니다.</span>
                            </li>
                            <li>
                                2)&nbsp;&nbsp;<span class="red">티켓은 유가증권으로 본인에게 직접 전달해야하며, 분실된 티켓은 재발권 되지 않습니다.</span>
                            </li>
                            <li>
                                3)&nbsp;&nbsp;<span class="red">일괄배송의 경우 정해진 날짜에 티켓 배송이 시작되며, 주소 수정은 일괄배송일 2일 전까지 가능합니다.</span>
                            </li>
                            <li>
                                4)&nbsp;&nbsp;<span class="red">예매 티켓 배송은 예매완료일, 혹은 일괄배송일로부터 4~5일(영업일 기준) 이내 수령 가능합니다.</span>
                            </li>
                            <li>
                                5)&nbsp;&nbsp;긴급연락처는 공연 취소와 같은 유사 시 안내 받으실 연락처이므로 정확히 입력해주시기 바랍니다.
                            </li>
                            <li>
                                6)&nbsp;&nbsp;이메일 정보 미 입력 시 예매 관련 안내 메일을 받을 수 없으니 이메일 받기를 원하시는 경우 마이페이지에서<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원정보를 수정해주시기 바랍니다.
                            </li>
                        </ul>
                    </div>
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
                        <a href="${path}/reservation/discount.do" id="prevstepbtn"></a>
                        <a href="${path}/reservation/payment.do" id="nextstepbtn"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>