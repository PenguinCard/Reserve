<%@page import="com.shop.yes24.concert.DTO.ConcertDetailDTO"%>
<%@page import="com.shop.yes24.musical.DTO.MusicalDetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% HttpSession sess = request.getSession(); %>
<% String genre = (String)sess.getAttribute("genre"); %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예매</title>
    <link rel="stylesheet" href="${path}/resources/css/reser.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${path}/resources/js/reserevent.js"></script>
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
                    <div id="calendar">
                        <h2>
                            <img src="${path}/resources/img/reserved/h2_tit01.gif" alt="">
                            <img src="${path}/resources/img/reserved/icon_nt.gif" alt="">
                        </h2>
                        <div class="selDate">
                            <div class="datecal">
                                <p>2020. 09</p>
                                <div class="btnDate">
                                    <div id="rightbtn">
                                        <a href="#"></a>
                                    </div>
                                    <div id="leftbtn">
                                        <a href="#"></a>
                                    </div>
                                </div>
                            </div>
                            
                            <ul id="calday">
                                <li>
                                    <img src="${path}/resources/img/reserved/day_sun.gif" alt="">
                                </li>
                                <li>
                                    <img src="${path}/resources/img/reserved/day_mon.gif" alt="">
                                </li>
                                <li>
                                    <img src="${path}/resources/img/reserved/day_tue.gif" alt="">
                                </li>
                                <li>
                                    <img src="${path}/resources/img/reserved/day_wed.gif" alt="">
                                </li>
                                <li>
                                    <img src="${path}/resources/img/reserved/day_thu.gif" alt="">
                                </li>
                                <li>
                                    <img src="${path}/resources/img/reserved/day_fri.gif" alt="">
                                </li>
                                <li>
                                    <img src="${path}/resources/img/reserved/day_sat.gif" alt="">
                                </li>
                            </ul>
                            <table class="calinfo">
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td class="tue">1</td>
                                        <td class="web">2</td>
                                        <td class="thu">3</td>
                                        <td class="fri">4</td>
                                        <td class="sat">5</td>
                                    </tr>
                                      <tr>
                                        <td class="sun">6</td>
                                        <td class="mon">7</td>
                                        <td class="tue">8</td>
                                        <td class="web">9</td>
                                        <td class="thu">10</td>
                                        <td class="fri">11</td>
                                        <td class="sat">12</td>
                                    </tr>
                                    <tr>
                                        <td class="sun">13</td>
                                        <td class="mon">14</td>
                                        <td class="tue">15</td>
                                        <td class="web">16</td>
                                        <td class="thu">17</td>
                                        <td class="fri">18</td>
                                        <td class="sat">19</td>
                                    </tr>
                                    <tr>
                                        <td class="sun">20</td>
                                        <td class="mon">21</td>
                                        <td class="tue">22</td>
                                        <td class="web">23</td>
                                        <td class="thu">24</td>
                                        <td class="fri">25</td>
                                        <td class="sat">26</td>
                                    </tr>
                                    <tr>
                                        <td class="sun">27</td>
                                        <td class="mon">28</td>
                                        <td class="tue">29</td>
                                        <td class="web">30</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="reseinfoday">
                                <img src="${path}/resources/img/reserved/img_selday.gif" alt="">
                            </div>
                        </div>
                    </div>
                    <div id="times">
                        <h2>
                            <img src="${path}/resources/img/reserved/h2_tit02.gif" alt="">
                            <img src="${path}/resources/img/reserved/icon_nt.gif" alt="">
                        </h2>
                        <div class="choosbox">
                            <p class="bold" id="chooseday">선택날짜</p>
                            <div id="datebox">
                                
                            </div>
                        </div>
                        
                        <div class="selectseats">
                            <div class="playtime">
                                <p class="bold">회차선택</p>
                                <div class="timebox">
                                    <ul>
                                        <li>
                                            [1회] 14시 00분
                                        </li>
                                        <li>
                                            [2회] 18시 30분
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="playseat">
                                <p class="bold">좌석등급/잔여석</p>
                                <div class="seatbox">
                                    <ul>
                                        <li>
                                            <span class="boldpt">VIP석</span>
                                            140,000원
                                            (잔여:
                                            <span class="red"><c:out value="${sessionScope.VIP}"/>석</span>
                                            )
                                        </li>
                                        <li>
                                            <span class="boldpt">R석</span>
                                            120,000원
                                            (잔여:
                                            <span class="red"><c:out value="${sessionScope.R}"/>석</span>
                                            )
                                        </li>
                                        <li>
                                            <span class="boldpt">S석</span>
                                            80,000원
                                            (잔여:
                                            <span class="red"><c:out value="${sessionScope.S}"/>석</span>
                                            )
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="seatpt">
                            <div id="seatptimg">
                                <a href="#"></a>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="clear"></div>
                <div class="notice">
                    <div class="notbox"></div>
                    <div class="nottext">
                        <ul class="notcont">
                            <li>
                                - 안내되어 있는 잔여석은 결제 진행 중인 좌석을 포함하고 있어 예매 가능 좌석과 다를 수 있습니다.
                            </li>
                            <li>
                                - 할인은 자동선택 되지 않으니, 적용 받고자 하는 할인이 있는 경우 직접 선택해주시기 바랍니다.
                            </li>
                            <li>
                                - 장애인, 국가유공자, 학생 할인 등 증빙서류가 필요한 경우 현장수령만 가능하며, 현장에서 증빙서류 미지참 시 차액 지불하셔야 합니다.
                            </li>
                            <li>
                                - 관람 당일 공연 예매 시에는 변경/취소/환불이 불가합니다.
                            </li>
                            <li>
                                - 경우에 따라 ATM 기기에서 가상계좌 입금이 안 될 수 있으니 가급적 인터넷/폰뱅킹 등을 이용해주시기 바랍니다.
                            </li>
                            <li>
                                - 예매 취소 시 예매수수료는 예매 당일 밤 12시 이전까지 환불되며, 그 이후 기간에는 환불되지 않습니다.
                            </li>
                            <li>
                                - 예매 취소 시점에 따라 취소수수료가 부과될 수 있습니다. 예매 후 취소마감시간과 함께 취소수수료를 꼭 확인해주시기 바랍니다.

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
                            <p class="tickinfo" id="t_date">0000.00.00(?)</p>
                        </li>
                        <li>
                            <div id="tickettime"></div>
                            <p class="tickinfo" id="t_count">[0회] 00시 00분</p>
                        </li>
                        <li>
                            <div id="ticketcnt"></div>
                            <p class="tickinfo">0</p>
                        </li>
                        <li>
                            <div id="ticketseat"></div>
                            <p class="tickinfo">좌석 지정 회차입니다.</p>
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
                            <p class="tickinfo">0</p>
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
                            <p class="tickinfo">0</p>
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
                            <p class="paycnt">0</p>
                            <p>원</p>
                        </h3>
                    </li>
                    <li>
                        <a href="${path}/reservation/seat.do" id="nextstepbtn"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
      <script>
    	$(document).ready(function(){
    		var alldays = $('.sun, .mon, .tue, .web, .thu, .fri, .sat');
    		alldays.on('click',function(index){
    			var index = alldays.index(this);
    			var asdf={
    	                r_days: index+1 //컨트롤러에 보내는 값(키,값) 즉  jason 형식
    	        }    	        
    	        $.ajax({
    	            url: "datechk",
    	            type: "POST",
    	            data: JSON.stringify(asdf), 
    	            contentType: "application/json; charset=utf-8;",
    	            dataType: "json",
    	            success: function(data){
    	            	$("#datebox").text("2020.9."+data.days);
    	            	$("#t_date").text("2020.9."+data.days);
    	            }
    	        });
    		});
    		
    		$('.timebox > ul > li').click(function(){
    			var index=$('.timebox > ul > li').index(this);
    			var asdf={
    	                r_count: index+1 //컨트롤러에 보내는 값(키,값) 즉  jason 형식
    	        }    	        
    	        $.ajax({
    	            url: "countchk",
    	            type: "POST",
    	            data: JSON.stringify(asdf), 
    	            contentType: "application/json; charset=utf-8;",
    	            dataType: "json",
    	            success: function(data){
    	            	if(data.count==1){
    	            		$("#t_count").text("[1회] 14시 00분");
    	            	} else if(data.count==2){
    	            		$("#t_count").text("[2회] 18시 30분");
    	            	} 	            	
    	            }
    	        });
    		});
    	});
    </script>
</body>
</html>