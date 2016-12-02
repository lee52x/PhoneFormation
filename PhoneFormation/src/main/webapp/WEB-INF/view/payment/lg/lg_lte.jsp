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
		$('a[id=34]').click(function() {
			$('#lte34').show();
			$('#lte42').hide();
			$('#lte52').hide();
			$('#lte62').hide();
			$('#lte72').hide();
			$('#lte85').hide();
			$('#lte100').hide();
			$('#lte120').hide();
		});
		
		$('a[id=42]').click(function() {
			$('#lte34').hide();
			$('#lte42').show();
			$('#lte52').hide();
			$('#lte62').hide();
			$('#lte72').hide();
			$('#lte85').hide();
			$('#lte100').hide();
			$('#lte120').hide();
		});
		
		$('a[id=52]').click(function() {
			$('#lte34').hide();
			$('#lte42').hide();
			$('#lte52').show();
			$('#lte62').hide();
			$('#lte72').hide();
			$('#lte85').hide();
			$('#lte100').hide();
			$('#lte120').hide();
		});
		
		$('a[id=62]').click(function() {
			$('#lte34').hide();
			$('#lte42').hide();
			$('#lte52').hide();
			$('#lte62').show();
			$('#lte72').hide();
			$('#lte85').hide();
			$('#lte100').hide();
			$('#lte120').hide();
		});
		
		$('a[id=72]').click(function() {
			$('#lte34').hide();
			$('#lte42').hide();
			$('#lte52').hide();
			$('#lte62').hide();
			$('#lte72').show();
			$('#lte85').hide();
			$('#lte100').hide();
			$('#lte120').hide();
		});
		
		$('a[id=85]').click(function() {
			$('#lte34').hide();
			$('#lte42').hide();
			$('#lte52').hide();
			$('#lte62').hide();
			$('#lte72').hide();
			$('#lte85').show();
			$('#lte100').hide();
			$('#lte120').hide();
		});
		
		$('a[id=100]').click(function() {
			$('#lte34').hide();
			$('#lte42').hide();
			$('#lte52').hide();
			$('#lte62').hide();
			$('#lte72').hide();
			$('#lte85').hide();
			$('#lte100').show();
			$('#lte120').hide();
		});
		
		$('a[id=120]').click(function() {
			$('#lte34').hide();
			$('#lte42').hide();
			$('#lte52').hide();
			$('#lte62').hide();
			$('#lte72').hide();
			$('#lte85').hide();
			$('#lte100').hide();
			$('#lte120').show();
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
			<!-- lte34 -->
			<div class="prCont basicArea" id="lte34">
			<c:forEach items="${lte34}" var="lte34">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte34.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte34.png"
								alt="LTE 시니어">
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
										<p>${lte34.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte34.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte34.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte34.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte34.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8 on"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
							<%-- <!-- 추가혜택있을때 사용 -->
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
							</div> --%>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte34 -->
			
			<!-- lte42 -->
			<div class="prCont basicArea" id="lte42">
			<c:forEach items="${lte42}" var="lte42">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte42.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte42.png"
								alt="LTE 시니어">
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
										<p>${lte42.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte42.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte42.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte42.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte42.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7 on"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte42 -->
			
			<!-- lte52 -->
			<div class="prCont basicArea" id="lte52">
			<c:forEach items="${lte52}" var="lte52">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte52.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte52.png"
								alt="LTE 시니어">
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
										<p>${lte52.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte52.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte52.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte52.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte52.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte52"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6 on"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte52 -->
			
			<!-- lte62 -->
			<div class="prCont basicArea" id="lte62">
			<c:forEach items="${lte62}" var="lte62">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte62.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte62.png"
								alt="LTE 시니어">
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
										<p>${lte62.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte62.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte62.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte62.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte62.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5 on"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte62 -->
			
			
			<!-- lte72 -->
			<div class="prCont basicArea" id="lte72">
			<c:forEach items="${lte72}" var="lte72">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte72.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte72.png"
								alt="LTE 시니어">
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
										<p>${lte72.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte72.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte72.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte72.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte72.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4 on"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte72 -->
			
			<!-- lte85 -->
			<div class="prCont basicArea" id="lte85">
			<c:forEach items="${lte85}" var="lte85">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte85.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte85.png"
								alt="LTE 시니어">
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
										<p>${lte85.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte85.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte85.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte85.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte85.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3 on"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte85 -->
			
			<!-- lte100 -->
			<div class="prCont basicArea" id="lte100">
			<c:forEach items="${lte100}" var="lte100">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte100.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte100.png"
								alt="LTE 시니어">
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
										<p>${lte100.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte100.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte100.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte100.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte100.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2 on"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte100 -->
			
			
			<!-- lte120 -->
			<div class="prCont basicArea" id="lte120">
			<c:forEach items="${lte120}" var="lte120">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte120.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/lte120.png"
								alt="LTE 시니어">
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
										<p>${lte120.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte120.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte120.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte120.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">내 스타일에 맞게<br>음성 / 문자 / 데이터까지<br>한번에 이용할 수 있는 요금제</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte120.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 요금제, 한눈에 보기</em> <strong>본인의 이용 스타일에 맞추어 선택할 수 있는 요금제!</strong>
							</h3>
							<p class="prCopy">요금제 하나로 음성/영상통화, 메시지, 데이터와 추가혜택까지 한 번에 이용할 수 있는 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon8"><a href="#lte34"
										id="34"><strong>LTE<br>(34)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon7"><a href="#lte42"
										id="42"><strong>LTE<br>(42)
										</strong><span class="dLine"><em>1.5GB<br>
											</em></span></a></li>
									<li class="balloon6"><a href="#lte52"
										id="52"><strong>LTE<br>(52)
										</strong><span class="dLine"><em>2.6GB<br>
											</em></span></a></li>
									<li class="balloon5"><a href="#lte62"
										id="62"><strong>LTE<br>(62)
										</strong><span class="dLine"><em>6GB<br>
											</em></span></a></li>
									<li class="balloon4"><a href="#lte72"
										id="72"><strong>데이터<br>(72)
										</strong><span class="dLine"><em>10GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#lte85"
										id="85"><strong>데이터<br>(85)
										</strong><span class="dLine"><em>14GB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#lte100"
										id="100"><strong>데이터<br>(100)
										</strong><span><em>20GB<br>
											</em></span></a></li>
									<li class="balloon1 on"><a href="#lte120"
										id="120"><strong>데이터<br>(120)
										</strong><span><em>24GB<br>
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
											<th scope="col">데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${lte}" var="lte">
											<tr>
												<th scope="row" class="left "><span>${lte.payment}
														></span></th>
												<td>${lte.fixed_month}원</td>
												<td>${lte.call }</td>
												<td>${lte.sms }</td>
												<td>${lte.data}  ${limited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
							</div>
						</div>
					</div>
				</div>
				</div>
			
			<!-- lte120 -->
			
			
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	

	if(location.href.match('LTE%2034')){
		// $('div[id=perfect]').css("display", "none");
		$('#lte34').show();
		$('#lte42').hide();
		$('#lte52').hide();
		$('#lte62').hide();
		$('#lte72').hide();
		$('#lte85').hide();
		$('#lte100').hide();
		$('#lte120').hide();
	}else if(location.href.match('LTE%2042')){
		$('#lte34').hide();
		$('#lte42').show();
		$('#lte52').hide();
		$('#lte62').hide();
		$('#lte72').hide();
		$('#lte85').hide();
		$('#lte100').hide();
		$('#lte120').hide();
	}else if(location.href.match('LTE%2052')){
		$('#lte34').hide();
		$('#lte42').hide();
		$('#lte52').show();
		$('#lte62').hide();
		$('#lte72').hide();
		$('#lte85').hide();
		$('#lte100').hide();
		$('#lte120').hide();
	}else if(location.href.match('LTE%2062')){
		$('#lte34').hide();
		$('#lte42').hide();
		$('#lte52').hide();
		$('#lte62').show();
		$('#lte72').hide();
		$('#lte85').hide();
		$('#lte100').hide();
		$('#lte120').hide();
	}else if(location.href.match('LTE%2072')){
		$('#lte34').hide();
		$('#lte42').hide();
		$('#lte52').hide();
		$('#lte62').hide();
		$('#lte72').show();
		$('#lte85').hide();
		$('#lte100').hide();
		$('#lte120').hide();
	}else if(location.href.match('LTE%2085')){
		$('#lte34').hide();
		$('#lte42').hide();
		$('#lte52').hide();
		$('#lte62').hide();
		$('#lte72').hide();
		$('#lte85').show();
		$('#lte100').hide();
		$('#lte120').hide();
	}else if(location.href.match('LTE%20100')){
		$('#lte34').hide();
		$('#lte42').hide();
		$('#lte52').hide();
		$('#lte62').hide();
		$('#lte72').hide();
		$('#lte85').hide();
		$('#lte100').show();
		$('#lte120').hide();
	}else {
		$('#lte34').hide();
		$('#lte42').hide();
		$('#lte52').hide();
		$('#lte62').hide();
		$('#lte72').hide();
		$('#lte85').hide();
		$('#lte100').hide();
		$('#lte120').show();
	} 
	

</script>
</html>