<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - LG 상세페이지</title>
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
		$('a[id=66]').click(function() {
			$('#dataNormal').hide();
			$('#data13').hide();
			$('#data23').hide();
			$('#data36').hide();
			$('#data66').show();
		});
		
		$('a[id=36]').click(function() {
			$('#dataNormal').hide();
			$('#data13').hide();
			$('#data23').hide();
			$('#data36').show();
			$('#data66').hide();
		});
		
		$('a[id=23]').click(function() {
			$('#dataNormal').hide();
			$('#data13').hide();
			$('#data23').show();
			$('#data36').hide();
			$('#data66').hide();
		});
		
		$('a[id=13]').click(function() {
			$('#dataNormal').hide();
			$('#data13').show();
			$('#data23').hide();
			$('#data36').hide();
			$('#data66').hide();
		});
		
		$('a[id=normal]').click(function() {
			$('#dataNormal').show();
			$('#data13').hide();
			$('#data23').hide();
			$('#data36').hide();
			$('#data66').hide();
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
            	<iframe width="854" height="480" src="https://www.youtube.com/embed/MmhCCyggJys" frameborder="0" allowfullscreen></iframe>
            </div>
			<!-- 기본정보 -->
			<!-- 2016.06.23 수정 -->
			<!-- dataNormal -->
			<div class="prCont basicArea" id="dataNormal">
			<c:forEach items="${dataNormal}" var="dataNormal">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${dataNormal.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/dataNormal.png"
								alt="데이터 일반">
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
										<p>${dataNormal.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${dataNormal.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${dataNormal.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${dataNormal.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${dataNormal.fixed_month }</em><span>원</span>
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
								<em class="fColor3">데이터 스폐셜 요금제, 한눈에 보기</em> <strong>음성, 문자는 기본! 데이터는 골라쓰는 새로운 요금제</strong>
							</h3>
							<p class="prCopy">데이터를 쓰고 싶은 만큼 골라 사용하며 비디오포털 혜택까지</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5 on"><a href="#dataNormal"
										id="normal"><strong>데이터<br>(일반)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#data13"
										id="13"><strong>데이터<br>(1.3)
										</strong><span class="dLine"><em>1.3GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#data23"
										id="23"><strong>데이터<br>(2.3)
										</strong><span class="dLine"><em>2.3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#data36"
										id="36"><strong>데이터<br>(36)
										</strong><span><em>3.6GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#data66"
										id="66"><strong>데이터<br>(66)
										</strong><span><em>6.6GB<br>
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
									<caption>데이터 요금제, 한눈에 보기</caption>
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
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${data}" var="data">
											<tr>
												<th scope="row" class="left "><span>${data.payment}
														></span></th>
												<td>${data.fixed_month}원</td>
												<td>${data.call }</td>
												<td>${data.sms }</td>
												<td>${data.data} / ${data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
									<div style="margin-left: 20%; text-align: left;">
									<b>※  유무선 기본제공 : 무선/유선/인터넷전화 : 정상 이용 시 사용량에 관계없이 무료로 제공<br>
										* 무선(010,011,016,017,018,019), 유선(지역번호 02,03X,04X,05X,06X), 인터넷전화<br>
										그 외 통화 : 합산하여 아래의 제공 통화량 내에서 이용가능<br>
										* 그 외 통화 : 무선/유선/인터넷전화가 아닌 모든 통화(전국대표번호(15XX,16XX), 평생개인번호(050X), 주파수공용통신(013) 등)<br>
										 - 제공 통화랑: 데이터 일반 / 1.3 /2.3 /3.6 50분, 데이터 6.6 : 300분 , 문자 : 사업자 구분없이 기본제공</b>
									</div>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="30%">
										<col width="30%">
										<col width="40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 일반<br></span></th>
											<td>300MB</td>
											<td>비디오 포털 (TV light)</td>
										</tr>
										<tr>
											<th>데이터 1.3</th>
											<th>600MB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 2.3</th>
											<th>1.1GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 3.6</th>
											<th>2.2GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 6.6</th>
											<th>3.3G</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
									</tbody>
								</table>
								<br>
								<b style="color: red; text-align: left;"> * 데이터 일반 / 1.3 /2.3 /3.6 : TV Light 기본제공(TV Light : TV 표준에서 지상파 및 CJ계열 제외) / 데이터 6.6 : TV 표준 기본제공</b>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- dataNormal -->
			
			
			<!-- data13 -->
			<div class="prCont basicArea" id="data13">
			<c:forEach items="${data13}" var="data13">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${data13.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/data13.png"
								alt="데이터 1.3">
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
										<p>${data13.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${data13.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${data13.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${data13.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${data13.fixed_month }</em><span>원</span>
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
								<em class="fColor3">데이터 스폐셜 요금제, 한눈에 보기</em> <strong>음성, 문자는 기본! 데이터는 골라쓰는 새로운 요금제</strong>
							</h3>
							<p class="prCopy">데이터를 쓰고 싶은 만큼 골라 사용하며 비디오포털 혜택까지</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#dataNormal"
										id="normal"><strong>데이터<br>(일반)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4 on"><a href="#data13"
										id="13"><strong>데이터<br>(1.3)
										</strong><span class="dLine"><em>1.3GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#data23"
										id="23"><strong>데이터<br>(2.3)
										</strong><span class="dLine"><em>2.3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#data36"
										id="36"><strong>데이터<br>(36)
										</strong><span><em>3.6GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#data66"
										id="66"><strong>데이터<br>(66)
										</strong><span><em>6.6GB<br>
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
									<caption>데이터 요금제, 한눈에 보기</caption>
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
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${data}" var="data">
											<tr>
												<th scope="row" class="left "><span>${data.payment}
														></span></th>
												<td>${data.fixed_month}원</td>
												<td>${data.call }</td>
												<td>${data.sms }</td>
												<td>${data.data} / ${data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
								<div style="margin-left: 20%; text-align: left;">
									<b>※  유무선 기본제공 : 무선/유선/인터넷전화 : 정상 이용 시 사용량에 관계없이 무료로 제공<br>
										* 무선(010,011,016,017,018,019), 유선(지역번호 02,03X,04X,05X,06X), 인터넷전화<br>
										그 외 통화 : 합산하여 아래의 제공 통화량 내에서 이용가능<br>
										* 그 외 통화 : 무선/유선/인터넷전화가 아닌 모든 통화(전국대표번호(15XX,16XX), 평생개인번호(050X), 주파수공용통신(013) 등)<br>
										* 음성 : 제공 통화랑 50분 , 문자 : 사업자 구분없이 기본제공</b>
								</div>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="30%">
										<col width="30%">
										<col width="40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 일반<br></span></th>
											<td>300MB</td>
											<td>비디오 포털 (TV light)</td>
										</tr>
										<tr>
											<th>데이터 1.3</th>
											<th>600MB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 2.3</th>
											<th>1.1GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 3.6</th>
											<th>2.2GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 6.6</th>
											<th>3.3G</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
									</tbody>
								</table>
								<br>
								<b style="color: red; text-align: left;"> * 데이터 일반 / 1.3 /2.3 /3.6 : TV Light 기본제공(TV Light : TV 표준에서 지상파 및 CJ계열 제외) / 데이터 6.6 : TV 표준 기본제공</b>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- data13 -->
			
			
			<!-- data23 -->
			<div class="prCont basicArea" id="data23">
			<c:forEach items="${data23}" var="data23">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${data23.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/data23.png"
								alt="데이터 2.3">
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
										<p>${data23.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${data23.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${data23.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${data23.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${data23.fixed_month }</em><span>원</span>
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
								<em class="fColor3">데이터 스폐셜 요금제, 한눈에 보기</em> <strong>음성, 문자는 기본! 데이터는 골라쓰는 새로운 요금제</strong>
							</h3>
							<p class="prCopy">데이터를 쓰고 싶은 만큼 골라 사용하며 비디오포털 혜택까지</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#dataNormal"
										id="normal"><strong>데이터<br>(일반)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#data13"
										id="13"><strong>데이터<br>(1.3)
										</strong><span class="dLine"><em>1.3GB<br>
											</em></span></a></li>
									<li class="balloon3 on"><a href="#data23"
										id="23"><strong>데이터<br>(2.3)
										</strong><span class="dLine"><em>2.3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#data36"
										id="36"><strong>데이터<br>(36)
										</strong><span><em>3.6GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#data66"
										id="66"><strong>데이터<br>(66)
										</strong><span><em>6.6GB<br>
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
									<caption>데이터 요금제, 한눈에 보기</caption>
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
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${data}" var="data">
											<tr>
												<th scope="row" class="left "><span>${data.payment}
														></span></th>
												<td>${data.fixed_month}원</td>
												<td>${data.call }</td>
												<td>${data.sms }</td>
												<td>${data.data} / ${data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
								<div style="margin-left: 20%; text-align: left;">
									<b>※  유무선 기본제공 : 무선/유선/인터넷전화 : 정상 이용 시 사용량에 관계없이 무료로 제공<br>
										* 무선(010,011,016,017,018,019), 유선(지역번호 02,03X,04X,05X,06X), 인터넷전화<br>
										그 외 통화 : 합산하여 아래의 제공 통화량 내에서 이용가능<br>
										* 그 외 통화 : 무선/유선/인터넷전화가 아닌 모든 통화(전국대표번호(15XX,16XX), 평생개인번호(050X), 주파수공용통신(013) 등)<br>
										* 음성 : 제공 통화랑 50분 , 문자 : 사업자 구분없이 기본제공</b>
								</div>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="30%">
										<col width="30%">
										<col width="40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 일반<br></span></th>
											<td>300MB</td>
											<td>비디오 포털 (TV light)</td>
										</tr>
										<tr>
											<th>데이터 1.3</th>
											<th>600MB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 2.3</th>
											<th>1.1GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 3.6</th>
											<th>2.2GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 6.6</th>
											<th>3.3G</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
									</tbody>
								</table>
								<br>
								<b style="color: red; text-align: left;"> * 데이터 일반 / 1.3 /2.3 /3.6 : TV Light 기본제공(TV Light : TV 표준에서 지상파 및 CJ계열 제외) / 데이터 6.6 : TV 표준 기본제공</b>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- data23 -->
			
			
			<!-- data36 -->
			<div class="prCont basicArea" id="data36">
			<c:forEach items="${data36}" var="data36">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${data36.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/data36.png"
								alt="데이터 3.6">
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
										<p>${data36.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${data36.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${data36.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${data36.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${data36.fixed_month }</em><span>원</span>
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
								<em class="fColor3">데이터 스폐셜 요금제, 한눈에 보기</em> <strong>음성, 문자는 기본! 데이터는 골라쓰는 새로운 요금제</strong>
							</h3>
							<p class="prCopy">데이터를 쓰고 싶은 만큼 골라 사용하며 비디오포털 혜택까지</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#dataNormal"
										id="normal"><strong>데이터<br>(일반)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#data13"
										id="13"><strong>데이터<br>(1.3)
										</strong><span class="dLine"><em>1.3GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#data23"
										id="23"><strong>데이터<br>(2.3)
										</strong><span class="dLine"><em>2.3GB<br>
											</em></span></a></li>
									<li class="balloon2 on"><a href="#data36"
										id="36"><strong>데이터<br>(36)
										</strong><span><em>3.6GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#data66"
										id="66"><strong>데이터<br>(66)
										</strong><span><em>6.6GB<br>
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
									<caption>데이터 요금제, 한눈에 보기</caption>
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
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${data}" var="data">
											<tr>
												<th scope="row" class="left "><span>${data.payment}
														></span></th>
												<td>${data.fixed_month}원</td>
												<td>${data.call }</td>
												<td>${data.sms }</td>
												<td>${data.data} / ${data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
								<div style="margin-left: 20%; text-align: left;">
									<b>※  유무선 기본제공 : 무선/유선/인터넷전화 : 정상 이용 시 사용량에 관계없이 무료로 제공<br>
										* 무선(010,011,016,017,018,019), 유선(지역번호 02,03X,04X,05X,06X), 인터넷전화<br>
										그 외 통화 : 합산하여 아래의 제공 통화량 내에서 이용가능<br>
										* 그 외 통화 : 무선/유선/인터넷전화가 아닌 모든 통화(전국대표번호(15XX,16XX), 평생개인번호(050X), 주파수공용통신(013) 등)<br>
										* 음성 : 제공 통화랑 50분 , 문자 : 사업자 구분없이 기본제공</b>
								</div>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="30%">
										<col width="30%">
										<col width="40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 일반<br></span></th>
											<td>300MB</td>
											<td>비디오 포털 (TV light)</td>
										</tr>
										<tr>
											<th>데이터 1.3</th>
											<th>600MB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 2.3</th>
											<th>1.1GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 3.6</th>
											<th>2.2GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 6.6</th>
											<th>3.3G</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
									</tbody>
								</table>
								<br>
								<b style="color: red; text-align: left;"> * 데이터 일반 / 1.3 /2.3 /3.6 : TV Light 기본제공(TV Light : TV 표준에서 지상파 및 CJ계열 제외) / 데이터 6.6 : TV 표준 기본제공</b>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- data36 -->
			
			
			<!-- data66 -->
			<div class="prCont basicArea" id="data66">
			<c:forEach items="${data66}" var="data66">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${data66.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/data66.png"
								alt="데이터 6.6">
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
										<p>${data66.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${data66.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${data66.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${data66.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${data66.fixed_month }</em><span>원</span>
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
								<em class="fColor3">데이터 스폐셜 요금제, 한눈에 보기</em> <strong>음성, 문자는 기본! 데이터는 골라쓰는 새로운 요금제</strong>
							</h3>
							<p class="prCopy">데이터를 쓰고 싶은 만큼 골라 사용하며 비디오포털 혜택까지</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#dataNormal"
										id="normal"><strong>데이터<br>(일반)
										</strong><span class="dLine"><em>300MB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#data13"
										id="13"><strong>데이터<br>(1.3)
										</strong><span class="dLine"><em>1.3GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#data23"
										id="23"><strong>데이터<br>(2.3)
										</strong><span class="dLine"><em>2.3GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#data36"
										id="36"><strong>데이터<br>(36)
										</strong><span><em>3.6GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#data66"
										id="66"><strong>데이터<br>(66)
										</strong><span><em>6.6GB<br>
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
									<caption>데이터 요금제, 한눈에 보기</caption>
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
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${data}" var="data">
											<tr>
												<th scope="row" class="left "><span>${data.payment}
														></span></th>
												<td>${data.fixed_month}원</td>
												<td>${data.call }</td>
												<td>${data.sms }</td>
												<td>${data.data} / ${data.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
								<div style="margin-left: 20%; text-align: left;">
									<b>※  유무선 기본제공 : 무선/유선/인터넷전화 : 정상 이용 시 사용량에 관계없이 무료로 제공<br>
										* 무선(010,011,016,017,018,019), 유선(지역번호 02,03X,04X,05X,06X), 인터넷전화<br>
										그 외 통화 : 합산하여 아래의 제공 통화량 내에서 이용가능<br>
										* 그 외 통화 : 무선/유선/인터넷전화가 아닌 모든 통화(전국대표번호(15XX,16XX), 평생개인번호(050X), 주파수공용통신(013) 등)<br>
										* 음성 : 제공 통화랑 50분 , 문자 : 사업자 구분없이 기본제공</b>
								</div>
							</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="30%">
										<col width="30%">
										<col width="40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 일반<br></span></th>
											<td>300MB</td>
											<td>비디오 포털 (TV light)</td>
										</tr>
										<tr>
											<th>데이터 1.3</th>
											<th>600MB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 2.3</th>
											<th>1.1GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 3.6</th>
											<th>2.2GB</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
										<tr>
											<th>데이터 6.6</th>
											<th>3.3G</th>
											<td>비디오 포털 (TV light)</td>
										</tr>									
									</tbody>
								</table>
								<br>
								<b style="color: red; text-align: left;"> * 데이터 일반 / 1.3 /2.3 /3.6 : TV Light 기본제공(TV Light : TV 표준에서 지상파 및 CJ계열 제외) / 데이터 6.6 : TV 표준 기본제공</b>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- data66 -->
			
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	

	if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%206.6')){
		// $('div[id=perfect]').css("display", "none");
		$('#data66').show();
		$('#data36').hide();
		$('#data23').hide();
		$('#data13').hide();
		$('#dataNormal').hide();
	}  else if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%203.6')){
		$('#data66').hide();
		$('#data36').show();
		$('#data23').hide();
		$('#data13').hide();
		$('#dataNormal').hide();
	}  else if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%202.3')){
		$('#data66').show();
		$('#data36').hide();
		$('#data23').show();
		$('#data13').hide();
		$('#dataNormal').hide();
	}else if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%201.3')){
		$('#data66').hide();
		$('#data36').hide();
		$('#data23').hide();
		$('#data13').show();
		$('#dataNormal').hide();
	}else {
		$('#data66').hide();
		$('#data36').hide();
		$('#data23').hide();
		$('#data13').hide();
		$('#dataNormal').show();
	}

	

</script>
</html>