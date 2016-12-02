<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - KT 상세페이지</title>
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
		$('a[id=328]').click(function() {
			$('#y24_658').hide();
			$('#y24_548').hide();
			$('#y24_493').hide();
			$('#y24_438').hide();
			$('#y24_383').hide();
			$('#y24_328').show();
		});
		
		$('a[id=383]').click(function() {
			$('#y24_658').hide();
			$('#y24_548').hide();
			$('#y24_493').hide();
			$('#y24_438').hide();
			$('#y24_383').show();
			$('#y24_328').hide();
		});
		
		$('a[id=438]').click(function() {
			$('#y24_658').hide();
			$('#y24_548').hide();
			$('#y24_493').hide();
			$('#y24_438').show();
			$('#y24_383').hide();
			$('#y24_328').hide();
		});
		
		$('a[id=493]').click(function() {
			$('#y24_658').hide();
			$('#y24_548').hide();
			$('#y24_493').show();
			$('#y24_438').hide();
			$('#y24_383').hide();
			$('#y24_328').hide();
		});
		
		$('a[id=548]').click(function() {
			$('#y24_658').hide();
			$('#y24_548').show();
			$('#y24_493').hide();
			$('#y24_438').hide();
			$('#y24_383').hide();
			$('#y24_328').hide();
		});
		
		$('a[id=658]').click(function() {
			$('#y24_658').show();
			$('#y24_548').hide();
			$('#y24_493').hide();
			$('#y24_438').hide();
			$('#y24_383').hide();
			$('#y24_328').hide();
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
		<!-- 수정 43.816.04.19 : class="product" 삭제 -->
		<!-- content -->
		<div id="content">
			<div class="post-head container">
				<iframe width="640" height="360" src="https://www.youtube.com/embed/lwfQV9Ij-Xk" frameborder="0" allowfullscreen></iframe> 
			</div>
			<!-- 기본정보 -->
			<!-- 43.816.06.23 수정 -->
			<!-- y24_658 -->
			<div class="prCont basicArea" id="y24_658">
			<c:forEach items="${y24_658}" var="y24_658">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${y24_658.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/y24_658.png"
								alt="Y24 65.8">
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
										<p>${y24_658.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${y24_658.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${y24_658.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${y24_658.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">매일 3시간 데이터 무료<br>음악, 모바일TV 모두반값</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${y24_658.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y24 요금제 한눈에 보기</em> <strong>만 24세 이하를 위한 특별한 혜택이 더해진 데이터 선택 요금제</strong>
							</h3>
							<p class="prCopy">매일 3시간 데이터 무료, 음악 모바일 TV 모두 반값 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#y24_328"
										id="328"><strong>Y틴<br>(32.8)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_383"
										id="383"><strong>Y틴<br>(38.3)
										</strong><span class="dLine"><em>1GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_438"
										id="438"><strong>Y틴<br>(43.8)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#y24_493"
										id="493"><strong>Y틴<br>(49.3)
										</strong><span class="dLine"><em>3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#y24_548"
										id="548"><strong>Y틴<br>(54.8)
										</strong><span><em>6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#y24_658"
										id="658"><strong>Y틴<br>(65.8)
										</strong><span><em>10GB<br>
											</em></span></a></li>
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
									<caption>Y24 요금제, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="*%">
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
										<c:forEach items="${y24}" var="y24">
											<tr>
												<th scope="row" class="left "><span>${y24.payment}
														></span></th>
												<td>${y24.fixed_month}원</td>
												<td>${y24.call }</td>
												<td>${y24.sms }</td>
												<td>${y24.data}<br>  ${y24.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="10%">
										<col width="20%">
										<col width="20%">
										<col width="15%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="3">요금제</th>
											<th scope="col" colspan="5">혜택</th>
										</tr>
										<tr>
											<th scope="col" colspan="2" rowspan="2">데이터</th>
											<th scope="col" rowspan="2">음성</th>
											<th scope="col" colspan="2">추가혜택</th>
										</tr>
										<tr>
											<th>내용</th>
											<th>설명</th>
										</tr>
										
										
											
									</thead>
									
									<tbody>		
											<tr>		
												<td> Y24 65.8</td>
												<td colspan="2"> 무제한<br>(10GB / 매일 2GB 이후 최대 3Mbps 속도제어)</td>
												<td> 집 / 이동전화 무제한<br>(영상 / 부가 200분)</td>
												<td rowspan="2">올레 tv 모바일*</td>
												<td rowspan="6">반값팩*<br>(데이터/콘텐츠 50% 할인)<br><br>
																지니팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																올레tv모바일 데일리팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																데이터충전500MB<br><span style="text-decoration: line-through;">8,800원</span> → 4,400원
												</td>
											</tr>							
											<tr>		
												<td> Y24 54.8</td>
												<td>6GB</td>
												<td rowspan="5">매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="5">집/이동전화 무제한<br>(+영상/부가30분)</td>
											</tr>		
											<tr>
												<td>Y24 49.3</td>
												<td>3GB</td>
												<td rowspan="4">올레 tv모바일<br>(일부 채널 제외)</td>
											</tr>			
											<tr>
												<td>Y24 43.8</td>
												<td>2GB</td>
											</tr>		
											<tr>
												<td>Y24 38.3</td>
												<td>1GB</td>
											</tr>		
											<tr>
												<td>Y24 32.8</td>
												<td>300MB</td>
											</tr>
											<tr>
												<td colspan="6" style="text-align: left;">
												<div style="margin-left: 25%">
											* 밀당: 남은 데이터는 다음 달까지 쓰고, 모자라면 다음 달 데이터 당겨 쓸 수 있는 서비스<br>
											* 매일 3시간 데이터 무제한(49.3 이하): 매일 연속 3시간 동안 2GB + 최대 3Mbps(속도제어 제공)<br>
												- 시작 시간 기준 0시-21시 중 택 1, 미지정 시 오전 9시-12시로 자동 설정됨<br>
												- LTE 데이터쉐어링, 테더링, mVoIP 불가<br>
											* 반값팩: 월 1회 콘텐츠, 데이터 등 대상 서비스를 쿠폰 형태로 할인하여 제공하는 프로그램<br>
											* 올레 tv모바일: 실시간 방송과 고화질 VOD를 즐길 수 있는 앱 서비스
												</div>
												</td>
											</tr>
									</tbody>
								</table><br>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- y24_658 -->
			
			<!-- y24_548 -->
			<div class="prCont basicArea" id="y24_548">
			<c:forEach items="${y24_548}" var="y24_548">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${y24_548.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/y24_548.png"
								alt="Y24 65.8">
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
										<p>${y24_548.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${y24_548.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${y24_548.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${y24_548.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">매일 3시간 데이터 무료<br>음악, 모바일TV 모두반값</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${y24_548.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y24 요금제 한눈에 보기</em> <strong>만 24세 이하를 위한 특별한 혜택이 더해진 데이터 선택 요금제</strong>
							</h3>
							<p class="prCopy">매일 3시간 데이터 무료, 음악 모바일 TV 모두 반값 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#y24_328"
										id="328"><strong>Y틴<br>(32.8)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_383"
										id="383"><strong>Y틴<br>(38.3)
										</strong><span class="dLine"><em>1GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_438"
										id="438"><strong>Y틴<br>(43.8)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#y24_493"
										id="493"><strong>Y틴<br>(49.3)
										</strong><span class="dLine"><em>3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#y24_548"
										id="548"><strong>Y틴<br>(54.8)
										</strong><span><em>6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#y24_658"
										id="658"><strong>Y틴<br>(65.8)
										</strong><span><em>10GB<br>
											</em></span></a></li>
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
									<caption>Y24 요금제, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="*%">
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
										<c:forEach items="${y24}" var="y24">
											<tr>
												<th scope="row" class="left "><span>${y24.payment}
														></span></th>
												<td>${y24.fixed_month}원</td>
												<td>${y24.call }</td>
												<td>${y24.sms }</td>
												<td>${y24.data}<br>  ${y24.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="15%">
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="3">요금제</th>
											<th scope="col" colspan="5">혜택</th>
										</tr>
										<tr>
											<th scope="col" colspan="2" rowspan="2">데이터</th>
											<th scope="col" rowspan="2">음성</th>
											<th scope="col" colspan="2">추가혜택</th>
										</tr>
										<tr>
											<th>내용</th>
											<th>설명</th>
										</tr>
										
										
											
									</thead>
									
									<tbody>		
											<tr>		
												<td> Y24 65.8</td>
												<td colspan="2"> 무제한<br>(10GB / 매일 2GB 이후 최대 3Mbps 속도제어)</td>
												<td> 집 / 이동전화 무제한<br>(영상 / 부가 200분)</td>
												<td rowspan="2">올레 tv 모바일*</td>
												<td rowspan="6">반값팩*<br>(데이터/콘텐츠 50% 할인)<br><br>
																지니팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																올레tv모바일 데일리팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																데이터충전500MB<br><span style="text-decoration: line-through;">8,800원</span> → 4,400원
												</td>
											</tr>							
											<tr>		
												<td> Y24 54.8</td>
												<td>6GB</td>
												<td>매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="5">집/이동전화 무제한<br>(+영상/부가30분)</td>
											</tr>		
											<tr>
												<td>Y24 49.3</td>
												<td>3GB</td>
												<td rowspan="4">매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="4">올레 tv모바일<br>(일부 채널 제외)</td>
											</tr>			
											<tr>
												<td>Y24 43.8</td>
												<td>2GB</td>
											</tr>		
											<tr>
												<td>Y24 38.3</td>
												<td>1GB</td>
											</tr>		
											<tr>
												<td>Y24 32.8</td>
												<td>300MB</td>
											</tr>	
											<tr>
												<td colspan="6" style="text-align: left;">
												<div style="margin-left: 25%">
											* 밀당: 남은 데이터는 다음 달까지 쓰고, 모자라면 다음 달 데이터 당겨 쓸 수 있는 서비스<br>
											* 매일 3시간 데이터 무제한(49.3 이하): 매일 연속 3시간 동안 2GB + 최대 3Mbps(속도제어 제공)<br>
												- 시작 시간 기준 0시-21시 중 택 1, 미지정 시 오전 9시-12시로 자동 설정됨<br>
												- LTE 데이터쉐어링, 테더링, mVoIP 불가<br>
											* 반값팩: 월 1회 콘텐츠, 데이터 등 대상 서비스를 쿠폰 형태로 할인하여 제공하는 프로그램<br>
											* 올레 tv모바일: 실시간 방송과 고화질 VOD를 즐길 수 있는 앱 서비스
												</div>
												</td>
											</tr>	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- y24_548 -->
			
			<!-- y24_493 -->
			<div class="prCont basicArea" id="y24_493">
			<c:forEach items="${y24_493}" var="y24_493">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${y24_493.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/y24_493.png"
								alt="Y24 65.8">
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
										<p>${y24_493.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${y24_493.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${y24_493.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${y24_493.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">매일 3시간 데이터 무료<br>음악, 모바일TV 모두반값</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${y24_493.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y24 요금제 한눈에 보기</em> <strong>만 24세 이하를 위한 특별한 혜택이 더해진 데이터 선택 요금제</strong>
							</h3>
							<p class="prCopy">매일 3시간 데이터 무료, 음악 모바일 TV 모두 반값 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#y24_328"
										id="328"><strong>Y틴<br>(32.8)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_383"
										id="383"><strong>Y틴<br>(38.3)
										</strong><span class="dLine"><em>1GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_438"
										id="438"><strong>Y틴<br>(43.8)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#y24_493"
										id="493"><strong>Y틴<br>(49.3)
										</strong><span class="dLine"><em>3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#y24_548"
										id="548"><strong>Y틴<br>(54.8)
										</strong><span><em>6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#y24_658"
										id="658"><strong>Y틴<br>(65.8)
										</strong><span><em>10GB<br>
											</em></span></a></li>
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
									<caption>Y24 요금제, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="*%">
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
										<c:forEach items="${y24}" var="y24">
											<tr>
												<th scope="row" class="left "><span>${y24.payment}
														></span></th>
												<td>${y24.fixed_month}원</td>
												<td>${y24.call }</td>
												<td>${y24.sms }</td>
												<td>${y24.data}<br>  ${y24.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="15%">
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="3">요금제</th>
											<th scope="col" colspan="5">혜택</th>
										</tr>
										<tr>
											<th scope="col" colspan="2" rowspan="2">데이터</th>
											<th scope="col" rowspan="2">음성</th>
											<th scope="col" colspan="2">추가혜택</th>
										</tr>
										<tr>
											<th>내용</th>
											<th>설명</th>
										</tr>
										
										
											
									</thead>
									
									<tbody>		
											<tr>		
												<td> Y24 65.8</td>
												<td colspan="2"> 무제한<br>(10GB / 매일 2GB 이후 최대 3Mbps 속도제어)</td>
												<td> 집 / 이동전화 무제한<br>(영상 / 부가 200분)</td>
												<td rowspan="2">올레 tv 모바일*</td>
												<td rowspan="6">반값팩*<br>(데이터/콘텐츠 50% 할인)<br><br>
																지니팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																올레tv모바일 데일리팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																데이터충전500MB<br><span style="text-decoration: line-through;">8,800원</span> → 4,400원
												</td>
											</tr>							
											<tr>		
												<td> Y24 54.8</td>
												<td>6GB</td>
												<td>매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="5">집/이동전화 무제한<br>(+영상/부가30분)</td>
											</tr>		
											<tr>
												<td>Y24 49.3</td>
												<td>3GB</td>
												<td rowspan="4">매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="4">올레 tv모바일<br>(일부 채널 제외)</td>
											</tr>			
											<tr>
												<td>Y24 43.8</td>
												<td>2GB</td>
											</tr>		
											<tr>
												<td>Y24 38.3</td>
												<td>1GB</td>
											</tr>		
											<tr>
												<td>Y24 32.8</td>
												<td>300MB</td>
											</tr>	
											<tr>
												<td colspan="6" style="text-align: left;">
												<div style="margin-left: 25%">
											* 밀당: 남은 데이터는 다음 달까지 쓰고, 모자라면 다음 달 데이터 당겨 쓸 수 있는 서비스<br>
											* 매일 3시간 데이터 무제한(49.3 이하): 매일 연속 3시간 동안 2GB + 최대 3Mbps(속도제어 제공)<br>
												- 시작 시간 기준 0시-21시 중 택 1, 미지정 시 오전 9시-12시로 자동 설정됨<br>
												- LTE 데이터쉐어링, 테더링, mVoIP 불가<br>
											* 반값팩: 월 1회 콘텐츠, 데이터 등 대상 서비스를 쿠폰 형태로 할인하여 제공하는 프로그램<br>
											* 올레 tv모바일: 실시간 방송과 고화질 VOD를 즐길 수 있는 앱 서비스
												</div>
												</td>
											</tr>	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- y24_493 -->
			
			<!-- y24_438 -->
			<div class="prCont basicArea" id="y24_438">
			<c:forEach items="${y24_438}" var="y24_438">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${y24_438.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/y24_438.png"
								alt="Y24 65.8">
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
										<p>${y24_438.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${y24_438.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${y24_438.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${y24_438.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">매일 3시간 데이터 무료<br>음악, 모바일TV 모두반값</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${y24_438.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y24 요금제 한눈에 보기</em> <strong>만 24세 이하를 위한 특별한 혜택이 더해진 데이터 선택 요금제</strong>
							</h3>
							<p class="prCopy">매일 3시간 데이터 무료, 음악 모바일 TV 모두 반값 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#y24_328"
										id="328"><strong>Y틴<br>(32.8)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_383"
										id="383"><strong>Y틴<br>(38.3)
										</strong><span class="dLine"><em>1GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_438"
										id="438"><strong>Y틴<br>(43.8)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#y24_493"
										id="493"><strong>Y틴<br>(49.3)
										</strong><span class="dLine"><em>3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#y24_548"
										id="548"><strong>Y틴<br>(54.8)
										</strong><span><em>6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#y24_658"
										id="658"><strong>Y틴<br>(65.8)
										</strong><span><em>10GB<br>
											</em></span></a></li>
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
									<caption>Y24 요금제, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="*%">
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
										<c:forEach items="${y24}" var="y24">
											<tr>
												<th scope="row" class="left "><span>${y24.payment}
														></span></th>
												<td>${y24.fixed_month}원</td>
												<td>${y24.call }</td>
												<td>${y24.sms }</td>
												<td>${y24.data}<br>  ${y24.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="15%">
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="3">요금제</th>
											<th scope="col" colspan="5">혜택</th>
										</tr>
										<tr>
											<th scope="col" colspan="2" rowspan="2">데이터</th>
											<th scope="col" rowspan="2">음성</th>
											<th scope="col" colspan="2">추가혜택</th>
										</tr>
										<tr>
											<th>내용</th>
											<th>설명</th>
										</tr>
										
										
											
									</thead>
									
									<tbody>		
											<tr>		
												<td> Y24 65.8</td>
												<td colspan="2"> 무제한<br>(10GB / 매일 2GB 이후 최대 3Mbps 속도제어)</td>
												<td> 집 / 이동전화 무제한<br>(영상 / 부가 200분)</td>
												<td rowspan="2">올레 tv 모바일*</td>
												<td rowspan="6">반값팩*<br>(데이터/콘텐츠 50% 할인)<br><br>
																지니팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																올레tv모바일 데일리팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																데이터충전500MB<br><span style="text-decoration: line-through;">8,800원</span> → 4,400원
												</td>
											</tr>							
											<tr>		
												<td> Y24 54.8</td>
												<td>6GB</td>
												<td>매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="5">집/이동전화 무제한<br>(+영상/부가30분)</td>
											</tr>		
											<tr>
												<td>Y24 49.3</td>
												<td>3GB</td>
												<td rowspan="4">매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="4">올레 tv모바일<br>(일부 채널 제외)</td>
											</tr>			
											<tr>
												<td>Y24 43.8</td>
												<td>2GB</td>
											</tr>		
											<tr>
												<td>Y24 38.3</td>
												<td>1GB</td>
											</tr>		
											<tr>
												<td>Y24 32.8</td>
												<td>300MB</td>
											</tr>		
											<tr>
												<td colspan="6" style="text-align: left;">
												<div style="margin-left: 25%">
											* 밀당: 남은 데이터는 다음 달까지 쓰고, 모자라면 다음 달 데이터 당겨 쓸 수 있는 서비스<br>
											* 매일 3시간 데이터 무제한(49.3 이하): 매일 연속 3시간 동안 2GB + 최대 3Mbps(속도제어 제공)<br>
												- 시작 시간 기준 0시-21시 중 택 1, 미지정 시 오전 9시-12시로 자동 설정됨<br>
												- LTE 데이터쉐어링, 테더링, mVoIP 불가<br>
											* 반값팩: 월 1회 콘텐츠, 데이터 등 대상 서비스를 쿠폰 형태로 할인하여 제공하는 프로그램<br>
											* 올레 tv모바일: 실시간 방송과 고화질 VOD를 즐길 수 있는 앱 서비스
												</div>
												</td>
											</tr>
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- y24_438 -->
			
			<!-- y24_383 -->
			<div class="prCont basicArea" id="y24_383">
			<c:forEach items="${y24_383}" var="y24_383">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${y24_383.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/y24_383.png"
								alt="Y24 65.8">
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
										<p>${y24_383.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${y24_383.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${y24_383.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${y24_383.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">매일 3시간 데이터 무료<br>음악, 모바일TV 모두반값</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${y24_383.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y24 요금제 한눈에 보기</em> <strong>만 24세 이하를 위한 특별한 혜택이 더해진 데이터 선택 요금제</strong>
							</h3>
							<p class="prCopy">매일 3시간 데이터 무료, 음악 모바일 TV 모두 반값 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#y24_328"
										id="328"><strong>Y틴<br>(32.8)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_383"
										id="383"><strong>Y틴<br>(38.3)
										</strong><span class="dLine"><em>1GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_438"
										id="438"><strong>Y틴<br>(43.8)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#y24_493"
										id="493"><strong>Y틴<br>(49.3)
										</strong><span class="dLine"><em>3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#y24_548"
										id="548"><strong>Y틴<br>(54.8)
										</strong><span><em>6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#y24_658"
										id="658"><strong>Y틴<br>(65.8)
										</strong><span><em>10GB<br>
											</em></span></a></li>
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
									<caption>Y24 요금제, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="*%">
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
										<c:forEach items="${y24}" var="y24">
											<tr>
												<th scope="row" class="left "><span>${y24.payment}
														></span></th>
												<td>${y24.fixed_month}원</td>
												<td>${y24.call }</td>
												<td>${y24.sms }</td>
												<td>${y24.data}<br>  ${y24.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="15%">
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="3">요금제</th>
											<th scope="col" colspan="5">혜택</th>
										</tr>
										<tr>
											<th scope="col" colspan="2" rowspan="2">데이터</th>
											<th scope="col" rowspan="2">음성</th>
											<th scope="col" colspan="2">추가혜택</th>
										</tr>
										<tr>
											<th>내용</th>
											<th>설명</th>
										</tr>
										
										
											
									</thead>
									
									<tbody>		
											<tr>		
												<td> Y24 65.8</td>
												<td colspan="2"> 무제한<br>(10GB / 매일 2GB 이후 최대 3Mbps 속도제어)</td>
												<td> 집 / 이동전화 무제한<br>(영상 / 부가 200분)</td>
												<td rowspan="2">올레 tv 모바일*</td>
												<td rowspan="6">반값팩*<br>(데이터/콘텐츠 50% 할인)<br><br>
																지니팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																올레tv모바일 데일리팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																데이터충전500MB<br><span style="text-decoration: line-through;">8,800원</span> → 4,400원
												</td>
											</tr>							
											<tr>		
												<td> Y24 54.8</td>
												<td>6GB</td>
												<td>매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="5">집/이동전화 무제한<br>(+영상/부가30분)</td>
											</tr>		
											<tr>
												<td>Y24 49.3</td>
												<td>3GB</td>
												<td rowspan="4">매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="4">올레 tv모바일<br>(일부 채널 제외)</td>
											</tr>			
											<tr>
												<td>Y24 43.8</td>
												<td>2GB</td>
											</tr>		
											<tr>
												<td>Y24 38.3</td>
												<td>1GB</td>
											</tr>		
											<tr>
												<td>Y24 32.8</td>
												<td>300MB</td>
											</tr>	
											<tr>
												<td colspan="6" style="text-align: left;">
												<div style="margin-left: 25%">
											* 밀당: 남은 데이터는 다음 달까지 쓰고, 모자라면 다음 달 데이터 당겨 쓸 수 있는 서비스<br>
											* 매일 3시간 데이터 무제한(49.3 이하): 매일 연속 3시간 동안 2GB + 최대 3Mbps(속도제어 제공)<br>
												- 시작 시간 기준 0시-21시 중 택 1, 미지정 시 오전 9시-12시로 자동 설정됨<br>
												- LTE 데이터쉐어링, 테더링, mVoIP 불가<br>
											* 반값팩: 월 1회 콘텐츠, 데이터 등 대상 서비스를 쿠폰 형태로 할인하여 제공하는 프로그램<br>
											* 올레 tv모바일: 실시간 방송과 고화질 VOD를 즐길 수 있는 앱 서비스
												</div>
												</td>
											</tr>	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- y24_383 -->
			
			<!-- y24_328 -->
			<div class="prCont basicArea" id="y24_328">
			<c:forEach items="${y24_328}" var="y24_328">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${y24_328.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/y24_328.png"
								alt="Y24 65.8">
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
										<p>${y24_328.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${y24_328.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${y24_328.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${y24_328.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">매일 3시간 데이터 무료<br>음악, 모바일TV 모두반값</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${y24_328.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y24 요금제 한눈에 보기</em> <strong>만 24세 이하를 위한 특별한 혜택이 더해진 데이터 선택 요금제</strong>
							</h3>
							<p class="prCopy">매일 3시간 데이터 무료, 음악 모바일 TV 모두 반값 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#y24_328"
										id="328"><strong>Y틴<br>(32.8)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_383"
										id="383"><strong>Y틴<br>(383)
										</strong><span class="dLine"><em>1GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#y24_438"
										id="438"><strong>Y틴<br>(43.8)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#y24_493"
										id="493"><strong>Y틴<br>(49.3)
										</strong><span class="dLine"><em>3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#y24_548"
										id="548"><strong>Y틴<br>(54.8)
										</strong><span><em>6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#y24_658"
										id="658"><strong>Y틴<br>(65.8)
										</strong><span><em>10GB<br>
											</em></span></a></li>
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
									<caption>Y24 요금제, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="*%">
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
										<c:forEach items="${y24}" var="y24">
											<tr>
												<th scope="row" class="left "><span>${y24.payment}
														></span></th>
												<td>${y24.fixed_month}원</td>
												<td>${y24.call }</td>
												<td>${y24.sms }</td>
												<td>${y24.data}<br>  ${y24.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="15%">
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="3">요금제</th>
											<th scope="col" colspan="5">혜택</th>
										</tr>
										<tr>
											<th scope="col" colspan="2" rowspan="2">데이터</th>
											<th scope="col" rowspan="2">음성</th>
											<th scope="col" colspan="2">추가혜택</th>
										</tr>
										<tr>
											<th>내용</th>
											<th>설명</th>
										</tr>
										
										
											
									</thead>
									
									<tbody>		
											<tr>		
												<td> Y24 65.8</td>
												<td colspan="2"> 무제한<br>(10GB / 매일 2GB 이후 최대 3Mbps 속도제어)</td>
												<td> 집 / 이동전화 무제한<br>(영상 / 부가 200분)</td>
												<td rowspan="2">올레 tv 모바일*</td>
												<td rowspan="6">반값팩*<br>(데이터/콘텐츠 50% 할인)<br><br>
																지니팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																올레tv모바일 데일리팩<br><span style="text-decoration: line-through;">6,600원</span> → 3,300원<br><br>
																데이터충전500MB<br><span style="text-decoration: line-through;">8,800원</span> → 4,400원
												</td>
											</tr>							
											<tr>		
												<td> Y24 54.8</td>
												<td>6GB</td>
												<td>매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="5">집/이동전화 무제한<br>(+영상/부가30분)</td>
											</tr>		
											<tr>
												<td>Y24 49.3</td>
												<td>3GB</td>
												<td rowspan="4">매일 3시간 데이터 무제한<br>(속도제어)*<br><br>+밀당*</td>
												<td rowspan="4">올레 tv모바일<br>(일부 채널 제외)</td>
											</tr>			
											<tr>
												<td>Y24 43.8</td>
												<td>2GB</td>
											</tr>		
											<tr>
												<td>Y24 38.3</td>
												<td>1GB</td>
											</tr>		
											<tr>
												<td>Y24 32.8</td>
												<td>300MB</td>
											</tr>		
											<tr>
												<td colspan="6" style="text-align: left;">
												<div style="margin-left: 25%">
											* 밀당: 남은 데이터는 다음 달까지 쓰고, 모자라면 다음 달 데이터 당겨 쓸 수 있는 서비스<br>
											* 매일 3시간 데이터 무제한(49.3 이하): 매일 연속 3시간 동안 2GB + 최대 3Mbps(속도제어 제공)<br>
												- 시작 시간 기준 0시-21시 중 택 1, 미지정 시 오전 9시-12시로 자동 설정됨<br>
												- LTE 데이터쉐어링, 테더링, mVoIP 불가<br>
											* 반값팩: 월 1회 콘텐츠, 데이터 등 대상 서비스를 쿠폰 형태로 할인하여 제공하는 프로그램<br>
											* 올레 tv모바일: 실시간 방송과 고화질 VOD를 즐길 수 있는 앱 서비스
												</div>
												</td>
											</tr>
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- y24_328 -->
			
			
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */


	if(location.href.match('Y24%2065.8')){
		// $('div[id=perfect]').css("display", "none");
		$('#y24_658').show();
		$('#y24_548').hide();
		$('#y24_493').hide();
		$('#y24_438').hide();
		$('#y24_383').hide();
		$('#y24_328').hide();
	}else if(location.href.match('Y24%2054.8')){
		$('#y24_658').hide();
		$('#y24_548').show();
		$('#y24_493').hide();
		$('#y24_438').hide();
		$('#y24_383').hide();
		$('#y24_328').hide();
	}else if(location.href.match('Y24%2049.3')){
		$('#y24_658').hide();
		$('#y24_548').hide();
		$('#y24_493').show();
		$('#y24_438').hide();
		$('#y24_383').hide();
		$('#y24_328').hide();
	}else if(location.href.match('Y24%2043.8')){
		$('#y24_658').hide();
		$('#y24_548').hide();
		$('#y24_493').hide();
		$('#y24_438').show();
		$('#y24_383').hide();
		$('#y24_328').hide();
	}else if(location.href.match('Y24%2038.3')){
		$('#y24_658').hide();
		$('#y24_548').hide();
		$('#y24_493').hide();
		$('#y24_438').hide();
		$('#y24_383').show();
		$('#y24_328').hide();
	}else{
		$('#y24_658').hide();
		$('#y24_548').hide();
		$('#y24_493').hide();
		$('#y24_438').hide();
		$('#y24_383').hide();
		$('#y24_328').show();
	}



</script>
</html>