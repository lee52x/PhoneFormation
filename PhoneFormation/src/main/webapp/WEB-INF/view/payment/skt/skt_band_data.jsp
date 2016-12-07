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
		$('a[id=band_data_perfectS]').click(function() {
			$('#perfectS').show();
			$('#perfect').hide();
			$('#6_5g').hide();
			$('#3_5g').hide();
			$('#2_2g').hide();
			$('#1_2g').hide();
			$('#save').hide();
		});
		
		$('a[id=band_data_perfect]').click(function() {
			$('#perfectS').hide();
			$('#perfect').show();
			$('#6_5g').hide();
			$('#3_5g').hide();
			$('#2_2g').hide();
			$('#1_2g').hide();
			$('#save').hide();
		});
		
		$('a[id=band_data_6_5g]').click(function() {
			$('#perfectS').hide();
			$('#perfect').hide();
			$('#6_5g').show();
			$('#3_5g').hide();
			$('#2_2g').hide();
			$('#1_2g').hide();
			$('#save').hide();
		});
		
		$('a[id=band_data_3_5g]').click(function() {
			$('#perfectS').hide();
			$('#perfect').hide();
			$('#6_5g').hide();
			$('#3_5g').show();
			$('#2_2g').hide();
			$('#1_2g').hide();
			$('#save').hide();
		});
		
		$('a[id=band_data_2_2g]').click(function() {
			$('#perfectS').hide();
			$('#perfect').hide();
			$('#6_5g').hide();
			$('#3_5g').hide();
			$('#2_2g').show();
			$('#1_2g').hide();
			$('#save').hide();
		});
		
		$('a[id=band_data_1_2g]').click(function() {
			$('#perfectS').hide();
			$('#perfect').hide();
			$('#6_5g').hide();
			$('#3_5g').hide();
			$('#2_2g').hide();
			$('#1_2g').show();
			$('#save').hide();
		});
		
		$('a[id=band_data_save]').click(function() {
			$('#perfectS').hide();
			$('#perfect').hide();
			$('#6_5g').hide();
			$('#3_5g').hide();
			$('#2_2g').hide();
			$('#1_2g').hide();
			$('#save').show();
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
			<!-- band_data_perfectS -->
			<div class="prCont basicArea" id="perfectS">
			<c:forEach items="${band_data_perfectS}" var="band_data_perfectS">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_perfectS.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_perfectS.jpg"
								alt="band data 퍼펙트S">
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
										<p>${band_data_perfectS.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_perfectS.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 5px">${band_data_perfectS.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_perfectS.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_perfectS.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon7"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1 on"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
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
									<c:forEach items="${band_data_option1}" var="band_data_option1">								
										<tr>
										<th scope="row"><span>${band_data_option1.payment } ></span></th>
											<td>${band_data_option1.data_option1 }<br>${band_data_option1.data_option2 }<br>${band_data_option1.data_option3 }</td>
											<td>${band_data_option1.contents_sale }</td>
											<td>${band_data_option1.partnership_sale }</td>
										</tr>											
									</c:forEach>
									<c:forEach items="${band_data_option2}" var="band_data_option2">								
										<tr>
										<th scope="row"><span>${band_data_option2.payment } ></span></th>
											<td>${band_data_option2.data_option1 }<br>${band_data_option2.data_option2 }<br>${band_data_option2.data_option3 }</td>
											<td>${band_data_option2.contents_sale }</td>
											<td>${band_data_option2.partnership_sale }</td>
										</tr>											
									</c:forEach>
									</tbody>
								</table> --%>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- band_data_perfectS -->
			
			<!-- band_data_perfect -->
			<div class="prCont basicArea" id="perfect">
			<c:forEach items="${band_data_perfect}" var="band_data_perfect">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_perfect.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_perfect.jpg"
								alt="band data 퍼펙트">
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
										<p>${band_data_perfect.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_perfect.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 5px">${band_data_perfect.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_perfect.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_perfect.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon7"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2 on"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							</div>
							
						</div>
					</div>
				</div>
			<!-- band_data_perfect -->
			
			
			<!-- band_data_6_5g -->
			<div class="prCont basicArea" id="6_5g">
			<c:forEach items="${band_data_6_5g}" var="band_data_6_5g">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_6_5g.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_6.5g.jpg"
								alt="band data 6.5G">
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
										<p>${band_data_6_5g.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_6_5g.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 6px">${band_data_6_5g.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_6_5g.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_6_5g.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon7"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3 on"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							</div>
							</div>
							
						</div>
					</div>		
			<!-- band_data_6_5g --> 
			
			
			<!-- band_data_3_5g -->
			<div class="prCont basicArea" id="3_5g">
			<c:forEach items="${band_data_3_5g}" var="band_data_3_5g">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_3_5g.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_3.5g.jpg"
								alt="band data 3.5G">
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
										<p>${band_data_3_5g.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_3_5g.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${band_data_3_5g.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_3_5g.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_3_5g.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon7"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4 on"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							</div>
							</div>
							
						</div>
					</div>		
			<!-- band_data_3_5g --> 
			
			<!-- band_data_2_2g -->
			<div class="prCont basicArea" id="2_2g">
			<c:forEach items="${band_data_2_2g}" var="band_data_2_2g">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_2_2g.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_2.2g.jpg"
								alt="band data 2.2G">
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
										<p>${band_data_2_2g.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_2_2g.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${band_data_2_2g.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_2_2g.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_2_2g.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon7"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5 on"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							</div>
							</div>
							
						</div>
					</div>		
			<!-- band_data_2_2g --> 
			
			<!-- band_data_1_2g -->
			<div class="prCont basicArea" id="1_2g">
			<c:forEach items="${band_data_1_2g}" var="band_data_1_2g">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_1_2g.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_1.2g.jpg"
								alt="band data 1.2G">
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
										<p>${band_data_1_2g.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_1_2g.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${band_data_1_2g.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_1_2g.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_1_2g.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
									<ul>
									<li class="balloon7"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6 on"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							</div>
							</div>
							
						</div>
					</div>		
			<!-- band_data_1_2g --> 
			
			<!-- band_data_save -->
			<div class="prCont basicArea" id="save">
			<c:forEach items="${band_data_save}" var="band_data_save">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${band_data_save.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/band_data_save.jpg"
								alt="band data 세이브">
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
										<p>${band_data_save.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${band_data_save.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${band_data_save.call }</p>
									</div> <span>무제한<li></span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${band_data_save.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">데이터 옵션 선택 가능<br>벅스 익스트리밍 무료<br>파리바게뜨 T페이 더블할인</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${band_data_save.fixed_month }</em><span>원</span>
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
								<em class="fColor3">band data 한눈에 보기</em> <strong>데이터, 콘텐츠, 제휴 할인을 한 방에!</strong>
							</h3>
							<p class="prCopy">내게 맞는 데이터 혜택으로 골라 쓰고, 벅스 익스트리밍 무료에 T페이 더블할인 혜택까지 누려보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
									<ul>
									<li class="balloon7 on"><a href="#save"
										id="band_data_save"><strong>band data<br>(세이브)
										</strong><span class="dLine"><em>300MB
											</em></span></a></li>
									<li class="balloon6"><a href="#1_2g"
										id="band_data_1_2g"><strong>band data<br>(1.2GB)
										</strong><span class="dLine"><em>1.2GB
											</em></span></a></li>
									<li class="balloon5"><a href="#2_2g"
										id="band_data_2_2g"><strong>band data<br>(2.2GB)
										</strong><span class="dLine"><em>2.2GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#3_5g"
										id="band_data_3_5g"><strong>band data<br>(3.5GB)
										</strong><span class="dLine"><em>3.5GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#6_5g"
										id="band_data_6_5g"><strong>band data<br>(6.5GB)
										</strong><span class="dLine"><em>6.5GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#perfect"
										id="band_data_perfect"><strong>band data<br>(퍼펙트)
										</strong><span><em>11GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#perfectS"
										id="band_data_perfectS"><strong>band data<br>(퍼펙트S)
										</strong><span><em>16GB<br>
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
										<col width="15%">
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터 / 추가 데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${band_data}" var="band_data">
											<tr>
												<th scope="row" class="left "><span>${band_data.payment}
														></span></th>
												<td>${band_data.fixed_month}원</td>
												<td>${band_data.call }</td>
												<td>${band_data.sms }</td>
												<td>${band_data.data} / ${band_data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							</div>
							</div>
							
						</div>
					</div>		
			<!-- band_data_save --> 
			
			</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;
	alert(url);
 */
	
	
	if(location.href.match('S')){
		// $('div[id=perfect]').css("display", "none");
		$('#perfectS').css("display","block");
		$('#perfect').css("display","none");
		$('#6_5g').css("display","none");
		$('#3_5g').css("display","none");
		$('#2_2g').css("display","none");
		$('#1_2g').css("display","none");
		$('#save').css("display","none");
	}  else if(location.href.match('0%ED%8D%BC%ED%8E%99%ED%8A%B8')){
		$('#perfectS').css("display","none");
		$('#perfect').css("display","block");
		$('#6_5g').css("display","none");
		$('#3_5g').css("display","none");
		$('#2_2g').css("display","none");
		$('#1_2g').css("display","none");
		$('#save').css("display","none");
	}  else if(location.href.match('6.5G')){
		$('#perfectS').css("display","none");
		$('#perfect').css("display","none");
		$('#6_5g').css("display","block");
		$('#3_5g').css("display","none");
		$('#2_2g').css("display","none");
		$('#1_2g').css("display","none");
		$('#save').css("display","none");
	}else if(location.href.match('3.5G')){
		$('#perfectS').css("display","none");
		$('#perfect').css("display","none");
		$('#6_5g').css("display","none");
		$('#3_5g').css("display","block");
		$('#2_2g').css("display","none");
		$('#1_2g').css("display","none");
		$('#save').css("display","none");
	}else if(location.href.match('2.2G')){
		$('#perfectS').css("display","none");
		$('#perfect').css("display","none");
		$('#6_5g').css("display","none");
		$('#3_5g').css("display","none");
		$('#2_2g').css("display","block");
		$('#1_2g').css("display","none");
		$('#save').css("display","none");
	}else if(location.href.match('1.2G')){
		$('#perfectS').css("display","none");
		$('#perfect').css("display","none");
		$('#6_5g').css("display","none");
		$('#3_5g').css("display","none");
		$('#2_2g').css("display","none");
		$('#1_2g').css("display","block");
		$('#save').css("display","none");
	}else{
		$('#perfectS').css("display","none");
		$('#perfect').css("display","none");
		$('#6_5g').css("display","none");
		$('#3_5g').css("display","none");
		$('#2_2g').css("display","none");
		$('#1_2g').css("display","none");
		$('#save').css("display","block");
	}
	
</script>
</html>