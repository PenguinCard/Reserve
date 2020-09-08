<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${path}/resources/css/mypage.css">
<title>mypage</title>
</head>
<body>
	<div class="wrap">
		<section>
		<form action="${path}/mypage/modify.do" method="post">
			<table id="toptable">
				<tr>
					<td id="left">
						<div class="infonote">
							<h3>
								내 정보를 <span class="blue"> 최신 정보로 관리 </span> 해주세요
							</h3>
							<p class="gray">아이디/비밀번호 분실 및 보호조치 해제를 위해 최신 정보로 내 정보를 관리하세요
							</p>
						</div>
						
							<table class="subtable">
								<tbody>
									<tr class="line">
										<th>
											<p>아이디</p>
										</th>
										<td class="bold">
											<p>YES24아이디</p>
										</td>
										<td class="bluefont">${id}</td>
									</tr>

									<tr>
										<th>
											<p>닉네임/연락처</p>
										</th>
										<td class="bold">
											<p>닉네임</p>
										</td>
										<td class="bluefont">XXX <!-- <button class="space">변경</button> -->
										</td>
									</tr>
									<tr>
										<th></th>
										<td class="bold">연락처</td>
										<td class="bluefont">
											<!-- <p>
                                        +82 10-1234-567
                                    </p> -->
											<div class="phone">
												<div id="phone_1">
													<input type="text" size="2"  
													
														 class="phone_txt"
														name="mem_phone1">
												</div>
												<input type="text" size="2" id="phone_2" name="mem_phone2">
												<input type="text" size="2" id="phone_3" name="mem_phone3">

												<!-- <input class="space button" type="submit" value="변경"> -->
											</div>
											
										</td>
									</tr>
									<tr>
										<th></th>
										<td></td>
										<td class="bluefont"><input type="text" id="email_1"
											name="mem_email1" size="7"></input> <span id="email_1_at">@</span>
											<select id="email_2" name="mem_email2">
												<option>naver.com</option>
												<option>hanmail.net</option>
												<option>yahoo.co.kr</option>
												<option>hotmail.com</option>
												<option>nate.com</option>
												<option>gmail.com</option>
										</select> <!-- <button class="space">변경</button> --></td>
									</tr>
									<tr class="line" class="bluefont">
										<th></th>
										<td></td>
										<td class="gray">
											<p>연락처 1개는 필수 항목입니다.</p>
										</td>
									</tr>
									<tr>
										<th>
											<p>이름/연령확인</p>
										</th>
										<td class="bold">
											<p>이름</p>

										</td>
										<td class="bluefont"><input type="text" id="namebox"
											size="6" name="mem_name">
											<div class="rename">

												<!-- <p>개명</p>
                                        <span>?</span> -->
											</div></td>
									</tr>
									<tr class="line">
										<th></th>
										<td class="bold">
											<p>실명확인 정보</p>
										</td>
										<td class="bluefont">
											<p>실명확인 완료</p>
										</td>
									</tr>
									<tr>
										<th>
											<p>알림설정</p>
										</th>
										<td class="bold">
											<p>소식/광고 알림</p>
										</td>
										<td class="gray">
											<p>수신안함</p> <!-- <button class="bluebtn">수정</button> -->
										</td>
									</tr>
									<tr>
										<th></th>
										<td class="bold">
											<p>비밀번호 변경알림</p>
										</td>
										<td class="gray">
											<p>수신안함</p>
										</td>
									</tr>
								</tbody>
							</table>
					</td>
					<td id="right">
						<div class="useinfo">
							<h3>개인정보 이용 현황</h3>
								<div class="arrow"><p class="more"><a href="#">더보기</a></p></div>
							<p class="gray">서비스 이용 시 동의한 개인정보 내역을 확인할 수 있습니다.</p>
						</div> <input type="submit" class="submit" value="개인정보 수정" width="15"
						height="15">
					</td>
				</tr>
			</table>
			</form>
		</section>
	</div>
</body>
</html>