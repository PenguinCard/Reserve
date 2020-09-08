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
    <link rel="stylesheet" type="text/css" href="${path}/resources/plugin/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="${path}/resources/plugin/slick/slick-theme.css"/>
    <link rel="stylesheet" href="${path}/resources/css/subpage.css">
    <link rel="stylesheet" href="${path}/resources/css/slciksub.css">
    <title>YES24 티켓</title>
</head>
<body>
    <div class="wrap">
      <%@ include file="/WEB-INF/views/common/sub_headertop.jsp" %>
       <%@ include file="/WEB-INF/views/common/header.jsp" %>
        <section>
            <article id="slide">
                <div id="slideform">
                    <div id="slider-div">
                     	<c:forEach var="slide" items="${slides}" varStatus="status">
							<li class="slideimgform" id="slideimg${status.count }">
							<a href="${path}/musical/MusicalDetail?musical_detail_id=${slide.sub_main_id}&musical_detail_image_id=${slide.sub_main_id}">
								<img src="${path}/resources/img/${slide.sector}/${slide.name}/${slide.imgName}"> 
							 </a>
							</li>
                      </c:forEach>
                    </div>
                </div>
            </article>
            <article id="hot">
                <div class="hottitle">
                    <div class="hottitleimg"></div>
                </div>
                <div class="subthumb">
                    <ul class="thumbposts">
						<c:forEach var="slide" items="${slides}" varStatus="status">
							<li class="subthumb" id="subthumb${status.count}">
								<div class="poster">
								<a href="${path}/musical/MusicalDetail?musical_detail_id=${slide.sub_main_id}&musical_detail_image_id=${slide.sub_main_id}">
								<%-- <a href="${path}/concert/ConcertDetail?con_detail_id=${slide.sub_main_id}"> --%>
									<img src="${path}/resources/img/${slide.sector}/${slide.name}/${slide.imgName}">
				                </a>
								</div>
								<div class="postEx">
									<p class="postname">${slide.title}</p>
									<p class="postplace">${slide.place}</p>
								</div>
							</li>
						</c:forEach>
                    </ul>
                </div>
            </article>
            <article id="ranking">
                <ul>
                    <li>
                        <div class="weeklyRanking">
                            <div class="title">
                                <h2>WEEKLY RANKING</h2>
                                <a href="#">
                                    <img src="../image/subpage/more_button.png" alt="">
                                </a>
                            </div>
                            <ul id="rankingac">
								<c:forEach var="weekly" items="${weeklies}" varStatus="status">
									<li>
										<p class="rank">${status.count}위&nbsp;&nbsp;</p> 
										<img src="${path}/resources/img/sub/${weekly.genre}/${weekly.sector}/${weekly.imgname}">
										<p class="name">${weekly.title}</p>
										<p class="timePlace">
											<br>
											<br>${weekly.t_date}<br>${weekly.place}
										</p>
									</li>
								</c:forEach>
                            </ul>
                        </div>
                    </li>
                    <li class="local">
                        <div id="localbox">
                            <div class="localtitle">
                                <h2>지역별 추천</h2>
                                <a href="#"></a>
                            </div>
                            <ul id="localtryimg">
								<c:forEach var="local" items="${locals}">
									<li>
										<div class="localimgform">
											<img src="${path}/resources/img/sub/${local.genre}/${local.sector}/${local.imgname}">
											<span class="orangept"> ${local.content} </span>
											<div class="dark"></div>
										</div>
										<p class="localimgname">${local.title}</p>
										<p class="localimgpl">${local.place}</p>
									</li>
								</c:forEach>
                            </ul>
                        </div>
                    </li>
                </ul>
            </article>
            <article id="picks">
                <div class="pickstitle">
                    <div class="pickstitleimg"></div>
                </div>
                <div class="picksposts">
                    <ul id="pickstitleimg">
                    	<c:forEach var="pick" items="${picks}">
                    		<li class="picksimg">
                            <div class="imgbox">
                                <img src="${path}/resources/img/sub/${pick.genre}/${pick.sector}/${pick.imgname}" alt="">
                                <div class="dark"></div>
                            </div>
                            <p class="picksname">${pick.title}</p>
                            <p class="pickspl">${pick.place}</p>
                        </li>
                    	</c:forEach>
                    </ul>
                </div>
            </article>
            <article id="footbanner">
                <ul>
                	<c:forEach var="banner" items="${banners}">
                		<li><img src="${path}/resources/img/sub/${banner.genre}/${banner.sector}/${banner.imgname}"/></li>
                	</c:forEach>
                </ul>
            </article>
        </section>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script> -->
    <script type="text/javascript" src="${path}/resources/plugin/slick/slick.min.js"></script>
    <script src="${path}/resources/js/subpage.js"></script>
</body>
</html>