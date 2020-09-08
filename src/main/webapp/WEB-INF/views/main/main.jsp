<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" href="${path}/resources/css/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${path}/resources/js/main.js"></script>
</head>
<body>
    <div class="wrap">
    	<%@ include file="/WEB-INF/views/common/headertop_sub.jsp" %>
    	<%@ include file="/WEB-INF/views/common/index_header.jsp" %>
        <section>
            <article id="mainslide">
                <div class="slideform">
                    <div class="slides">
                    <c:forEach var="slide" items="${slideList}" varStatus="status">
                 		<c:choose>
                 		<c:when test="${status.count==1}">
							<div id="slide${status.count}" class="slide slideactive">
								<div class="slideimg">
									<img src="${path}/resources/img/main/${slide.sub_main_sector}/${slide.sub_main_imagename}">
								</div>
								<div class="plays">
									<p class="playEx">웰메이드 창작 뮤지컬의 신화</p>
									<c:if test="${slide.main_textlist_title!=null || slide.main_textlist_title!=''}">
										<h1 class="title">
											${slide.main_textlist_title}
										</h1>
									</c:if>
									<c:if test="${slide.main_textlist_date!=null || slide.main_textlist_date!=''}">
										<p class="playDate">${slide.main_textlist_date}
									</c:if> 
									<c:if test="${slide.main_textlist_contents!=null || slide.main_textlist_contents!=''}">
										${slide.main_textlist_contents}</p>
									</c:if>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div id="slide${status.count}" class="slide">
								<div class="slideimg">
									<img src="${path}/resources/img/main/${slide.sub_main_sector}/${slide.sub_main_imagename}">
								</div>
								<div class="plays">
									<p class="playEx"></p>
									<c:if test="${slide.main_textlist_title!=null || slide.main_textlist_title!=''}">
										<h1 class="title">
											${slide.main_textlist_title}
										</h1>
									</c:if>
									<c:if test="${slide.main_textlist_date!=null || slide.main_textlist_date!=''}">
										<p class="playDate">${slide.main_textlist_date}
									</c:if> 
									<c:if test="${slide.main_textlist_contents!=null || slide.main_textlist_contents!=''}">
										${slide.main_textlist_contents}</p>
									</c:if>
								</div>
							</div>
						</c:otherwise>
						</c:choose>
					</c:forEach>
                    </div>
                  

                    <div class="slidebtn">
                        <div id="slideprev"></div>
                        <div id="slidenext"></div>
                    </div>

                    <div class="slideThumb">
                        <ul class="slideThumb-list">
							<c:forEach var="thumb" items="${thumbList}" varStatus="status">
								<c:choose>
								<c:when test="${status.count==1 }">
									<li id="slideThumb${status.count}" class="active">
										<img src="${path}/resources/img/main/${thumb.sub_main_sector}/${thumb.sub_main_imagename}"> 
										<a href="#"></a>
										<div class="dark"></div>
									</li>
								</c:when>
								<c:otherwise>	
								<li id="slideThumb${status.count}">
									<img src="${path}/resources/img/main/${thumb.sub_main_sector}/${thumb.sub_main_imagename}"> 
									<a href="#"></a>
									<div class="dark"></div>
								</li>
								</c:otherwise>
								</c:choose>
							</c:forEach>
                        </ul>
                        <div class="dark"></div>
                    </div>
                </div>
            </article>
            <div class="clear"></div>
            <article id="playLists" class="center">
                <div class="thema">
                    <div class="thematitle" id="themaimg1">
                    </div>
                </div>
                <div class="hotPlayList">
                    <div class="hotleft">
                        <div id="postform">
                            <div id="hotleftPost"></div>
                            <div class="hotLeftEx">
                                <p class="hottitle">그랜드 민트 페스티벌 2020</p>
                                <p class="hotinfo">2020.10.24~2020.10.25 올림픽공원 내/ 
                                    <span class="red">1일권 99,000원</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="hotright">
                        <div class="hotRightPost">
                            <ul>
                            	<c:forEach var="hot" items="${hotList1}" varStatus="status">
									<li class="thumbpost">
										<div class="postimgform">
											<div id="postThumbimg${status.count}" class="postThumbimg">
												<img src="${path}/resources/img/${hot.sub_main_sector}/${hot.sub_main_name}/${hot.sub_main_imagename}"
													alt="">
											</div>
											<div class="posthovdark">
												<div class="postdark"></div>
												<div class="postdarkEx">
													<p class="postdarktitle">${hot.main_textlist_title}</p>
													<p id="postdarkplace">
														${hot.main_textlist_date}<br>${hot.main_textlist_place}
													</p>
													<span class="orange">${hot.main_textlist_contents}</span>
												</div>
											</div>
										</div> 
										<span class="sale">50%</span>
									</li>
								</c:forEach>
                            </ul>
                            <ul>
                            	<c:forEach var="hot" items="${hotList2}" varStatus="status">
									<li class="thumbpost">
										<div class="postimgform">
											<div id="postThumbimg${status.count}" class="postThumbimg">
												<img src="${path}/resources/img/${hot.sub_main_sector}/${hot.sub_main_name}/${hot.sub_main_imagename}"
													alt="">
											</div>
											<div class="posthovdark">
												<div class="postdark"></div>
												<div class="postdarkEx">
													<p class="postdarktitle">${hot.main_textlist_title}</p>
													<p id="postdarkplace">
														${hot.main_textlist_date}<br>${hot.main_textlist_place}
													</p>
													<span class="orange">${hot.main_textlist_contents}</span>
												</div>
											</div>
										</div> 
										<span class="sale">50%</span>
									</li>
								</c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
            <div class="clear"></div>
            <article id="eventtab">
                <div class="eventpart">
                    <a href="#"></a>
                </div>
            </article>
            <div class="clear"></div>
            <article id="ranking">
                <ul class="rankingchk">
                    <li>
                        <input type="radio" name="rd" id="rankrd1" checked>
                        <label for="rankrd1">#뮤지컬</label>
                    </li>
                    <li>
                        <input type="radio" name="rd" id="rankrd2">
                        <label for="rankrd2">#콘서트</label>
                    </li>
                    <li>
                        <input type="radio" name="rd" id="rankrd3">
                        <label for="rankrd3">#연극</label>
                    </li>
                    <li>
                        <input type="radio" name="rd" id="rankrd4">
                        <label for="rankrd4">#클래식</label>
                    </li>
                    <li>
                        <input type="radio" name="rd" id="rankrd5">
                        <label for="rankrd5">#전시</label>
                    </li>
                </ul>
                <div class="rankings">
                <ul id="rankposter" class="rankposter rankactive">
					<c:forEach var="rank" items="${rankList}" varStatus="status">
						<li>
							<div class="postrank">
								<div class="postbg">
									<div class="rankpost" id="rankfir">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
									<div class="rankpostimg" id="rankpostimg1">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
								</div>
								<div class="ranknum">
									<span> ${status.count }위 </span>
								</div>
								<div class="rankinfo">
									<p class="ranktitle">${rank.main_textlist_title}</p>
									<p class="rankdate">${rank.main_textlist_date} ${rank.main_textlist_place}</p>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
				<ul id="concertRank" class="rankposter">
                    <c:forEach var="rank" items="${rankList2}" varStatus="status">
						<li>
							<div class="postrank">
								<div class="postbg">
									<div class="rankpost" id="rankfir">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
									<div class="rankpostimg" id="rankpostimg1">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
								</div>
								<div class="ranknum">
									<span> ${status.count }위 </span>
								</div>
								<div class="rankinfo">
									<p class="ranktitle">${rank.main_textlist_title}</p>
									<p class="rankdate">${rank.main_textlist_date} ${rank.main_textlist_place}</p>
								</div>
							</div>
						</li>
					</c:forEach>
                    </ul>
                    <ul id="playRank" class="rankposter">
                        <c:forEach var="rank" items="${rankList3}" varStatus="status">
						<li>
							<div class="postrank">
								<div class="postbg">
									<div class="rankpost" id="rankfir">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
									<div class="rankpostimg" id="rankpostimg1">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
								</div>
								<div class="ranknum">
									<span> ${status.count }위 </span>
								</div>
								<div class="rankinfo">
									<p class="ranktitle">${rank.main_textlist_title}</p>
									<p class="rankdate">${rank.main_textlist_date} ${rank.main_textlist_place}</p>
								</div>
							</div>
						</li>
					</c:forEach>
                    </ul>
                    <ul id="classicRank" class="rankposter">
                        <c:forEach var="rank" items="${rankList4}" varStatus="status">
						<li>
							<div class="postrank">
								<div class="postbg">
									<div class="rankpost" id="rankfir">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
									<div class="rankpostimg" id="rankpostimg1">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
								</div>
								<div class="ranknum">
									<span> ${status.count }위 </span>
								</div>
								<div class="rankinfo">
									<p class="ranktitle">${rank.main_textlist_title}</p>
									<p class="rankdate">${rank.main_textlist_date} ${rank.main_textlist_place}</p>
								</div>
							</div>
						</li>
					</c:forEach>
                    </ul>
                    <ul id="artRank" class="rankposter">
                        <c:forEach var="rank" items="${rankList5}" varStatus="status">
						<li>
							<div class="postrank">
								<div class="postbg">
									<div class="rankpost" id="rankfir">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
									<div class="rankpostimg" id="rankpostimg1">
										<img src="${path}/resources/img/${rank.sub_main_sector}/${rank.sub_main_name}/${rank.sub_main_imagename}" alt="">
									</div>
								</div>
								<div class="ranknum">
									<span> ${status.count }위 </span>
								</div>
								<div class="rankinfo">
									<p class="ranktitle">${rank.main_textlist_title}</p>
									<p class="rankdate">${rank.main_textlist_date} ${rank.main_textlist_place}</p>
								</div>
							</div>
						</li>
					</c:forEach>
                    </ul>
				</div>
            </article>
            <div class="clear"></div>
            <article id="musicplay">
                <div class="thema">
                    <div class="thematitle" id="themaimg"></div>
                </div>
                <div class="musicplayList">
                    <ul>
						<c:forEach var="musicPlay" items="${musicPlayList}"
							varStatus="status">
							<li>
								<div class="mainbotpost" id="mainbotpost${status.count}">
									<img src="${path}/resources/img/${musicPlay.sub_main_sector}/${musicPlay.sub_main_name}/${musicPlay.sub_main_imagename}" alt="">
								</div>
								<p class="mainbotEx">${musicPlay.main_textlist_title}</p>
							</li>
						</c:forEach>
                    </ul>
                </div>
            </article>
            <div class="clear"></div>
            <article id="conclassList">
                <div class="thema">
                    <div class="thematitle" id="themaimg2"></div>
                </div>
                <div class="conclass">
                    <ul>
                    	<c:forEach var="conCla" items="${concertClassicList}" varStatus="status">
							<li>
								<div class="mainbotpost" id="mainbotpost${status.count+6}">
									<img
										src="${path}/resources/img/${conCla.sub_main_sector}/${conCla.sub_main_name}/${conCla.sub_main_imagename}">
								</div>
								<p class="mainbotEx">${conCla.main_textlist_title}</p>
							</li>
						</c:forEach>
                    </ul>
                </div>
            </article>
            <div class="clear"></div>
            <article id="footinfo">
                <ul>
                    <li id="phoninfo">
                        <div class="footphon"></div>
                        <div class="footDate">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="gray">
                                            평일
                                        </td>
                                        <td colspan="2">
                                            09:00~18:00
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="gray">
                                            토요일
                                        </td>
                                        <td>09:00~17:00</td>
                                        <td class="gray">
                                            (일요일및공휴일휴무)
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                    <li id="notice">
                        <ul>
                            <li>
                                <div class="f-icon" id="f-icon1"></div>
                                <p class="bold">공지사항</p>
                            </li>
                            <li>
                                <div class="f-icon" id="f-icon2"></div>
                                <p class="bold">이용안내</p>
                            </li>
                            <li>
                                <div class="f-icon" id="f-icon3"></div>
                                <p class="bold">FAQ</p>
                            </li>
                            <li>
                                <div class="f-icon" id="f-icon4"></div>
                                <p class="bold">티켓판매안내</p>
                            </li>
                        </ul>
                    </li>
                    <li id="footsns">
                        <ul>
                            <li id="footsnsleft">
                                <ul>
                                    <li id="footsnstop">
                                        <ul id="footsnsicon">
                                            <li id="face"></li>
                                            <li id="insta"></li>
                                            <li id="kakao"></li>
                                        </ul>
                                    </li>
                                    <li id="footsnsbot">
                                        <ul class="store">
                                            <li id="googlest"></li>
                                            <li id="applest"></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li id="footsnsright">
                                <div class="footRimginfo">

                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </article>
            <div class="clear"></div>
        </section>
    	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
</body>
</html>