<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="lastIndex" value="${fn:length(list)}"/>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyTicket</title>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/myticket.css">
</head>
<header>
    
</header>
<body>
    <form name="mainForm" method="POST" action="./" id="mainform">
    
    <div class="wrap">
       
        <div class="container">
            
            <div class="lnb">
                
                <div class="mypage">
                    <h2>
                    <a href="#"><img src="${path}/resources/img/myticket/lnb_mypage.gif"></a>
                    </h2>
                    <div class="infor">
                        <span class="grade">
                            <b>${name}</b>
                            님은 
                            <b>일반회원</b>
                            입니다.
                        </span>
                        <ul class="type1">
                            <li>YES포인트 : <span class="blue">0원</span> <a href="#"><img class="infobtn" src="${path}/resources/img/myticket/btn_infor.gif" alt="안내"></a></li>
                            <li>YES머니 : 0원</li>
                            <li>YES상품권 : 0원</li>
                            <li>예치금 : 0원</li>
                        </ul>
                        <div class="btn">
                            <div class="tc">
                                <a href="#" title="마니아안내">
                                    <img src="${path}/resources/img/myticket/btn_yinfor.gif" alt="마니아안내">
                                </a>
                                <a href="#"><img src="${path}/resources/img/myticket/btn_mcorrent.gif" alt="회원정보수정">
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="my_lmenu">
                    <ul>
                        <li><a href="#"><img src="${path}/resources/img/myticket/lmenu_01.gif" alt="예매확인/취소"></a></li>
                        <li><a href="#"><img src="${path}/resources/img/myticket/lmenu_02.gif" alt="할인쿠폰/예매권"></a></li>
                        <li><a href="#"><img src="${path}/resources/img/myticket/lmenu_03.gif" alt="나의관심공연"></a></li>
                        <li><a href="#"><img src="${path}/resources/img/myticket/lmenu_04.gif" alt="나의관람공연"></a></li>
                        <li><a href="#"><img src="${path}/resources/img/myticket/lmenu_05.gif" alt="나의맞춤설정"></a></li>
                    </ul>
                </div>
                <div class="alignment">
                    <h3>
                        <img src="${path}/resources/img/myticket/h3_tit01.gif" alt="맞춤별예매">
                    </h3>
                    <p class="more">
                        <a href="#"><img src="${path}/resources/img/myticket/btn_more (1).gif" alt="더보기"> 
                        </a>
                    </p>
                    <h4>지역별 예매</h4>
                    <p class="txt">
                        <a href="#">
                            서울/경기/인천
                        </a>|<a href="#">충청/강원권</a>|
                        <br>
                        <a href="#">경상권</a>|<a href="#">
                            전라/제주권
                        </a>
                    </p>
                    <h4>공연장별 예매</h4>
                    <ul class="list_theater">
                        <li class="sec"><a href="#" title="세종문화회관">세종문화회관</a></li><br>
                        <li><a href="#" title="롯데콘서트홀">롯데콘서트홀</a></li><br>
                        <li class="sec"><a href="#" title="예술의전당">예술의전당</a></li><br>
                        <li><a href="#" title="예스24스테이지">예스24스테이지</a></li><br>
                        <li class="sec"><a href="#" title="예스24라이브홀">예스24라이브홀</a></li><br>
                        <li><a href="#" title="노들섬라이브하우스">노들섬라이브하우스</a></li>
                    </ul>
                    <h4 class="calorder">날짜별 예매&nbsp;&nbsp;
                    <a href="#"><img class="cal" src="${path}/resources/img/myticket/btn_calren.gif" alt="달력보기"></a>
                    </h4>
                </div>
                <div>
                    <div class="customerCenter">
                        <p class="title">
                           <strong>고객센터 전화상담</strong> 
                        </p>
                        <div class="telNum">
                            <span>
                                <img src="${path}/resources/img/myticket/txt_telnum.gif" alt="고객센터 전화">
                            </span>
                            <ul>
                                <li>평일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;09:00 ~ 18:00</li>
                                <li>토요일&nbsp;&nbsp;&nbsp;09:00 ~ 17:00</li>
                                <li>일요일 공휴일 휴무</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="clear"></div>
            <div class="mypage_contain">
                

                <div class="clear"></div>

                <div class="blue_box">
                    <h2>
                        <img class="coupon" src="${path}/resources/img/myticket/h2_mtit01.gif">
                    </h2>
                    <ul>
                        <li>
                            공연할인쿠폰 : <span>사용가능 0매</span>
                            <a href="#"><img class="boxmore" src="${path}/resources/img/myticket/btn_more (1).gif"></a>
                        </li>
                        <li>
                            공연예매권 : <span>사용가능 0매</span>
                            <a href="#"><img class="boxmore" src="${path}/resources/img/myticket/btn_more (1).gif"></a>
                        </li>
                    </ul>
                </div>
                
                <div class="blue_boxfr">
                    <h2>
                        <img class="event" src="${path}/resources/img/myticket/h2_mtit02.gif" alt="이벤트">
                        <span>현재 진행중인 이벤트 11건</span>
                        <a href="#" target="_blank" title="이벤트더보기">
                            <img class="boxmore" src="${path}/resources/img/myticket/btn_bmore.gif" alt="더보기">
                        </a>
                    </h2>
                    <ul>
                        <li><a href="#" target="_blank">
                            뮤지컬 <더 모먼트> 관람후기 이벤트
                        </a></li>
                        <li><a href="#" target="_blank">
                            TWICE Beyoung LIVE
                        </a></li>
                    </ul>
                </div>
               
                
                <div class="mycont">
                    <h2 class="tit">
                        <img src="${path}/resources/img/myticket/h2_mtit03.gif" alt="최근예매내역">
                        <span>${name}님께서 최근 3개월간 예매하신 내역입니다.</span>
                        <a href="#"><img src="${path}/resources/img/myticket/btn_more (2).gif" alt="더보기"></a>
                    </h2>
                    <div class= "divOrderList">
                        <table class="tmypage" summary="최근예매내역리스트">
                            <colgroup>
                            <col width="13%">
                            <col width="13%">
                            <col width="*">
                            <col width="18%">
                            <col width="10%">
                            <col width="15%">
                            <thead>
                                <tr>
                                    <th scope="row" class="fst">예매일</th>
                                    <th scope="row">예매번호</th>
                                    <th scope="row">공연명</th>
                                    <th scope="row">관람일시</th>
                                    <th scope="row">매수</th>
                                    <th scope="row" class="end">예매상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                	<c:when test="${list==null}">
                                	<tr>
                                		<td colspan="6" class="le ri">
                                			최근 예매내역이 없습니다.
                                		</td>
                                	</tr>
                                	</c:when>
                                	<c:otherwise>
                                		<%-- <c:forEach var="data" items="${list}"> --%>
                                		<tr>
                                			<th scope="row" class="fst">${list[lastIndex-1].bookdate}</th>
                                			<th scope="row">${list[lastIndex-1].bookno}</th>
                                			<th scope="row">${list[lastIndex-1].title}</th>
                                			<th scope="row">${list[lastIndex-1].showdate}</th>
                                			<th scope="row">${list[lastIndex-1].cnt}</th>
                                			<th scope="row" class="end">${list[lastIndex-1].state}</th>
                                		</tr>
                                		<%-- </c:forEach> --%>
                                	</c:otherwise>
                                </c:choose>                                        
                            </tbody>
                            </colgroup>
                        </table>
                    </div>
                </div>
                <div class="mycont2">
                    <h2 class="tit">
                        <img src="${path}/resources/img/myticket/h2_mtit13.gif" alt="포인트적립내역">
                        <span>공연 예매로 인해 적립된 YES포인트 내역입니다. 더 자세한 내역 보기를 
                            원하시면 <a href="#" class="alink" target="_blank">마이페이지</a>
                            를 확인해주세요
                        </span>
                    <div class="point">
                        <ul>
                        <li class="bgn ov">
                            <a href="#" usestate="0">전체보기</a>
                            <img src="${path}/resources/img/myticket/icon_dot04.gif" alt="전체보기"></li>
                            <li><a href="#" usestate="1">적립완료</a>
                            <img src="${path}/resources/img/myticket/icon_dot04.gif>" alt="적립완료" style="display: none;visibility: hidden;"></style></li>
                            <li><a href="#" usestate="2">적립예정</a>
                                <img src="${path}/resources/img/myticket/icon_dot04.gif>" alt="적립예정" style="display: none;visibility: hidden;"></style></li>
                            <li></li>
                        </ul>

                    </div>
                    <div id="divMyYesPointList">
                        <table class="tmypage2" summary="YES포인트 리스트">
                            <colgroup>
                            <col width="43%" align="left">
                            <col width="15%">
                            <col width="15%">
                            <col width="15%">
                            <col width="12%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="row" class="fst">공연명(예매번호)</th>
                                    <th scope="row">적립일</th>
                                    <th scope="row">YES포인트
                                        <img src="${path}/resources/img/myticket/ic_p.gif" alt="YES포인트">
                                    </th>
                                    <th scope="row">적립상태</th>
                                    <th scope="row" class="end">적립유형</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td colspan="5" class="le ri">공연 예매로 인한 YES포인트 적립내역이 존재하지 않습니다.</td>
                                </tr>
                            </tbody>
                            <tbody></tbody>
                        </table>
                    </div>
                    <p class="point_txt">* YES포인트는 공연 관람일 혹은 후기 작성일 익일에 지급됩니다.</p>
                </div>

                <div class="mycont3">
                    <div class="myInterestPerInfo">
                        <h2 class="tit">
                            <img src="${path}/resources/img/myticket/h2_mtit04.gif" alt="나의관심공연">
                            <span>
                                나의 관심 공연이 0개 있습니다.
                            </span>
                            <a href="#"><img src="${path}/resources/img/myticket/btn_more (2).gif" alt="더보기"></a>
                        </h2>
                        <ul id="ulInterestPerList" class="my_list01">
                            <li class="nocont">
                                <span>나의 관심공연으로 담은 공연이 없습니다.</span>
                                <a id="btnPerAdd" href="#">
                                    <img src="${path}/resources/img/myticket/btn_basket.gif" alt="관심공연담기">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="mycont4">
                    <h2 class="tit">
                        <img src="${path}/resources/img/myticket/h2_mtit15.gif" alt="나의 관람공연">
                        <a href="#"><img src="${path}/resources/img/myticket/btn_more (2).gif" alt="더보기"></a>
                    </h2>
                    <ul class="my_list01 watch">
                        <li class="nocont">
                            <span>나의 관람 공연이 없습니다.</span>
                        </li>
                    </ul>
                </div>

                <div class="mycont5">
                   <h2 class="tit">
                       <img src="${path}/resources/img/myticket/h2_mtit05.gif" alt="나의맞춤알람소식">
                       <span>최근 1주일간 업데이트된 맟춤 알람 소식입니다.</span>
                       <a href="#" class="btn">
                           <img src="${path}/resources/img/myticket/btn_myalram.gif" alt="나의맞춤정보확인">
                       </a>
                   </h2>
                   <table class="table_blue">
                    <colgroup>
                    <col width="16%">
                    <col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>맞춤알람 공연</th>
                            <td>최근 업데이트 소식이 없습니다.</td>
                        </tr>
                        <tr>
                            <th>티켓오픈 알람</th>
                            <td>최근 업데이트 소식이 없습니다.</td>
                        </tr>
                        
                    </tbody>
                   </table>
                </div>
            </div>
        </div>
    </div>
</form>


</body>
</html>