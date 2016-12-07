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
		$('a[id=52]').click(function() {
			$('#netInside34').hide();
			$('#netInside42').hide();
			$('#netInside52').show();
		});
		
		$('a[id=42]').click(function() {
			$('#netInside34').hide();
			$('#netInside42').show();
			$('#netInside52').hide();
		});
		
		$('a[id=34]').click(function() {
			$('#netInside34').show();
			$('#netInside42').hide();
			$('#netInside52').hide();
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
			<!-- netInside34 -->
			<div class="prCont basicArea" id="netInside34">
			<c:forEach items="${netInside34}" var="netInside34">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${netInside34.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/netInside34.png"
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
										<p>${netInside34.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${netInside34.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${netInside34.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${netInside34.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">음성 통화 망내 기본 제공</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${netInside34.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 망내 요금제, 한눈에 보기</em> <strong>유플러스 가입자간 통화는 무조건 기본제공!</strong>
							</h3>
							<p class="prCopy">누구에게나 요금 부담 없이 마음껏 통화 가능한 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon3 on"><a href="#netInside34"
										id="34"><strong>LTE 망내<br>(34)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#netInside42"
										id="42"><strong>LTE 망내<br>(42)
										</strong><span><em>1.4GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#netInside52"
										id="52"><strong>LTE 망내<br>(52)
										</strong><span><em>2.1GB<br>
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
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성 *</th>
											<th scope="col">문자</th>
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${netInside}" var="netInside">
											<tr>
												<th scope="row" class="left "><span>${netInside.payment}
														></span></th>
												<td>${netInside.fixed_month}원</td>
												<td>${netInside.call }</td>
												<td>${netInside.sms }</td>
												<td>${netInside.data} / ${netInside.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
								</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">* 음성 혜택 한눈에 보기<br></em> 
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
											<th scope="col">기본제공</th>
											<th scope="col">추가제공</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>LTE 망내 34<br></span></th>
											<td rowspan="3">망내음성</td>
											<td>망외/유선/영상/부가전화 전용 110분</td>
										</tr>
										<tr>
											<th>LTE 망내 42</th>
								
											<td>망외/유선/영상/부가전화 전용 140분</td>
										</tr>									
										<tr>
											<th>LTE 망내 52</th>
											
											<td>망외/유선/영상/부가전화 전용 195분</td>
										</tr>																
									</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- netInside34 -->
			
			<!-- netInside42 -->
			<div class="prCont basicArea" id="netInside42">
			<c:forEach items="${netInside42}" var="netInside42">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${netInside42.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/netInside42.png"
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
										<p>${netInside42.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${netInside42.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${netInside42.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${netInside42.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">음성 통화 망내 기본 제공</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${netInside42.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 망내 요금제, 한눈에 보기</em> <strong>유플러스 가입자간 통화는 무조건 기본제공!</strong>
							</h3>
							<p class="prCopy">누구에게나 요금 부담 없이 마음껏 통화 가능한 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon3 on"><a href="#netInside34"
										id="34"><strong>LTE 망내<br>(34)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#netInside42"
										id="42"><strong>LTE 망내<br>(42)
										</strong><span><em>1.4GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#netInside52"
										id="52"><strong>LTE 망내<br>(52)
										</strong><span><em>2.1GB<br>
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
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성 *</th>
											<th scope="col">문자</th>
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${netInside}" var="netInside">
											<tr>
												<th scope="row" class="left "><span>${netInside.payment}
														></span></th>
												<td>${netInside.fixed_month}원</td>
												<td>${netInside.call }</td>
												<td>${netInside.sms }</td>
												<td>${netInside.data} / ${netInside.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
								</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">* 음성 혜택 한눈에 보기<br></em> 
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
											<th scope="col">기본제공</th>
											<th scope="col">추가제공</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>LTE 망내 34<br></span></th>
											<td rowspan="3">망내음성</td>
											<td>망외/유선/영상/부가전화 전용 110분</td>
										</tr>
										<tr>
											<th>LTE 망내 42</th>
								
											<td>망외/유선/영상/부가전화 전용 140분</td>
										</tr>									
										<tr>
											<th>LTE 망내 52</th>
											
											<td>망외/유선/영상/부가전화 전용 195분</td>
										</tr>																
									</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- netInside42 -->
			
			<!-- netInside52 -->
			<div class="prCont basicArea" id="netInside52">
			<c:forEach items="${netInside52}" var="netInside52">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${netInside52.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/netInside52.png"
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
										<p>${netInside52.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${netInside52.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${netInside52.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${netInside52.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">음성 통화 망내 기본 제공</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${netInside52.fixed_month }</em><span>원</span>
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
								<em class="fColor3">LTE 망내 요금제, 한눈에 보기</em> <strong>유플러스 가입자간 통화는 무조건 기본제공!</strong>
							</h3>
							<p class="prCopy">누구에게나 요금 부담 없이 마음껏 통화 가능한 요금제!</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon3 on"><a href="#netInside34"
										id="34"><strong>LTE 망내<br>(34)
										</strong><span class="dLine"><em>750MB<br>
											</em></span></a></li>
									<li class="balloon2"><a href="#netInside42"
										id="42"><strong>LTE 망내<br>(42)
										</strong><span><em>1.4GB<br>
											</em></span></a></li>
									<li class="balloon1"><a href="#netInside52"
										id="52"><strong>LTE 망내<br>(52)
										</strong><span><em>2.1GB<br>
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
										<col width="20%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액</th>
											<th scope="col">음성 *</th>
											<th scope="col">문자</th>
											<th scope="col">데이터 / 추가데이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${netInside}" var="netInside">
											<tr>
												<th scope="row" class="left "><span>${netInside.payment}
														></span></th>
												<td>${netInside.fixed_month}원</td>
												<td>${netInside.call }</td>
												<td>${netInside.sms }</td>
												<td>${netInside.data} / ${netInside.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table><br>
								</div>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">* 음성 혜택 한눈에 보기<br></em> 
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
											<th scope="col">기본제공</th>
											<th scope="col">추가제공</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>LTE 망내 34<br></span></th>
											<td rowspan="3">망내음성</td>
											<td>망외/유선/영상/부가전화 전용 110분</td>
										</tr>
										<tr>
											<th>LTE 망내 42</th>
								
											<td>망외/유선/영상/부가전화 전용 140분</td>
										</tr>									
										<tr>
											<th>LTE 망내 52</th>
											
											<td>망외/유선/영상/부가전화 전용 195분</td>
										</tr>																
									</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- netInside52 -->

			
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	

	if(location.href.match('LTE%20%EB%A7%9D%EB%82%B4%2034')){
		// $('div[id=perfect]').css("display", "none");
		$('#netInside34').show();
		$('#netInside42').hide();
		$('#netInside52').hide();
	}  else if(location.href.match('LTE%20%EB%A7%9D%EB%82%B4%2042')){
		$('#netInside34').hide();
		$('#netInside42').show();
		$('#netInside52').hide();
	}  else{
		$('#netInside34').hide();
		$('#netInside42').hide();
		$('#netInside52').show();
	}

	

</script>
</html>