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
    <title>좌석표</title>
    <link rel="stylesheet" href="${path}/resources/css/seat.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${path}/resources/js/seatres.js"></script>
</head>
<body>
    <div class="seatwrap">
        <div class="seatmain">
            <nav class="seatnav">
                <form action="#">
                    <div class="navleft">
                        <div class="watChange"></div>
                        <select name="seeDate" id="seeday">
                        	<option>
                        		날짜 선택
                        	</option>
                            <option value="selDay1">
                                <c:out value="${sessionScope.day}"/>
                            </option>
                        </select>
                    </div>
                    <div class="navright">
                        <div class="timeChange"></div>
                        <select name="time" id="seltimes">
                            <option value="selnone">
                                회차 선택
                            </option>
                            <option value="sel1">
                                <c:out value="${sessionScope.count}"/>
                            </option>                
                        </select>
                    </div>
                </form>
            </nav>
            <div id="screen">
                screen
            </div>
            <div id="seattable">
               <table>
                   <tbody>
                       <tr class="aSeat">
                           <td class="seatNum">A열</td>
                           <c:forEach var="i" begin="0" end="9">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>                          
                       </tr>
                       <tr class="bSeat">
                           <td class="seatNum">B열</td>
                           <c:forEach var="i" begin="10" end="19">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                       <tr class="cSeat">
                           <td class="seatNum">C열</td>
                           <c:forEach var="i" begin="20" end="29">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                       <tr class="dSeat">
                           <td class="seatNum">D열</td>
                           <c:forEach var="i" begin="30" end="39">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                       <tr class="eSeat">
                           <td class="seatNum">E열</td>
                           <c:forEach var="i" begin="40" end="49">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                       <tr class="fSeat">
                           <td class="seatNum">F열</td>
                           <c:forEach var="i" begin="50" end="59">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                       <tr class="gSeat">
                           <td class="seatNum">G열</td>
                           <c:forEach var="i" begin="60" end="69">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                       <tr class="hSeat">
                           <td class="seatNum">H열</td>
                           <c:forEach var="i" begin="70" end="79">
                         		<c:choose>
                         			<c:when test="${seatList[i].booked=='YES'}">
                         				<td class="${seatList[i].grade}Class notsel"></td>
                         			</c:when>
                         			<c:otherwise>
                         				<td class="${seatList[i].grade}Class"></td>
                         			</c:otherwise>
                         		</c:choose>
                           </c:forEach>      
                       </tr>
                   </tbody>
               </table> 
            </div>

        </div>
        <div class="seatinfo">
            <ul id="minimap">
                <li></li>
                <li></li>
            </ul>

            <div class="seatClasP">
                <div class="seatClastit"></div>
                <div class="seatClasbox">
                    <ul>
                        <li></li>
                        <li>
                            <div class="sClassbox"></div>
                            <p class="seatprice">
                                VIP석 140,000원
                                <span class="blue vipSeat">
                                    (<c:out value="${sessionScope.VIP}"/>석)
                                </span>
                            </p>
                            <div class="vipClassbox"></div>
                            <p class="seatprice">
                                S석 120,000원
                                <span class="blue sSeat">
                                    (<c:out value="${sessionScope.S}"/>석)
                                </span>
                            </p>
                            <div class="rClassbox"></div>
                            <p class="seatprice">
                                R석 80,000원
                                <span class="blue rSeat">
                                    (<c:out value="${sessionScope.R}"/>석)
                                </span>
                            </p>
                        </li>
                        <li></li>
                    </ul>
                </div>
            </div>

            <div class="showSeatNum">
                <div class="showSeattit"></div>
                <div class="showSeatbox">
                    <ul>
                        <li></li>
                        <li>
                            <ul class="showSeatdata">
                            </ul>
                        </li>
                        <li></li>
                    </ul>

                    <div class="clearbtn">
                        <a href="${path}/reservation/date.do" id="prevPage"></a>
                        <a href="#" id="seatclear"></a>
                        <a href="${path}/reservation/discount.do" id="clearnextbtn"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>