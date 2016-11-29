<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT 상세페이지</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css"
	rel="stylesheet" type="text/css">
<link href="http://www.tworld.co.kr/poc/inc/css/purchase.css"
	rel="stylesheet" type="text/css">
<link href="http://www.tworld.co.kr/poc/inc/css/product.css"
	rel="stylesheet" type="text/css">

<link href="http://www.tworld.co.kr/poc/gnb/inc/css/gnb.css"
	rel="stylesheet" type="text/css">


<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/lib/jquery.min.js"></script>
<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/lib/libs.js"></script>
<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/common/common.js"></script>
<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/common/productUtil.js"></script>
<!-- select box 관련 -->
<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/lib/jquery.mousewheel.js"></script>
<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/lib/jquery.jscrollpane.min.js"></script>
<script type="text/javascript"
	src="http://www.tworld.co.kr/poc/inc/js/lib/wddo.selectbox-1.5.4.js"></script>
<script type="text/javascript">


</script>
<script type="text/javascript">

	$(document).ready(function() {
		$('a[id=51]').click(function() {
			$('#limited99').hide();
			$('#limited77').hide();
			$('#limited67').hide();
			$('#limited61').hide();
			$('#limited51').show();
		});
		
		$('a[id=61]').click(function() {
			$('#limited99').hide();
			$('#limited77').hide();
			$('#limited67').hide();
			$('#limited61').show();
			$('#limited51').hide();
		});
		
		$('a[id=67]').click(function() {
			$('#limited99').hide();
			$('#limited77').hide();
			$('#limited67').show();
			$('#limited61').hide();
			$('#limited51').hide();
		});
		
		$('a[id=77]').click(function() {
			$('#limited99').hide();
			$('#limited77').show();
			$('#limited67').hide();
			$('#limited61').hide();
			$('#limited51').hide();
		});
		
		$('a[id=99]').click(function() {
			$('#limited99').show();
			$('#limited77').hide();
			$('#limited67').hide();
			$('#limited61').hide();
			$('#limited51').hide();
		});
		
		
	});
</script>
<style type="text/css">
div{
	font-family: Comic Sans MS;
}
</style>


</head>
<body>

	<div id="container">
		<!-- 수정 2016.04.19 : class="product" 삭제 -->
		<!-- content -->
		<div id="content">
			<!-- 기본정보 -->
			<!-- 2016.06.23 수정 -->
			<!-- limited99 -->
			<div class="prCont basicArea" id="limited99">
			<c:forEach items="${limited99}" var="limited99">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${limited99.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/limited99.png"
								alt="순 완전무한 99(LTE)">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${limited99.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${limited99.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${limited99.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${limited99.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">실시간 방송부터 음악. 영화할인까지<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${limited99.fixed_month }</em><span>원</span>
							</p>
					</dl>
					<br>
					<div id="divTabContent">
						<!-- 탭 제목 -->
						<div class="prContTab">
							<div class="inner"></div>

						</div>
						<!-- 탭 내용 -->
						<div class="prTabCon pr_band100"></div>
					</div>
				</div>
				</c:forEach>
				
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">순 완전무한 한눈에 보기</em> <strong>집 / 이동전화부터 데이터까지 완전 무제한</strong>
							</h3>
							<p class="prCopy">올레 tv 모바일팩, 링투유, 개치콜 등 최대 6가지 혜택을 제공하는 알짜팩을 누려보세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#limited51"
										id="51"><strong>순 완전무한<br>(51)
										</strong><span class="dLine"><em>5GB<br>
											</em>남은데이터 이월</span></a></li>
									<li class="balloon4"><a href="#limited61"
										id="61"><strong>순 완전무한<br>(61)
										</strong><span class="dLine"><em>10GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#limited67"
										id="67"><strong>순 완전무한<br>(67)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#limited77"
										id="77"><strong>순 완전무한<br>(77)
										</strong><span><em>17GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1 on"><a href="#limited99"
										id="99"><strong>순 완전무한<br>(99)
										</strong><span><em>25GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<!--두줄이상일때  class="dLine" 추가-->
								</ul>
								<div class="clearfix">
									<!-- clear both -->
								</div>
							</div>
						</div>
						<div class="brandTable" id="fareViewType2_1">

							<h4 class="hidden">표로 보기</h4>
							<div class="tableType1">
								<table border="1">
									<caption>band data, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="20%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${limited}" var="limited">
											<tr>
												<th scope="row" class="left "><span>${limited.payment}
														></span></th>
												<td>${limited.fixed_month}원</td>
												<td>${limited.call }</td>
												<td>${limited.sms }</td>
												<td>${limited.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br><b style="color: red;font-size: 15px;"> * 순 완전무한 51은 이용 불가</b></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="10%">
										<col width="10%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품명</th>
											<th scope="col">이용요금</th>
											<th scope="col">제공혜택</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row" rowspan="4"><span>알짜팩<br></span></th>
											<td rowspan="4">8800원</td>
											<td>영상 서비스</td>
											<td>올레 tv 모바일팩<br>(실사간 TV채널 및 VOD + 전용)</td>
										</tr>
										<tr>
											<th>음악 부가서비스</th>
											<th>링투유<br>(모바일 통화연결음)</th>
										</tr>									
										<tr>
											<th>통화 부가서비스</th>
											<th>캐치콜<br>(받지못한 통화를 SMS로 알려주는 상품)</th>
										</tr>									
										<tr>
											<th>영화 할인쿠폰</th>
											<th>매월 2장<br>(1장당 2000원 할인)</th>
										</tr>									
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- limited99 -->
			
			<!-- limited77 -->
			<div class="prCont basicArea" id="limited77">
			<c:forEach items="${limited77}" var="limited77">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${limited77.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/limited77.png"
								alt="순 완전무한 77(LTE)">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${limited77.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${limited77.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${limited77.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${limited77.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">실시간 방송부터 음악. 영화할인까지<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${limited77.fixed_month }</em><span>원</span>
							</p>
					</dl>
					<br>
					<div id="divTabContent">
						<!-- 탭 제목 -->
						<div class="prContTab">
							<div class="inner"></div>

						</div>
						<!-- 탭 내용 -->
						<div class="prTabCon pr_band100"></div>
					</div>
				</div>
				</c:forEach>
				
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">순 완전무한 한눈에 보기</em> <strong>집 / 이동전화부터 데이터까지 완전 무제한</strong>
							</h3>
							<p class="prCopy">올레 tv 모바일팩, 링투유, 개치콜 등 최대 6가지 혜택을 제공하는 알짜팩을 누려보세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#limited51"
										id="51"><strong>순 완전무한<br>(51)
										</strong><span class="dLine"><em>5GB<br>
											</em>남은데이터 이월</span></a></li>
									<li class="balloon4"><a href="#limited61"
										id="61"><strong>순 완전무한<br>(61)
										</strong><span class="dLine"><em>10GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#limited67"
										id="67"><strong>순 완전무한<br>(67)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2 on"><a href="#limited77"
										id="77"><strong>순 완전무한<br>(77)
										</strong><span><em>17GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#limited99"
										id="99"><strong>순 완전무한<br>(99)
										</strong><span><em>25GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<!--두줄이상일때  class="dLine" 추가-->
								</ul>
								<div class="clearfix">
									<!-- clear both -->
								</div>
							</div>
						</div>
						<div class="brandTable" id="fareViewType2_1">

							<h4 class="hidden">표로 보기</h4>
							<div class="tableType1">
								<table border="1">
									<caption>band data, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="20%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${limited}" var="limited">
											<tr>
												<th scope="row" class="left "><span>${limited.payment}
														></span></th>
												<td>${limited.fixed_month}원</td>
												<td>${limited.call }</td>
												<td>${limited.sms }</td>
												<td>${limited.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br><b style="color: red;font-size: 15px;"> * 순 완전무한 51은 이용 불가</b></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="10%">
										<col width="10%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품명</th>
											<th scope="col">이용요금</th>
											<th scope="col">제공혜택</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row" rowspan="4"><span>알짜팩</span></th>
											<td rowspan="4">8800원</td>
											<td>영상 서비스</td>
											<td>올레 tv 모바일팩<br>(실사간 TV채널 및 VOD + 전용)</td>
										</tr>
										<tr>
											<th>음악 부가서비스</th>
											<th>링투유<br>(모바일 통화연결음)</th>
										</tr>									
										<tr>
											<th>통화 부가서비스</th>
											<th>캐치콜<br>(받지못한 통화를 SMS로 알려주는 상품)</th>
										</tr>									
										<tr>
											<th>영화 할인쿠폰</th>
											<th>매월 2장<br>(1장당 2000원 할인)</th>
										</tr>									
									</tbody>
								</table>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- limited77 -->
		
			
			<!-- limited67 -->
			<div class="prCont basicArea" id="limited67">
			<c:forEach items="${limited67}" var="limited67">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${limited67.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/limited67.png"
								alt="순 완전무한 67(LTE)">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${limited67.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${limited67.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${limited67.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${limited67.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">실시간 방송부터 음악. 영화할인까지<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${limited67.fixed_month }</em><span>원</span>
							</p>
					</dl>
					<br>
					<div id="divTabContent">
						<!-- 탭 제목 -->
						<div class="prContTab">
							<div class="inner"></div>

						</div>
						<!-- 탭 내용 -->
						<div class="prTabCon pr_band100"></div>
					</div>
				</div>
				</c:forEach>
				
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">순 완전무한 한눈에 보기</em> <strong>집 / 이동전화부터 데이터까지 완전 무제한</strong>
							</h3>
							<p class="prCopy">올레 tv 모바일팩, 링투유, 개치콜 등 최대 6가지 혜택을 제공하는 알짜팩을 누려보세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#limited51"
										id="51"><strong>순 완전무한<br>(51)
										</strong><span class="dLine"><em>5GB<br>
											</em>남은데이터 이월</span></a></li>
									<li class="balloon4"><a href="#limited61"
										id="61"><strong>순 완전무한<br>(61)
										</strong><span class="dLine"><em>10GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon3 on"><a href="#limited67"
										id="67"><strong>순 완전무한<br>(67)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#limited77"
										id="77"><strong>순 완전무한<br>(77)
										</strong><span><em>17GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#limited99"
										id="99"><strong>순 완전무한<br>(99)
										</strong><span><em>25GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<!--두줄이상일때  class="dLine" 추가-->
								</ul>
								<div class="clearfix">
									<!-- clear both -->
								</div>
							</div>
						</div>
						<div class="brandTable" id="fareViewType2_1">

							<h4 class="hidden">표로 보기</h4>
							<div class="tableType1">
								<table border="1">
									<caption>band data, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="20%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${limited}" var="limited">
											<tr>
												<th scope="row" class="left "><span>${limited.payment}
														></span></th>
												<td>${limited.fixed_month}원</td>
												<td>${limited.call }</td>
												<td>${limited.sms }</td>
												<td>${limited.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br><b style="color: red;font-size: 15px;"> * 순 완전무한 51은 이용 불가</b></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="10%">
										<col width="10%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품명</th>
											<th scope="col">이용요금</th>
											<th scope="col">제공혜택</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row" rowspan="4"><span>알짜팩</span></th>
											<td rowspan="4">8800원</td>
											<td>영상 서비스</td>
											<td>올레 tv 모바일팩<br>(실사간 TV채널 및 VOD + 전용)</td>
										</tr>
										<tr>
											<th>음악 부가서비스</th>
											<th>링투유<br>(모바일 통화연결음)</th>
										</tr>									
										<tr>
											<th>통화 부가서비스</th>
											<th>캐치콜<br>(받지못한 통화를 SMS로 알려주는 상품)</th>
										</tr>									
										<tr>
											<th>영화 할인쿠폰</th>
											<th>매월 2장<br>(1장당 2000원 할인)</th>
										</tr>									
									</tbody>
								</table>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- limited67 -->
			
			
			<!-- limited61 -->
			<div class="prCont basicArea" id="limited61">
			<c:forEach items="${limited61}" var="limited61">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${limited61.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/limited61.png"
								alt="순 완전무한 61(LTE)">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${limited61.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${limited61.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${limited61.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${limited61.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">실시간 방송부터 음악. 영화할인까지<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${limited61.fixed_month }</em><span>원</span>
							</p>
					</dl>
					<br>
					<div id="divTabContent">
						<!-- 탭 제목 -->
						<div class="prContTab">
							<div class="inner"></div>

						</div>
						<!-- 탭 내용 -->
						<div class="prTabCon pr_band100"></div>
					</div>
				</div>
				</c:forEach>
				
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">순 완전무한 한눈에 보기</em> <strong>집 / 이동전화부터 데이터까지 완전 무제한</strong>
							</h3>
							<p class="prCopy">올레 tv 모바일팩, 링투유, 개치콜 등 최대 6가지 혜택을 제공하는 알짜팩을 누려보세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#limited51"
										id="51"><strong>순 완전무한<br>(51)
										</strong><span class="dLine"><em>5GB<br>
											</em>남은데이터 이월</span></a></li>
									<li class="balloon4 on"><a href="#limited61"
										id="61"><strong>순 완전무한<br>(61)
										</strong><span class="dLine"><em>10GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#limited67"
										id="67"><strong>순 완전무한<br>(67)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#limited77"
										id="77"><strong>순 완전무한<br>(77)
										</strong><span><em>17GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#limited99"
										id="99"><strong>순 완전무한<br>(99)
										</strong><span><em>25GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<!--두줄이상일때  class="dLine" 추가-->
								</ul>
								<div class="clearfix">
									<!-- clear both -->
								</div>
							</div>
						</div>
						<div class="brandTable" id="fareViewType2_1">

							<h4 class="hidden">표로 보기</h4>
							<div class="tableType1">
								<table border="1">
									<caption>band data, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="20%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${limited}" var="limited">
											<tr>
												<th scope="row" class="left "><span>${limited.payment}
														></span></th>
												<td>${limited.fixed_month}원</td>
												<td>${limited.call }</td>
												<td>${limited.sms }</td>
												<td>${limited.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br><b style="color: red;font-size: 15px;"> * 순 완전무한 51은 이용 불가</b></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="10%">
										<col width="10%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품명</th>
											<th scope="col">이용요금</th>
											<th scope="col">제공혜택</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row" rowspan="4"><span>알짜팩</span></th>
											<td rowspan="4">8800원</td>
											<td>영상 서비스</td>
											<td>올레 tv 모바일팩<br>(실사간 TV채널 및 VOD + 전용)</td>
										</tr>
										<tr>
											<th>음악 부가서비스</th>
											<th>링투유<br>(모바일 통화연결음)</th>
										</tr>									
										<tr>
											<th>통화 부가서비스</th>
											<th>캐치콜<br>(받지못한 통화를 SMS로 알려주는 상품)</th>
										</tr>									
										<tr>
											<th>영화 할인쿠폰</th>
											<th>매월 2장<br>(1장당 2000원 할인)</th>
										</tr>									
									</tbody>
								</table>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- limited61 -->
			
			<!-- limited51 -->
			<div class="prCont basicArea" id="limited51">
			<c:forEach items="${limited51}" var="limited51">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${limited51.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/limited51.png"
								alt="순 완전무한 51(LTE)">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${limited51.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${limited51.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${limited51.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${limited51.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">실시간 방송부터 음악. 영화할인까지<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${limited51.fixed_month }</em><span>원</span>
							</p>
					</dl>
					<br>
					<div id="divTabContent">
						<!-- 탭 제목 -->
						<div class="prContTab">
							<div class="inner"></div>

						</div>
						<!-- 탭 내용 -->
						<div class="prTabCon pr_band100"></div>
					</div>
				</div>
				</c:forEach>
				
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">순 완전무한 한눈에 보기</em> <strong>집 / 이동전화부터 데이터까지 완전 무제한</strong>
							</h3>
							<p class="prCopy">올레 tv 모바일팩, 링투유, 개치콜 등 최대 6가지 혜택을 제공하는 알짜팩을 누려보세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5 on"><a href="#limited51"
										id="51"><strong>순 완전무한<br>(51)
										</strong><span class="dLine"><em>5GB<br>
											</em>남은데이터 이월</span></a></li>
									<li class="balloon4"><a href="#limited61"
										id="61"><strong>순 완전무한<br>(61)
										</strong><span class="dLine"><em>10GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#limited67"
										id="67"><strong>순 완전무한<br>(67)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#limited77"
										id="77"><strong>순 완전무한<br>(77)
										</strong><span><em>17GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#limited99"
										id="99"><strong>순 완전무한<br>(99)
										</strong><span><em>25GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<!--두줄이상일때  class="dLine" 추가-->
								</ul>
								<div class="clearfix">
									<!-- clear both -->
								</div>
							</div>
						</div>
						<div class="brandTable" id="fareViewType2_1">

							<h4 class="hidden">표로 보기</h4>
							<div class="tableType1">
								<table border="1">
									<caption>band data, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="20%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${limited}" var="limited">
											<tr>
												<th scope="row" class="left "><span>${limited.payment}
														></span></th>
												<td>${limited.fixed_month}원</td>
												<td>${limited.call }</td>
												<td>${limited.sms }</td>
												<td>${limited.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br><b style="color: red;font-size: 15px;"> * 순 완전무한 51은 이용 불가</b></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="10%">
										<col width="10%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품명</th>
											<th scope="col">이용요금</th>
											<th scope="col">제공혜택</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row" rowspan="4"><span>알짜팩</span></th>
											<td rowspan="4">8800원</td>
											<td>영상 서비스</td>
											<td>올레 tv 모바일팩<br>(실사간 TV채널 및 VOD + 전용)</td>
										</tr>
										<tr>
											<th>음악 부가서비스</th>
											<th>링투유<br>(모바일 통화연결음)</th>
										</tr>									
										<tr>
											<th>통화 부가서비스</th>
											<th>캐치콜<br>(받지못한 통화를 SMS로 알려주는 상품)</th>
										</tr>									
										<tr>
											<th>영화 할인쿠폰</th>
											<th>매월 2장<br>(1장당 2000원 할인)</th>
										</tr>									
									</tbody>
								</table>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- limited51 -->
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	
	
	if(location.href.match('EC%88%9C%20%EC%99%84%EC%A0%84%EB%AC%B4%ED%95%9C99')){
		// $('div[id=perfect]').css("display", "none");
		$('#limited99').show();
		$('#limited77').hide();
		$('#limited67').hide();
		$('#limited61').hide();
		$('#limited51').hide();
	}  else if(location.href.match('EC%88%9C%20%EC%99%84%EC%A0%84%EB%AC%B4%ED%95%9C77')){
		$('#limited99').hide();
		$('#limited77').show();
		$('#limited67').hide();
		$('#limited61').hide();
		$('#limited51').hide();
	}  else if(location.href.match('EC%88%9C%20%EC%99%84%EC%A0%84%EB%AC%B4%ED%95%9C67')){
		$('#limited99').show();
		$('#limited77').hide();
		$('#limited67').show();
		$('#limited61').hide();
		$('#limited51').hide();
	}else if(location.href.match('EC%88%9C%20%EC%99%84%EC%A0%84%EB%AC%B4%ED%95%9C61')){
		$('#limited99').hide();
		$('#limited77').hide();
		$('#limited67').hide();
		$('#limited61').show();
		$('#limited51').hide();
	}else {
		$('#limited99').hide();
		$('#limited77').hide();
		$('#limited67').hide();
		$('#limited61').hide();
		$('#limited51').show();
	}
	
	

</script>
</html>