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
		$('a[id=520]').click(function() {
			$('#lteEgg520').show();
			$('#lteEgg420').hide();
			$('#lteEgg340').hide();
			$('#lteEgg240').hide();
			$('#lteEgg190').hide();
		});
		
		$('a[id=420]').click(function() {
			$('#lteEgg520').hide();
			$('#lteEgg420').show();
			$('#lteEgg340').hide();
			$('#lteEgg240').hide();
			$('#lteEgg190').hide();
		});
		
		$('a[id=340]').click(function() {
			$('#lteEgg520').hide();
			$('#lteEgg420').hide();
			$('#lteEgg340').show();
			$('#lteEgg240').hide();
			$('#lteEgg190').hide();
		});
		
		$('a[id=240]').click(function() {
			$('#lteEgg520').hide();
			$('#lteEgg420').hide();
			$('#lteEgg340').hide();
			$('#lteEgg240').show();
			$('#lteEgg190').hide();
		});
		
		$('a[id=190]').click(function() {
			$('#lteEgg520').hide();
			$('#lteEgg420').hide();
			$('#lteEgg340').hide();
			$('#lteEgg240').hide();
			$('#lteEgg190').show();
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
			<div class="post-head container">
				<iframe width="640" height="360" src="https://www.youtube.com/embed/ryPG5WZ4Oew" frameborder="0" allowfullscreen></iframe>
			</div>
			<!-- 기본정보 -->
			<!-- 2016.06.23 수정 -->
			<!-- lteEgg520 -->
			<div class="prCont basicArea" id="lteEgg520">
			<c:forEach items="${lteEgg520}" var="lteEgg520">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lteEgg520.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/lteEgg520.png"
								alt="LTE-일520">
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
										<p>${lteEgg520.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lteEgg520.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lteEgg520.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lteEgg520.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">기본알 무제한 이월</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lteEgg520.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE-알 한눈에 보기</em> <strong>문자전용 20000알, 데이터 최대 2.5GB</strong>
							</h3>
							<p class="prCopy">만18세 이하 고객이라면 알을 자유롭게 조절하고 무제한 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#lteEgg190"
										id="190"><strong>LTE-알<br>(190)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lteEgg240"
										id="240"><strong>LTE-알<br>(240)
										</strong><span class="dLine"><em>500MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lteEgg340"
										id="67"><strong>LTE-알<br>(340)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lteEgg420"
										id="420"><strong>LTE-알<br>(420)
										</strong><span><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#lteEgg520"
										id="520"><strong>LTE-알<br>(520)
										</strong><span><em>2.5GB<br>
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
										<c:forEach items="${lteEgg}" var="lteEgg">
											<tr>
												<th scope="row" class="left "><span>${lteEgg.payment}
														></span></th>
												<td>${lteEgg.fixed_month}원</td>
												<td>${lteEgg.call }</td>
												<td>${lteEgg.sms }</td>
												<td>${lteEgg.data}  ${lteEgg.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">자동전환(만 20세) 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="7">요금제</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>자동 전환 전<br></span></th>
											<td>LTE-알190</td>
											<td>LTE-알240</td>
											<td>LTE-알340</td>
											<td>LTE-알420</td>
											<td>LTE-알520</td>
										</tr>
										<tr>
											<th>자동 전환 후</th>
											<th></th>
											<th>LTE-340</th>
											<th></th>
											<th>LTE-420</th>
											<th>LTE-520</th>
										</tr>																	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- lteEgg520 -->
			
			
			<!-- lteEgg420 -->
			<div class="prCont basicArea" id="lteEgg420">
			<c:forEach items="${lteEgg420}" var="lteEgg420">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lteEgg420.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/lteEgg420.png"
								alt="LTE-알420">
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
										<p>${lteEgg420.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lteEgg420.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lteEgg420.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lteEgg420.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">기본알 무제한 이월</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lteEgg420.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE-알 한눈에 보기</em> <strong>문자전용 20000알, 데이터 최대 2.5GB</strong>
							</h3>
							<p class="prCopy">만18세 이하 고객이라면 알을 자유롭게 조절하고 무제한 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#lteEgg190"
										id="190"><strong>LTE-알<br>(190)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lteEgg240"
										id="240"><strong>LTE-알<br>(240)
										</strong><span class="dLine"><em>500MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lteEgg340"
										id="67"><strong>LTE-알<br>(340)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lteEgg420"
										id="420"><strong>LTE-알<br>(420)
										</strong><span><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#lteEgg520"
										id="520"><strong>LTE-알<br>(520)
										</strong><span><em>2.5GB<br>
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
										<c:forEach items="${lteEgg}" var="lteEgg">
											<tr>
												<th scope="row" class="left "><span>${lteEgg.payment}
														></span></th>
												<td>${lteEgg.fixed_month}원</td>
												<td>${lteEgg.call }</td>
												<td>${lteEgg.sms }</td>
												<td>${lteEgg.data}  ${lteEgg.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">자동전환(만 20세) 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="7">요금제</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>자동 전환 전<br></span></th>
											<td>LTE-알190</td>
											<td>LTE-알240</td>
											<td>LTE-알340</td>
											<td>LTE-알420</td>
											<td>LTE-알520</td>
										</tr>
										<tr>
											<th>자동 전환 후</th>
											<th></th>
											<th>LTE-340</th>
											<th></th>
											<th>LTE-420</th>
											<th>LTE-520</th>
										</tr>																	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- lteEgg420 -->
			
			
			<!-- lteEgg340 -->
			<div class="prCont basicArea" id="lteEgg340">
			<c:forEach items="${lteEgg340}" var="lteEgg340">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lteEgg340.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/lteEgg340.png"
								alt="LTE-알340">
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
										<p>${lteEgg340.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lteEgg340.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lteEgg340.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lteEgg340.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">기본알 무제한 이월</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lteEgg340.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE-알 한눈에 보기</em> <strong>문자전용 20000알, 데이터 최대 2.5GB</strong>
							</h3>
							<p class="prCopy">만18세 이하 고객이라면 알을 자유롭게 조절하고 무제한 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#lteEgg190"
										id="190"><strong>LTE-알<br>(190)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lteEgg240"
										id="240"><strong>LTE-알<br>(240)
										</strong><span class="dLine"><em>500MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lteEgg340"
										id="67"><strong>LTE-알<br>(340)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lteEgg420"
										id="420"><strong>LTE-알<br>(420)
										</strong><span><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#lteEgg520"
										id="520"><strong>LTE-알<br>(520)
										</strong><span><em>2.5GB<br>
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
										<c:forEach items="${lteEgg}" var="lteEgg">
											<tr>
												<th scope="row" class="left "><span>${lteEgg.payment}
														></span></th>
												<td>${lteEgg.fixed_month}원</td>
												<td>${lteEgg.call }</td>
												<td>${lteEgg.sms }</td>
												<td>${lteEgg.data}  ${lteEgg.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">자동전환(만 20세) 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="7">요금제</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>자동 전환 전<br></span></th>
											<td>LTE-알190</td>
											<td>LTE-알240</td>
											<td>LTE-알340</td>
											<td>LTE-알420</td>
											<td>LTE-알520</td>
										</tr>
										<tr>
											<th>자동 전환 후</th>
											<th></th>
											<th>LTE-340</th>
											<th></th>
											<th>LTE-420</th>
											<th>LTE-520</th>
										</tr>																	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- lteEgg340 -->
			
			
			<!-- lteEgg240 -->
			<div class="prCont basicArea" id="lteEgg240">
			<c:forEach items="${lteEgg240}" var="lteEgg240">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lteEgg240.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/lteEgg240.png"
								alt="LTE-알240">
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
										<p>${lteEgg240.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lteEgg240.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lteEgg240.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lteEgg240.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">기본알 무제한 이월</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lteEgg240.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE-알 한눈에 보기</em> <strong>문자전용 20000알, 데이터 최대 2.5GB</strong>
							</h3>
							<p class="prCopy">만18세 이하 고객이라면 알을 자유롭게 조절하고 무제한 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#lteEgg190"
										id="190"><strong>LTE-알<br>(190)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lteEgg240"
										id="240"><strong>LTE-알<br>(240)
										</strong><span class="dLine"><em>500MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lteEgg340"
										id="67"><strong>LTE-알<br>(340)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lteEgg420"
										id="420"><strong>LTE-알<br>(420)
										</strong><span><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#lteEgg520"
										id="520"><strong>LTE-알<br>(520)
										</strong><span><em>2.5GB<br>
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
										<c:forEach items="${lteEgg}" var="lteEgg">
											<tr>
												<th scope="row" class="left "><span>${lteEgg.payment}
														></span></th>
												<td>${lteEgg.fixed_month}원</td>
												<td>${lteEgg.call }</td>
												<td>${lteEgg.sms }</td>
												<td>${lteEgg.data}  ${lteEgg.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">자동전환(만 20세) 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="7">요금제</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>자동 전환 전<br></span></th>
											<td>LTE-알190</td>
											<td>LTE-알240</td>
											<td>LTE-알340</td>
											<td>LTE-알420</td>
											<td>LTE-알520</td>
										</tr>
										<tr>
											<th>자동 전환 후</th>
											<th></th>
											<th>LTE-340</th>
											<th></th>
											<th>LTE-420</th>
											<th>LTE-520</th>
										</tr>																	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- lteEgg240 -->
			
			
			<!-- lteEgg190 -->
			<div class="prCont basicArea" id="lteEgg190">
			<c:forEach items="${lteEgg190}" var="lteEgg190">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lteEgg190.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/lteEgg190.png"
								alt="LTE-알190">
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
										<p>${lteEgg190.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lteEgg190.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lteEgg190.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lteEgg190.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">기본알 무제한 이월</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lteEgg190.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE-알 한눈에 보기</em> <strong>문자전용 20000알, 데이터 최대 2.5GB</strong>
							</h3>
							<p class="prCopy">만18세 이하 고객이라면 알을 자유롭게 조절하고 무제한 이월</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#lteEgg190"
										id="190"><strong>LTE-알<br>(190)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lteEgg240"
										id="240"><strong>LTE-알<br>(240)
										</strong><span class="dLine"><em>500MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lteEgg340"
										id="67"><strong>LTE-알<br>(340)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lteEgg420"
										id="420"><strong>LTE-알<br>(420)
										</strong><span><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#lteEgg520"
										id="520"><strong>LTE-알<br>(520)
										</strong><span><em>2.5GB<br>
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
										<c:forEach items="${lteEgg}" var="lteEgg">
											<tr>
												<th scope="row" class="left "><span>${lteEgg.payment}
														></span></th>
												<td>${lteEgg.fixed_month}원</td>
												<td>${lteEgg.call }</td>
												<td>${lteEgg.sms }</td>
												<td>${lteEgg.data}  ${lteEgg.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">자동전환(만 20세) 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="*%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
										<col width="16%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="7">요금제</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>자동 전환 전<br></span></th>
											<td>LTE-알190</td>
											<td>LTE-알240</td>
											<td>LTE-알340</td>
											<td>LTE-알420</td>
											<td>LTE-알520</td>
										</tr>
										<tr>
											<th>자동 전환 후</th>
											<th></th>
											<th>LTE-340</th>
											<th></th>
											<th>LTE-420</th>
											<th>LTE-520</th>
										</tr>																	
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- lteEgg190 -->
			
			
			
			
						
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	
	
	if(location.href.match('LTE-%EC%95%8C520')){
		// $('div[id=perfect]').css("display", "none");
		$('#lteEgg520').show();
		$('#lteEgg420').hide();
		$('#lteEgg340').hide();
		$('#lteEgg240').hide();
		$('#lteEgg190').hide();
	}else if(location.href.match('LTE-%EC%95%8C420')){
		$('#lteEgg520').hide();
		$('#lteEgg420').show();
		$('#lteEgg340').hide();
		$('#lteEgg240').hide();
		$('#lteEgg190').hide();
	}else if(location.href.match('LTE-%EC%95%8C340')){
		$('#lteEgg520').hide();
		$('#lteEgg420').hide();
		$('#lteEgg340').show();
		$('#lteEgg240').hide();
		$('#lteEgg190').hide();
	}else if(location.href.match('LTE-%EC%95%8C240')){
		$('#lteEgg520').hide();
		$('#lteEgg420').hide();
		$('#lteEgg340').hide();
		$('#lteEgg240').show();
		$('#lteEgg190').hide();
	}else {
		$('#lteEgg520').hide();
		$('#lteEgg420').hide();
		$('#lteEgg340').hide();
		$('#lteEgg240').hide();
		$('#lteEgg190').show();
	}

	

</script>
</html>