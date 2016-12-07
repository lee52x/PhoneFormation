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
		$('a[id=t_together_65]').click(function() {
			$('#65').show();
			$('#55').hide();
			$('#45').hide();
			$('#35').hide();
		});
		
		$('a[id=t_together_55]').click(function() {
			$('#65').hide();
			$('#55').show();
			$('#45').hide();
			$('#35').hide();
		});
		
		$('a[id=t_together_45]').click(function() {
			$('#65').hide();
			$('#55').hide();
			$('#45').show();
			$('#35').hide();
		});
		
		$('a[id=t_together_35').click(function() {
			$('#65').hide();
			$('#55').hide();
			$('#45').hide();
			$('#35').show();
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
				<iframe width="640" height="360" src="https://www.youtube.com/embed/GUsq6xdoG5g" frameborder="0" allowfullscreen></iframe>
			</div>

			<!-- t_together_65 -->
			<div class="prCont basicArea" id="65">
			<c:forEach items="${t_together_65}" var="t_together_65">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${t_together_65.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/t_together_65.jpg"
								alt="T끼리 65">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li>
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${t_together_65.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${t_together_65.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${t_together_65.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${t_together_65.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">oksusu 90여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${t_together_65.fixed_month }</em><span>원</span>
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
								<em class="fColor3">T끼리 한눈에 보기</em> <strong>SKT 고객간 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
							<ul>
									<li class="balloon4"><a href="#35"
										id="t_together_35"><strong>T끼리<br>(35)
										</strong><span class="dLine"><em>550MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#45"
										id="t_together_45"><strong>T끼리<br>(45)
										</strong><span class="dLine"><em>1.1GB<br>
											</em> </span></a></li>
									<li class="balloon2"><a href="#55"
										id="t_together_55"><strong>T끼리<br>(55)
										</strong><span class="dLine"><em>2GB<br>
											</em> </span></a></li>
									<li class="balloon1 on"><a href="#65"
										id="t_together_65"><strong>T끼리<br>(65)
										</strong><span><em>5GB<br><br>
											</em> </span></a></li>
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
									<caption>T끼리, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="15%">
										<col width="15%">
										<col width="18%">
										<col width="10%">
										<col width="23%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">24개월 요금약정 시 이용료(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${t_together}" var="t_together">
											<tr>
												<th scope="row" class="left "><span>${t_together.payment}
														></span></th>
												<td>${t_together.fixed_month}원</td>
												<td>${t_together.fixed_month_dis}원</td>
												<td>${t_together.call }</td>
												<td>${t_together.sms }</td>
												<td>${t_together.data} / ${t_together.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<%--<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기</em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>
										
										<col width="10%">
										<col width="25%">
										<col width="10%">
										<col width="20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col"  rowspan="2">요금제</th>
											<th scope="col" rowspan="2">데이터 옵션</th>
											<th scope="col" colspan="2">특화 혜택</th>

										</tr><tr>
											<th scope="col" width="10%">콘텐츠 할인</th>
											<th scope="col" width="20%">제휴 혜택</th>
										</tr>
									</thead>
									
									<tbody>		
									<c:forEach items="${everyone_unlimited_option1}" var="everyone_unlimited_option1">								
										<tr>
										<th scope="row"><span>${everyone_unlimited_option1.payment } ></span></th>
											<td>${everyone_unlimited_option1.data_option1 }<br>${everyone_unlimited_option1.data_option2 }<br>${everyone_unlimited_option1.data_option3 }</td>
											<td>${everyone_unlimited_option1.contents_sale }</td>
											<td>${everyone_unlimited_option1.partnership_sale }</td>
										</tr>											
									</c:forEach>
									<c:forEach items="${everyone_unlimited_option2}" var="everyone_unlimited_option2">								
										<tr>
										<th scope="row"><span>${everyone_unlimited_option2.payment } ></span></th>
											<td>${everyone_unlimited_option2.data_option1 }<br>${everyone_unlimited_option2.data_option2 }<br>${everyone_unlimited_option2.data_option3 }</td>
											<td>${everyone_unlimited_option2.contents_sale }</td>
											<td>${everyone_unlimited_option2.partnership_sale }</td>
										</tr>											
									</c:forEach>
									</tbody>
								</table> --%>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- t_together_65 -->

			<!-- t_together_55 -->
			<div class="prCont basicArea" id="55">
			<c:forEach items="${t_together_55}" var="t_together_55">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${t_together_55.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/t_together_55.jpg"
								alt="T끼리 55">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li>
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${t_together_55.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${t_together_55.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${t_together_55.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${t_together_55.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">oksusu 90여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${t_together_55.fixed_month }</em><span>원</span>
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
								<em class="fColor3">T끼리 한눈에 보기</em> <strong>SKT 고객간 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
							<ul>
									<li class="balloon4"><a href="#35"
										id="t_together_35"><strong>T끼리<br>(35)
										</strong><span class="dLine"><em>550MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#45"
										id="t_together_45"><strong>T끼리<br>(45)
										</strong><span class="dLine"><em>1.1GB<br>
											</em> </span></a></li>
									<li class="balloon2 on"><a href="#55"
										id="t_together_55"><strong>T끼리<br>(55)
										</strong><span class="dLine"><em>2GB<br>
											</em> </span></a></li>
									<li class="balloon1"><a href="#65"
										id="t_together_65"><strong>T끼리<br>(65)
										</strong><span><em>5GB<br><br>
											</em> </span></a></li>
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
									<caption>T끼리, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="15%">
										<col width="15%">
										<col width="18%">
										<col width="10%">
										<col width="23%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">24개월 요금약정 시 이용료(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${t_together}" var="t_together">
											<tr>
												<th scope="row" class="left "><span>${t_together.payment}
														></span></th>
												<td>${t_together.fixed_month}원</td>
												<td>${t_together.fixed_month_dis}원</td>
												<td>${t_together.call }</td>
												<td>${t_together.sms }</td>
												<td>${t_together.data} / ${t_together.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- everyone_unlimited_55 -->
			
			<!-- t_together_45 -->
			<div class="prCont basicArea" id="45">
			<c:forEach items="${t_together_45}" var="t_together_45">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${t_together_45.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/t_together_45.jpg"
								alt="T끼리 45">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li>
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${t_together_45.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${t_together_45.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${t_together_45.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${t_together_45.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">oksusu 90여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${t_together_45.fixed_month }</em><span>원</span>
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
								<em class="fColor3">T끼리 한눈에 보기</em> <strong>SKT 고객간 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
							<ul>
									<li class="balloon4"><a href="#35"
										id="t_together_35"><strong>T끼리<br>(35)
										</strong><span class="dLine"><em>550MB<br>
											</em></span></a></li>
									<li class="balloon3 on"><a href="#45"
										id="t_together_45"><strong>T끼리<br>(45)
										</strong><span class="dLine"><em>1.1GB<br>
											</em> </span></a></li>
									<li class="balloon2"><a href="#55"
										id="t_together_55"><strong>T끼리<br>(55)
										</strong><span class="dLine"><em>2GB<br>
											</em> </span></a></li>
									<li class="balloon1"><a href="#65"
										id="t_together_65"><strong>T끼리<br>(65)
										</strong><span><em>5GB<br><br>
											</em> </span></a></li>
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
									<caption>T끼리 data, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="15%">
										<col width="15%">
										<col width="18%">
										<col width="10%">
										<col width="23%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">24개월 요금약정 시 이용료(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${t_together}" var="t_together">
											<tr>
												<th scope="row" class="left "><span>${t_together.payment}
														></span></th>
												<td>${t_together.fixed_month}원</td>
												<td>${t_together.fixed_month_dis}원</td>
												<td>${t_together.call }</td>
												<td>${t_together.sms }</td>
												<td>${t_together.data} / ${t_together.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- everyone_unlimited_45 -->
			
			<!-- t_together_35 -->
			<div class="prCont basicArea" id="35">
			<c:forEach items="${t_together_35}" var="t_together_35">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${t_together_35.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/t_together_35.jpg"
								alt="T끼리 35">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea" style="width: 350px">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li>
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>${t_together_35.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${t_together_35.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${t_together_35.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${t_together_35.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">oksusu 90여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${t_together_35.fixed_month }</em><span>원</span>
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
								<em class="fColor3">T끼리 한눈에 보기</em> <strong>SKT 고객간 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
							<ul>
									<li class="balloon4 on"><a href="#35"
										id="t_together_35"><strong>T끼리<br>(35)
										</strong><span class="dLine"><em>550MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#45"
										id="t_together_45"><strong>T끼리<br>(45)
										</strong><span class="dLine"><em>1.1GB<br>
											</em> </span></a></li>
									<li class="balloon2"><a href="#55"
										id="t_together_55"><strong>T끼리<br>(55)
										</strong><span class="dLine"><em>2GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#65"
										id="t_together_65"><strong>T끼리<br>(65)
										</strong><span><em>5GB<br><br>
											</em> </span></a></li>
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
									<caption>T끼리, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="15%">
										<col width="15%">
										<col width="18%">
										<col width="10%">
										<col width="23%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">24개월 요금약정 시 이용료(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${t_together}" var="t_together">
											<tr>
												<th scope="row" class="left "><span>${t_together.payment}
														></span></th>
												<td>${t_together.fixed_month}원</td>
												<td>${t_together.fixed_month_dis}원</td>
												<td>${t_together.call }</td>
												<td>${t_together.sms }</td>
												<td>${t_together.data} / ${t_together.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- t_together_35 -->
			
			
			
			
			</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;
	alert(url);
 */
	

	if(location.href.match('65')){
		// $('div[id=perfect]').css("display", "none");
		$('#65').show();
		$('#55').hide();
		$('#45').hide();
		$('#35').hide();
	}  else if(location.href.match('55')){
		$('#65').hide();
		$('#55').show();
		$('#45').hide();
		$('#35').hide();
	}  else if(location.href.match('45')){
		$('#65').show();
		$('#55').hide();
		$('#45').show();
		$('#35').hide();
	}else{
		$('#65').hide();
		$('#55').hide();
		$('#45').hide();
		$('#35').show();
	}
</script>
</html>