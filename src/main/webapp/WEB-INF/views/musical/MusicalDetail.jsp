<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="UTF-8">
    <link rel="stylesheet" href="${path}/resources/css/musical_detail_css.css">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>musical 상세페이지</title>
</head>
<body>
    <div class="wrap">
        <section>
            <article id="title_article">
                <!-- 공연이름,날짜,장소 -->
                <div id="title">
                    <div id="first_title"> 
                        <a href="#">
                        ${all.musical_detail_subject}
                        </a>
                    </div>
                    <div id="second_title"><p1>${all.musical_detail_name}</p1></div>
                    <div id="third_title">
                        <div id="date">${all.musical_detail_period} &nbsp; |  &nbsp; </div>
                        <div id="place">
                            <a href="#">
                             ${all.musical_detail_place}
                            <img src="${path}/resources/img/detail/common/ico-big-location.png" alt="">
                            </a>
                        </div>
                    </div>
                        <div id="social_btn">
                            <a href="#">
                            <img src="${path}/resources/img/detail/common/rn-social.png" alt="소셜">
                            </a>
                        </div>
                    </div>
                
            </article>
            <article id="poster_article">
                <div id="poster">
                    <div id="poster_space">
                        <img src="${path}/resources/img/detail/${main.musical_detail_title}/${main.musical_detail_image_name}" alt="">
                    </div>
                    <div id="likes">
                        <ul>
                            <li>
                                <a href="#">
                                <img src="${path}/resources/img/detail/common/rn-product-good2.png" alt="하트">
                                </a>
                            </li>
                            <li>
                                <a href href="#">
                                숫자
                                </a>
                            </li>
                            <li>
                            <a href="#">
                                Likes
                            </a>
                            </li>
                        </ul>
                    </div>
                    <div id="grade_info">
                        <div id="grade_grade">
                            <ul>
                                <li class="text_bold">등급</li>
                                <li id="grade_li">${all.musical_detail_grade}</li>
                            </ul>
                        </div>
                        <div id="grade_time">
                            <ul>
                                <li  class="text_bold">관람시간</li>
                                <li id="time_li">${all.musical_detail_time}</li>
                            </ul>
                        </div>
                        <div id="grade_cast">
                            <ul>
                                <li  class="text_bold">출연</li>
                                <li id="cast_li">
                                <c:choose>
                                <c:when test="${all.musical_detail_cast == null || ''}">
                                --
                                </c:when>
                                <c:otherwise>
                                ${all.musical_detail_cast}
                                </c:otherwise>
                                </c:choose>
                                </li>
                            </ul>
                        </div>
                        <div id="grade_price">
                            <ul>
                                <li class="text_bold">
                                가격 
                                </li>
                            
                                    <div id="price_div">
                                        <li>
                                            VIP석 <span>160,000</span>원
                                        </li>
                                        <li>R석
                                            <span>130,000</span>원
                                        </li>
                                        <li>
                                            S석 <span>110,000</span>원
                                        </li>
                                        <li>
                                            A석 <span>90,000</span>원
                                        </li>
                                        <li>
                                            B석 <span>60,000</span>원
                                        </li>
                                    </div>
                            </ul>
                        </div>
                        <div id="grade_advantages">
                            <ul>
                                <li  class="text_bold">혜택</li>
                                <li id="advantages_li"><a href="#">
                                    사용가능쿠폰 
                                    <div class="background_img1">
                                        <div class="bar">|</div>
                                    </div>
                                </a></li>
                                <li id="advantages_li">
                                    <a href="#">
                                        무이자할부
                                        <div class="background_img1">
                                        <div class="bar">|</div>
                                        </div>
                                    </a>
                                </li>
                                <li id="advantages_li">
                                    <a href="#">
                                        제휴카드할인
                                        <div class="background_img1">
                                        </div>
                                        </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="time_info">
                        <div id="time_first">
                            <span>공연시간 안내</span> 
                            <br>
                           ${all.musical_detail_time_info}
                        </div>
                        <div id="time_second">
                        <br><br>
                            <span>배송정보</span>
                            <br>
                            ${all.musical_detail_delivery}

                        </div>
                        <!-- <div id="time_third">
                            <span>배송정보</span>
                            <br> 모바일 티켓
                        </div> -->
                    </div>
                </div>
            </article>
            <article id="booking_article">
                <div id="booking">
                    <a href="${path}/reservation/date.do?detail_id=${all.musical_detail_id}&genre=musical">
                    <div id="booking_1">예매하기</div>
                    </a>
                    <a href="#">
                    <div id="booking_2">BOOKING</div>
                    </a>
                </div>
            </article>
            <article>
                <div id="banner">
                <a href="#">
                    <img src="${path}/resources/img/detail/common/banner1.jpg" alt="">
                </a>
                </div>
                <div class="clear"></div>
            </article>
            
            <article id="info_btn_article">
                <div id="info_btn">
                <a href="#">
                    <div id="info_btn_detail">상세정보</div>
                </a>
                <!-- <a href="#">
                    <div id="info_btn_cancle">예매/취소안내</div>
                </a> -->
                </div>
            </article>
            <article>
                <div id="notice">
                    <span id="notice_subject">유의사항</span> <br>
                    <span id="notice_contents">
                        
                        매수 제한: 1인 4매까지<br>
                        티켓 발급 안내: 관람일 전일 20시에 YES24공연 APP을 통해 예매자 아이디로 모바일 티켓(바코드) 발급<br>
                        주의 사항: 예매자 아이디로 발급된 모바일 티켓 지참 시에만 입장 가능 <br>
                        모바일 티켓 캡처본 및 사본 절대 불가
                        <br> <br>
                        * 예매 완료 후에는 티켓 종류(1일권의 날짜 포함), 예매자 명의 변경이 불가합니다. <br>
                        * 예매 시 티켓 권종(2일권/일자별 1일권)을 확인하시기 바랍니다. <br> <br> <br>
                        
                        <span id="notice_contents_red">
                        ※ 티켓 예매에 앞서 티켓 예매처의 취소, 환불 조항은 물론 상세 사항을 반드시 확인해주시기 바랍니다. <br>

                        ※ 티켓 예매를 하는 것은 주최 측과 티켓 예매처의 안내와 규정을 확인하였으며 이에 동의함을 의미합니다. <br>

                        ※ 자세한 예매 및 티켓 수령, 입장 관련 사항은 아래 상세 내용을 확인하시기 바랍니다.  <br>
                        </span>
                        </span>
                </div>
            </article>
            <article>
                <div id="info_pics">
                    <div id="info_text"></div> 
                    <c:forEach var="noticeFor" items="${notice}" varStatus="noticeStatus">
                    <div id="info_pics${noticeStatus.count}">
                      <img src="${path}/resources/img/detail/${noticeFor.musical_detail_title}/${noticeFor.musical_detail_image_name}">
                    </div>
                    </c:forEach>
                    <div id="discount_info">할인정보</div>
                    <c:forEach var="discountFor" items="${discount}">
                    <div id="info_pics3">
                     <img src="${path}/resources/img/detail/${discountFor.musical_detail_title }/${discountFor.musical_detail_image_name}">
                    </div>
                    </c:forEach>
                    <div id="perform_info">공연정보</div>
                    <c:forEach var="infoFor" items="${info}" varStatus="infoStatus" >
                    <div id="info_pics${infoStatus.count+3}">
                        <img src="${path}/resources/img/detail/${infoFor.musical_detail_title}/${infoFor.musical_detail_image_name}">
                    </div>
                    </c:forEach>
                    <c:forEach var="castFor" items="${cast}" varStatus="castStatus">
                    <div id="info_pics${castStatus.count+7}">
                        <img src="${path}/resources/img/detail/${castFor.musical_detail_title}/${castFor.musical_detail_image_name}"/>
                    </div>
                    </c:forEach>
                </div>
            </article>
            <article id="detail_info_article">
                <div id="detail_info">
                    <span id="detail_info_text">
                        상품정보제공 고시
                    </span>
                    <div id="detail_info_table">
                    <div id="table_first_line">
                        <div id="table_left1">주최/기획</div>
                        <div id="table_right1">${all.musical_detail_host}</div>
                        <div id="table_left2">소비자상담</div>
                        <div id="table_right2">${all.musical_detail_call}</div>
                    </div>
                    <div id="table_second_line">
                        <div id="table_left1">주연</div>
                        <div id="table_right1">
                          <c:choose>
                                <c:when test="${all.musical_detail_cast == null || ''}">
                                --
                                </c:when>
                                <c:otherwise>
                                ${all.musical_detail_cast}
                                </c:otherwise>
                                </c:choose>
                        </div>
                        <div id="table_left2">관람등급</div>
                        <div id="table_right2">${all.musical_detail_grade}</div>
                    </div>  
                    <div id="table_third_line">
                        <div id="table_left1">공연시간</div>
                        <div id="table_right1">${all.musical_detail_time}</div>
                        <div id="table_left2">공연장소</div>
                        <div id="table_right2">${all.musical_detail_place}</div>
                    </div>
                    <div id="table_fourth_line">
                        <div id="fourth_line_left">취소/환불방법</div>
                        <div id="fourth_line_right">
                            <div id="fourth_line_text1">
                                취소 일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일보다 관람일 기준이 우선 적용되오니 유의해주시기 바랍니다. <br>
                                단, 예매 후 7일 이내라도 취소시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다. <br>
                                (단, 상품에 따라 취소 정책이 달라질 수 있고, 각 공연이 공지하는 취소 정책이 우선 적용되므로, 예매 시 참고하시기 바랍니다.) <br>
                            </div>
                            <div id="fourth_line_table">
                                <div id="fourth_line_table1">
                                    <ul>
                                        <li class="fourth_line_li">취소일</li>
                                        <li class="fourth_line_li">취소수수료</li>
                                    </ul>
                                </div>
                                <div class="fourth_line_table2">
                                    <ul>
                                        <li>예매 후 7일 이내</li>
                                        <li>없음</li>
                                    </ul>
                                </div>
                                <div class="fourth_line_table3">
                                    <ul>
                                        <li>예매 후 8일 ~ 관람일 10일 전까지</li>
                                        <li> <span id="table3_red">
                                            장당 4,000원</span>(단, 티켓 금액의 10% 이내)</li>
                                    </ul>
                                </div>
                                <div class="fourth_line_table4">
                                    <ul>
                                        <li>관람일 9일 전 ~ 관람일 7일 전까지</li>
                                        <li>티켓 금액의 10%</li>
                                    </ul>
                                </div>
                                <div class="fourth_line_table5">
                                    <ul>
                                        <li>관람일 6일 전 ~ 관람일 3일 전까지</li>
                                        <li>티켓 금액의 20%</li>
                                    </ul>
                                </div> 
                                <div class="fourth_line_table6">
                                    <ul>
                                        <li>관람일 2일 전 ~ 취소마감일시까지</li>
                                        <li>티켓 금액의 30%</li>
                                    </ul>
                                </div> 
                            </div>
                            <div id="fourth_line_text2">
                                예매수수료는 예매 당일 밤 12시 이전 취소 시에만 환불되며, 그 이후 기간에는 환불되지 않습니다. <br>
                                취소는 MY공연>예매확인/취소 에서 직접 취소 또는 고객센터(1544-6399)를 통해 취소 가능합니다. <br>
                                티켓이 배송된 후에는 PC/모바일 취소가 불가, 취소마감시간 이전에 예스24 고객센터로 티켓이 반송되어야 취소 가능합니다. <br>
                                (취소수수료는 티켓 도착일 기준으로 부과되며, 배송비는 환불되지 않습니다.) <br>
                                각 상품별로 취소 정책이 다르게 적용될 수 있으니, 각 상품 안내 사항을 확인해주시기 바랍니다. <br>
                            </div>
                        </div>
                    </div>             
                    </div>

                </div>
            </article>
            
        </section>
    </div>
</body>
</html>