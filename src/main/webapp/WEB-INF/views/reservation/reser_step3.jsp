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
    <link rel="stylesheet" href="${path}/resources/css/reser_step3.css">
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
            <!-- 여기서부터 -->
            <div id="contentsArea" class="container" style="display: block;">
            <div id="step3" style="display: block;">
                <div id="step3_promotion">
                    <h2>
                        <img src="${path}/resources/img/reserved/h2_tit03.gif" class="img2">
                        <span>
                            <img src="${path}/resources/img/reserved/icon_nt.gif" class="img3">
                        </span>
                    </h2>
                    <div id="promotionList" class="scroll" style="height: 228px;">
                        <div id="promotionListsec" style="display: block;">
                        <table id="group1" border="0" class="sale_table">
                            <caption>할인리스트</caption>
                            <colgroup>
                            <col width="55%">
                            <col width="15%">
                            <col width="20%">
                            <col width="10%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">할인명</th>
                                    <th scope="col">할인금액</th>
                                    <th scope="col">매수</th>
                                    <th scope="col">설명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="bold" >
                                        국가유공자(1인1매)
                                        <font color="red">[배송불가]</font>
                                        <br>
                                    </td>
                                    <td>60,000</td>
                                    <td>
                                        <select id="selpromotion">
                                            <option value="0">0매</option>
                                            <option value="1">1매</option>
                                        </select>
                                    </td>
                                    <td>
                                        <img id=promotionInfo src="${path}/resources/img/reserved/btn_q.gif">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bold">
                                        장애인(1~3급,중증/1인2매)
                                        <font color="red">[배송불가]</font>
                                        <br>
                                    </td>
                                    <td>60,000</td>
                                    <td>
                                        <select id="selpromotion">
                                            <option value="0">0매</option>
                                            <option value="1">1매</option>
                                        </select>
                                    </td>
                                    <td>
                                        <img id=promotionInfo src="${path}/resources/img/reserved/btn_q.gif">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bold">
                                        장애인(4~6급,경증/1인2매)
                                        <font color="red">[배송불가]</font>
                                        <br>
                                    </td>
                                    <td>60,000</td>
                                    <td>
                                        <select id="selpromotion">
                                            <option value="0">0매</option>
                                            <option value="1">1매</option>
                                        </select>
                                    </td>
                                    <td>
                                        <img id=promotionInfo src="${path}/resources/img/reserved/btn_q.gif">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bold">
                                       청소년할인(초중고/1인2매)
                                        <font color="red">[배송불가]</font>
                                        <br>
                                    </td>
                                    <td>36,000</td>
                                    <td>
                                        <select id="selpromotion">
                                            <option value="0">0매</option>
                                            <option value="1">1매</option>
                                        </select>
                                    </td>
                                    <td>
                                        <img id=promotionInfo src="${path}/resources/img/reserved/btn_q.gif">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
                <div id="step3_coupon">
                    <h2>
                        <img src="${path}/resources/img/reserved/h2_tit04.gif" class="img2">
                        <span>
                            <img src="${path}/resources/img/reserved/icon_nt.gif" class="img3">
                        </span>
                    </h2>
                    <div class="sale_select">
                        <div class="select_coupon" style="margin-bottom: 5px;">
                        <a class="add_coupon">
                            <img src="${path}/resources/img/reserved/btn_coupon2.gif" class="add">
                        </a>
                        </div>
                        <br>

                        <div id="coupon_list" class="scroll" style="height: 106px;">
                            <table border="0" cellpadding="0" cellspacing="0" class="sale_table">
                                <caption>쿠폰리스트</caption>
                                    <colgroup>
                                    <col width="55%">
                                    <col width="15%">
                                    <col width="20%">
                                    <col width="10%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">쿠폰명</th>
                                            <th scope="col">등급</th>
                                            <th scope="col">할인금액</th>
                                            <th scope="col">사용</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="4">
                                                <span>보유하신 쿠폰이 없습니다.</span>
                                            </td>
                                        </tr>
                                    </tbody>
                            </table>
                        </div>
                        <p class="pnotice">
                            <strong class="red">주의사항)</strong>
                            <span>할인은 자동선택 되지 않으니, 
                                <strong class="red">적용받고자 하는 할인이 있는 경우 직접 선택 </strong>
                                해주시기 바랍니다.
                            </span>
                        </p>
                    </div>
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
                    <div class="btn" style="display: block;">
                    <li>
                        <a href="${path}/reservation/seat.do" id="prevbtn"></a>
                    </li>
                    <li>
                        <a href="${path}/reservation/receivemethod.do" id="nextstepbtn"></a>
                    </li>
                    </div>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>