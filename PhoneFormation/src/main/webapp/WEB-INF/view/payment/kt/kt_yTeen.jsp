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
		$('a[id=20]').click(function() {
			$('#yTeen38').hide();
			$('#yTeen32').hide();
			$('#yTeen27').hide();
			$('#yTeen20').show();
		});
		
		$('a[id=27]').click(function() {
			$('#yTeen38').hide();
			$('#yTeen32').hide();
			$('#yTeen27').show();
			$('#yTeen20').hide();
		});
		
		$('a[id=32]').click(function() {
			$('#yTeen38').hide();
			$('#yTeen32').show();
			$('#limited61').hide();
			$('#limited51').hide();
		});
		
		$('a[id=38]').click(function() {
			$('#yTeen38').show();
			$('#yTeen32').hide();
			$('#yTeen27').hide();
			$('#yTeen20').hide();
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
			<!-- yTeen38 -->
			<div class="prCont basicArea" id="yTeen38">
			<c:forEach items="${yTeen38}" var="yTeen38">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${yTeen38.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/yTeen38.png"
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
										<p>${yTeen38.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${yTeen38.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${yTeen38.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${yTeen38.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">데이터 2배쓰기<br>데이터 바꿔쓰기<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${yTeen38.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y틴 요금제 한눈에 보기</em> <strong>만 18세 이하를 위한 데이터 2배 늘려 쓰고 콘텐츠로도 바꿔쓰는 요금제</strong>
							</h3>
							<p class="prCopy">데이터 2배쓰기, 데이터 바꿔쓰기 등 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#yTeen20"
										id="20"><strong>Y틴<br>(20)
										</strong><span class="dLine"><em>1400MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#yTeen27"
										id="27"><strong>Y틴<br>(67)
										</strong><span class="dLine"><em>2000MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#yTeen32"
										id="32"><strong>Y틴<br>(32)
										</strong><span><em>3600MB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#yTeen38"
										id="38"><strong>Y틴<br>(38)
										</strong><span><em>4700MB<br>
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
										<c:forEach items="${yTeen}" var="yTeen">
											<tr>
												<th scope="row" class="left "><span>${yTeen.payment}
														></span></th>
												<td>${yTeen.fixed_month}원</td>
												<td>${yTeen.call }</td>
												<td>${yTeen.sms }</td>
												<td>${yTeen.data}  ${yTeen.extra_data}</td>
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
										<col width="40%">
										<col width="40%">
										
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">2배쓰기</th>
											<th scope="col">바꿔쓰기</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>Y틴 요금제<br></span></th>
											<td>설정 시 데이터 2배 이용<br>(최대 2Mbps 속도 제어)<br><br>
											<b style="color: red; font-size: 12px;"> * 설정 시 데이터 2배로 이용 (데이터 차감량 50%)</b>
											</td>
											<td><br>설정 시 해당 서비스<br>무료 이용(데이터 차감)<br><br>
											음성 매일 10시간<br>2200MB (45056알)<br><br>
											지니팩<br>300MB (6,144알)<br><br>
											EBS데일리팩<br>600MB (12288알)<br><br>
											My time plan<br>500MB (10,240알)<br><br>
											<b style="color: red; font-size: 12px;"> * 제공 데이터(기본알) 차감을 통해 추가 요금 없이 콘텐츠/음성 이용</b>
											</td>
																		
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- yTeen38 -->
			
			<!-- yTeen32 -->
			<div class="prCont basicArea" id="yTeen32">
			<c:forEach items="${yTeen32}" var="yTeen32">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${yTeen32.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/yTeen32.png"
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
										<p>${yTeen32.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${yTeen32.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${yTeen32.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${yTeen32.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">데이터 2배쓰기<br>데이터 바꿔쓰기<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${yTeen32.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y틴 요금제 한눈에 보기</em> <strong>만 18세 이하를 위한 데이터 2배 늘려 쓰고 콘텐츠로도 바꿔쓰는 요금제</strong>
							</h3>
							<p class="prCopy">데이터 2배쓰기, 데이터 바꿔쓰기 등 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#yTeen20"
										id="20"><strong>Y틴<br>(20)
										</strong><span class="dLine"><em>1400MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#yTeen27"
										id="27"><strong>Y틴<br>(67)
										</strong><span class="dLine"><em>2000MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#yTeen32"
										id="32"><strong>Y틴<br>(32)
										</strong><span><em>3600MB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#yTeen38"
										id="38"><strong>Y틴<br>(38)
										</strong><span><em>4700MB<br>
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
										<c:forEach items="${yTeen}" var="yTeen">
											<tr>
												<th scope="row" class="left "><span>${yTeen.payment}
														></span></th>
												<td>${yTeen.fixed_month}원</td>
												<td>${yTeen.call }</td>
												<td>${yTeen.sms }</td>
												<td>${yTeen.data}  ${yTeen.extra_data}</td>
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
										<col width="40%">
										<col width="40%">
										
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">2배쓰기</th>
											<th scope="col">바꿔쓰기</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>Y틴 요금제<br></span></th>
											<td>설정 시 데이터 2배 이용<br>(최대 2Mbps 속도 제어)<br><br>
											<b style="color: red; font-size: 12px;"> * 설정 시 데이터 2배로 이용 (데이터 차감량 50%)</b>
											</td>
											<td><br>설정 시 해당 서비스<br>무료 이용(데이터 차감)<br><br>
											음성 매일 10시간<br>2200MB (45056알)<br><br>
											지니팩<br>300MB (6,144알)<br><br>
											EBS데일리팩<br>600MB (12288알)<br><br>
											My time plan<br>500MB (10,240알)<br><br>
											<b style="color: red; font-size: 12px;"> * 제공 데이터(기본알) 차감을 통해 추가 요금 없이 콘텐츠/음성 이용</b>
											</td>
																		
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- yTeen32 -->
			
			<!-- yTeen27 -->
			<div class="prCont basicArea" id="yTeen27">
			<c:forEach items="${yTeen27}" var="yTeen27">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${yTeen27.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/yTeen27.png"
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
										<p>${yTeen27.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${yTeen27.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${yTeen27.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${yTeen27.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">데이터 2배쓰기<br>데이터 바꿔쓰기<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${yTeen27.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y틴 요금제 한눈에 보기</em> <strong>만 18세 이하를 위한 데이터 2배 늘려 쓰고 콘텐츠로도 바꿔쓰는 요금제</strong>
							</h3>
							<p class="prCopy">데이터 2배쓰기, 데이터 바꿔쓰기 등 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#yTeen20"
										id="20"><strong>Y틴<br>(20)
										</strong><span class="dLine"><em>1400MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#yTeen27"
										id="27"><strong>Y틴<br>(67)
										</strong><span class="dLine"><em>2000MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#yTeen32"
										id="32"><strong>Y틴<br>(32)
										</strong><span><em>3600MB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#yTeen38"
										id="38"><strong>Y틴<br>(38)
										</strong><span><em>4700MB<br>
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
										<c:forEach items="${yTeen}" var="yTeen">
											<tr>
												<th scope="row" class="left "><span>${yTeen.payment}
														></span></th>
												<td>${yTeen.fixed_month}원</td>
												<td>${yTeen.call }</td>
												<td>${yTeen.sms }</td>
												<td>${yTeen.data}  ${yTeen.extra_data}</td>
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
										<col width="40%">
										<col width="40%">
										
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">2배쓰기</th>
											<th scope="col">바꿔쓰기</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>Y틴 요금제<br></span></th>
											<td>설정 시 데이터 2배 이용<br>(최대 2Mbps 속도 제어)<br><br>
											<b style="color: red; font-size: 12px;"> * 설정 시 데이터 2배로 이용 (데이터 차감량 50%)</b>
											</td>
											<td><br>설정 시 해당 서비스<br>무료 이용(데이터 차감)<br><br>
											음성 매일 10시간<br>2200MB (45056알)<br><br>
											지니팩<br>300MB (6,144알)<br><br>
											EBS데일리팩<br>600MB (12288알)<br><br>
											My time plan<br>500MB (10,240알)<br><br>
											<b style="color: red; font-size: 12px;"> * 제공 데이터(기본알) 차감을 통해 추가 요금 없이 콘텐츠/음성 이용</b>
											</td>
																		
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- yTeen27 -->
			
			<!-- yTeen20 -->
			<div class="prCont basicArea" id="yTeen20">
			<c:forEach items="${yTeen20}" var="yTeen20">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${yTeen20.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/kt/yTeen20.png"
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
										<p>${yTeen20.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${yTeen20.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${yTeen20.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${yTeen20.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">KT만의 혜택</strong>
							<div class="txt">데이터 2배쓰기<br>데이터 바꿔쓰기<br>요금약정, 요금위약금 없는 순액요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${yTeen20.fixed_month }</em><span>원</span>
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
								<em class="fColor3">Y틴 요금제 한눈에 보기</em> <strong>만 18세 이하를 위한 데이터 2배 늘려 쓰고 콘텐츠로도 바꿔쓰는 요금제</strong>
							</h3>
							<p class="prCopy">데이터 2배쓰기, 데이터 바꿔쓰기 등 혜택을 누리세요</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon4"><a href="#yTeen20"
										id="20"><strong>Y틴<br>(20)
										</strong><span class="dLine"><em>1400MB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#yTeen27"
										id="27"><strong>Y틴<br>(67)
										</strong><span class="dLine"><em>2000MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#yTeen32"
										id="32"><strong>Y틴<br>(32)
										</strong><span><em>3600MB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#yTeen38"
										id="38"><strong>Y틴<br>(38)
										</strong><span><em>4700MB<br>
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
										<c:forEach items="${yTeen}" var="yTeen">
											<tr>
												<th scope="row" class="left "><span>${yTeen.payment}
														></span></th>
												<td>${yTeen.fixed_month}원</td>
												<td>${yTeen.call }</td>
												<td>${yTeen.sms }</td>
												<td>${yTeen.data}  ${yTeen.extra_data}</td>
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
										<col width="40%">
										<col width="40%">
										
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">2배쓰기</th>
											<th scope="col">바꿔쓰기</th>
									</thead>
									
									<tbody>		
													
										<tr>
										<th scope="row"><span>Y틴 요금제<br></span></th>
											<td>설정 시 데이터 2배 이용<br>(최대 2Mbps 속도 제어)<br><br>
											<b style="color: red; font-size: 12px;"> * 설정 시 데이터 2배로 이용 (데이터 차감량 50%)</b>
											</td>
											<td><br>설정 시 해당 서비스<br>무료 이용(데이터 차감)<br><br>
											음성 매일 10시간<br>2200MB (45056알)<br><br>
											지니팩<br>300MB (6,144알)<br><br>
											EBS데일리팩<br>600MB (12288알)<br><br>
											My time plan<br>500MB (10,240알)<br><br>
											<b style="color: red; font-size: 12px;"> * 제공 데이터(기본알) 차감을 통해 추가 요금 없이 콘텐츠/음성 이용</b>
											</td>
																		
									</tbody>
								</table>
								
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- yTeen20 -->
			
			
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	

	if(location.href.match('Y%ED%8B%B4%2038')){
		// $('div[id=perfect]').css("display", "none");
		$('#yTeen38').show();
		$('#yTeen32').hide();
		$('#yTeen27').hide();
		$('#yTeen20').hide();
	}  else if(location.href.match('Y%ED%8B%B4%2032')){
		$('#yTeen38').hide();
		$('#yTeen32').show();
		$('#yTeen27').hide();
		$('#yTeen20').hide();
	}  else if(location.href.match('Y%ED%8B%B4%2027')){
		$('#yTeen38').hide();
		$('#yTeen32').hide();
		$('#yTeen27').show();
		$('#yTeen20').hide();
	}else{
		$('#yTeen38').hide();
		$('#yTeen32').hide();
		$('#yTeen27').hide();
		$('#yTeen20').show();
	}

	

</script>
</html>