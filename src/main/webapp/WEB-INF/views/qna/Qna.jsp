<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>QNA</title>
<link rel="stylesheet" href="${path}/resources/css/qna.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
/* var cnt = 0;
function fn_addFile(){
	if(cnt==0){
		$(".upload-name").append("<br>"+"<input type='file' name='' >");
	}
	cnt++;
} */

</script>
</head>
<body>

	<div class="wrap">
		<section id="customer">
			<article class="qnaform">
				<table id="mainqna">
					<tr>
						<th class="aside" id="asidetitle">고객센터</th>
						<th id="rightTitle">
							<div class="qnalist">문의하기</div>
							<div class="qnalist">
								<a href="#">문의내역</a>
							</div>
						</th>
					</tr>
					<tr>
						<td class="aside">
							<ul>
								FAQ
								<li><a href="#"> 상품 </a></li>
								<li><a href="#"> 주문/결제/영수증 </a></li>
								<li><a href="#"> 배송 </a></li>
								<li><a href="#"> 취소/교환/반품 </a></li>
								<li><a href="#"> 회원관리 </a></li>
								<li><a href="#"> 회원계정 </a></li>
								<li><a href="#"> 영화 </a></li>
								<li><a href="#"> 공연 </a></li>
								<li><a href="#"> 기타 </a></li>
							</ul>
						</td>
						<td rowspan="8" id="qnamain">
							<ul id="mainnoticeqna">
								<li>&#149; 평일 오후 5시 이후 문의는 당일 답변이 어려울 수 있습니다.</li>
								<li>&#149; 토,일요일 및 공휴일 문의는 평일 운영 시간 내 순차적으로 답변드리겠습니다.</li>
							</ul>
							<table id="select">
								<tr id="selbox1">
									<td><a href="#"> 선택 </a>
										<div class="boxarrow"></div>
										<div class="decobox"></div></td>
								</tr>
								<tr id="selbox2">
									<td>선택</td>
								</tr>
							</table>

							<table id="faqtap">
								<tr>
									<th><span class="red">잠깐!</span> 문의전, 연관 FAQ를 확인해보세요 <span
										class="faqarrow"></span></th>
								</tr>
								<tr class="graybg">
									<td>[로그인] 비밀번호 변경은 어떻게 하나요? <span class="faqarrow"></span>
									</td>
								</tr>
								<tr class="graybg">
									<td>[eBook] 크레마 루나 PC뷰어의 구매목록에서 구매한 eBook이 안나와요 <span
										class="faqarrow"></span>
									</td>
								</tr>
								<tr class="graybg">
									<td>[배송] 주문한 상품은 언제 받을 수 있을까요? <span class="faqarrow"></span>
									</td>
								</tr>
								<tr class="graybg">
									<td>[eBook] YES24 eBook 이용 방법 및 뷰어 다운로드 링크 <span
										class="faqarrow"></span>
									</td>
								</tr>
								<tr class="graybg">
									<td>[YES24 바이백] YES24 바이백 서비스란 무엇인가요? <span
										class="faqarrow"></span>
									</td>
								</tr>
							</table>

							<form action="${path}/qna/Qnawrite.do" id="qnaconts"
								method="post" enctype="multipart/form-data">
								<table id="qnacont">
									<tr>
										<th>문의제목</th>
										<td><input type="text" id="qnamain" name="title">
										</td>
									</tr>
									<tr>
										<th>문의 내용</th>
										<td><textarea name="content" id=""></textarea>
											<ul id="contsnote">
												<li>&#149; 문의 내용을 구체적으로 작성해 주세요. 정확하고 빠른 답변에 도움이 됩니다.</li>
												<li>&#149; 주민등록번호를 포함한 고객님의 소중한 개인정보는 사이트에 노출되지 않으나 <br>
													&nbsp; 꼭 필요한 경우가 아닌 경우 기재를 삼가시길 바랍니다.
												</li>
											</ul></td>
									</tr>
									<tr id="contfile">
										<th>파일첨부</th>
										<td><label for="fileup"> 파일선택 </label>
										<input type="file" id="fileup" name=imagefilename> 
											<!-- <div class="upload-name"
											disabled="disabled"></div> -->
											<ul id="contfilenote">
												<li>&#149; 첨부가능 용량은 파일당 5MB미만이며, 최대 3개까지 가능합니다.</li>
												<li>&#149; 첨부가능 파일 확장자: jpg, gif, bmp, png, hwp, doc,
													ppt, xls, zip, pdf, txt</li>
												<li>&#149; 첨부파일 중 개인 정보가 포함되어있는 파일은 상담 완료 후 즉각 파기하며, 상담
													외의 목적으로는 <br> &nbsp;&nbsp;사용되지 않습니다.
												</li>
											</ul></td>
									</tr>
									<tr id="anseralam">
										<th>답변알림</th>
										<td>
											<div class="mail">
												<input type="text" placeholder="email"> <input
													type="checkbox" id="anserEmail"> <label
													for="anserEmail">이메일로 답변 받기</label>

											</div>
											<div class="cellphon">
												<input type="text" placeholder="010-xxxx-xxxx"> <input
													type="checkbox" id="anserPhon"> <label
													for="anserPhon">답변 시 SMS로 알림 받기</label>

											</div>
										</td>
									</tr>
								</table>

								<div class="finbtn">
									<input type="reset" id="cancle"> <label for="cancle"
										id="resetbtn">취소</label> <input type="submit" id="success"
										action="${path}/qna/QnaList"> <label for="success"
										id="sucbtn">등록</label>
								</div>

							</form>
						</td>
					</tr>
					<tr>
						<td class="aside">
							<ul>
								1:1 문의
								<li><a href="#"> 1:1 문의하기 </a></li>
								<li><a href="#"> 1:1 문의내역 </a></li>
							</ul>
						</td>
					</tr>
					<tr>
						<td class="aside" id="notice">
							<ul>
								<li class="not">공지사항 <span class="arrow"></span> <a
									href="#"></a>
								</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td class="aside">
							<div class="arsinfo">
								<a href="#"> ARS 안내 </a>
							</div>
						</td>
					</tr>
					<tr>
						<td class="aside">
							<div class="phonEx">
								<div class="phontitle">일반문의</div>
								<div class="phonnum">1544-3800</div>
								<div class="phondate">
									평일 09:00 ~ 18:00 <br> 토,일요일 및 공휴일 휴무
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="aside">
							<div class="phonEx">
								<div class="phontitle">영화예매 문의</div>
								<div class="phonnum">1544-7758</div>
								<div class="phondate">
									평일 09:00 ~ 18:00 <br> 토,일,공휴일 10:00 ~ 17:00 <br> 점심시간
									12:00 ~ 13:00
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="aside">
							<div class="phonEx">
								<div class="phontitle">공연예매 문의</div>
								<div class="phonnum">1544-6399</div>
								<div class="phondate">
									평일 09:00 ~ 18:00 <br> 토요일 09:00 ~ 17:00 <br> 점심시간
									12:00 ~ 13:00 <br> 일요일 및 공휴일 휴무
								</div>
							</div>
						</td>
					</tr>
				</table>
			</article>
		</section>

	</div>

</body>
</html>