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
		$('a[id=28]').click(function() {
			$('#all41').hide();
			$('#all34').hide();
			$('#all28').show();
			
		});
		
		$('a[id=34]').click(function() {
			$('#all41').hide();
			$('#all34').show();
			$('#all28').hide();
		});
		
		$('a[id=41]').click(function() {
			$('#all41').show();
			$('#all34').hide();
			$('#all28').hide();
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
			<!-- all41 -->
			<div class="prCont basicArea" id="all41">
			<c:forEach items="${all41}" var="all41">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${all41.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/all41.png"
								alt="순 모두다올레41(LTE)">
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
										<p>${all41.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${all41.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${all41.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${all41.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">함께 Olleh 쓰고 무제한 통화<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${all41.fixed_month }</em><span>원</span>
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
								<em class="fColor3">순 모두다올레 한눈에 보기</em> <strong>kt 모바일끼리는 LTE 무제한 통화</strong>
							</h3>
							<p class="prCopy">음성뿐만 아니라 영상통화까지 무제한 다 못 쓴 데이터는 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon3"><a href="#all28"
										id="28"><strong>순 모두다올레<br>(28)
										</strong><span class="dLine"><em>750MB<br>
											</em>데이터 이월</span></a></li>
									<li class="balloon2"><a href="#all34"
										id="34"><strong>순 모두다올레<br>(34)
										</strong><span><em>1.5GB<br>
											</em>데이터 이월</span></a></li>
									<li class="balloon1 on"><a href="#all41"
										id="41"><strong>순 모두다올레<br>(41)
										</strong><span><em>2.5GB<br>
											</em>데이터 이월</span></a></li>
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
										<col width="16%">
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
										<c:forEach items="${all}" var="all">
											<tr>
												<th scope="row" class="left "><span>${all.payment}
														></span></th>
												<td>${all.fixed_month}원</td>
												<td>${all.call }</td>
												<td>${all.sms }</td>
												<td>${all.data}  ${all.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<%-- <br><hr><br><br><br>
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
							</div> --%>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- all41 -->			
			
			
			<!-- all34 -->
			<div class="prCont basicArea" id="all34">
			<c:forEach items="${all34}" var="all34">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${all34.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/all34.png"
								alt="순 모두다올레34(LTE)">
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
										<p>${all34.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${all34.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${all34.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${all34.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">함께 Olleh 쓰고 무제한 통화<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${all34.fixed_month }</em><span>원</span>
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
								<em class="fColor3">순 모두다올레 한눈에 보기</em> <strong>kt 모바일끼리는 LTE 무제한 통화</strong>
							</h3>
							<p class="prCopy">음성뿐만 아니라 영상통화까지 무제한 다 못 쓴 데이터는 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon3"><a href="#all28"
										id="28"><strong>순 모두다올레<br>(28)
										</strong><span class="dLine"><em>750MB<br>
											</em>데이터 이월</span></a></li>
									<li class="balloon2 on"><a href="#all34"
										id="34"><strong>순 모두다올레<br>(34)
										</strong><span><em>1.5GB<br>
											</em>데이터 이월</span></a></li>
									<li class="balloon1"><a href="#all41"
										id="41"><strong>순 모두다올레<br>(41)
										</strong><span><em>2.5GB<br>
											</em>데이터 이월</span></a></li>
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
										<col width="16%">
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
										<c:forEach items="${all}" var="all">
											<tr>
												<th scope="row" class="left "><span>${all.payment}
														></span></th>
												<td>${all.fixed_month}원</td>
												<td>${all.call }</td>
												<td>${all.sms }</td>
												<td>${all.data}  ${all.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
			
						</div>
					</div>
				</div>
				</div>
			
			<!-- all34 -->
			
			
			<!-- all28 -->
			<div class="prCont basicArea" id="all28">
			<c:forEach items="${all28}" var="all28">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${all28.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/all28.png"
								alt="순 모두다올레28(LTE)">
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
										<p>${all28.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${all28.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${all28.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${all28.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">함께 Olleh 쓰고 무제한 통화<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${all28.fixed_month }</em><span>원</span>
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
								<em class="fColor3">순 모두다올레 한눈에 보기</em> <strong>kt 모바일끼리는 LTE 무제한 통화</strong>
							</h3>
							<p class="prCopy">음성뿐만 아니라 영상통화까지 무제한 다 못 쓴 데이터는 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon3 on"><a href="#all28"
										id="28"><strong>순 모두다올레<br>(28)
										</strong><span class="dLine"><em>750MB<br>
											</em>데이터 이월</span></a></li>
									<li class="balloon2"><a href="#all34"
										id="34"><strong>순 모두다올레<br>(34)
										</strong><span><em>1.5GB<br>
											</em>데이터 이월</span></a></li>
									<li class="balloon1"><a href="#all41"
										id="41"><strong>순 모두다올레<br>(41)
										</strong><span><em>2.5GB<br>
											</em>데이터 이월</span></a></li>
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
										<col width="16%">
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
										<c:forEach items="${all}" var="all">
											<tr>
												<th scope="row" class="left "><span>${all.payment}
														></span></th>
												<td>${all.fixed_month}원</td>
												<td>${all.call }</td>
												<td>${all.sms }</td>
												<td>${all.data}  ${all.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
			
						</div>
					</div>
				</div>
				</div>
			
			<!-- all28 -->
			
			
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">


/* 	var url = document.URL;

	alert(url);
 */

	
	if(location.href.match('EC%88%9C%20%EB%AA%A8%EB%91%90%EB%8B%A4%EC%98%AC%EB%A0%8841')){
		// $('div[id=perfect]').css("display", "none");
		$('#all41').show();
		$('#all34').hide();
		$('#all28').hide();
	}  else if(location.href.match('EC%88%9C%20%EB%AA%A8%EB%91%90%EB%8B%A4%EC%98%AC%EB%A0%8834')){
		$('#all41').hide();
		$('#all34').show();
		$('#all28').hide();
	}  else{
		$('#all41').show();
		$('#all34').hide();
		$('#all28').show();
	}
	
	

</script>
</html>