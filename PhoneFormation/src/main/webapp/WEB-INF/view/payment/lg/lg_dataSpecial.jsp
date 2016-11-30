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
		$('a[id=A]').click(function() {
			$('#SpecialD').hide();
			$('#SpecialC').hide();
			$('#SpecialB').hide();
			$('#SpecialA').show();
		});
		
		$('a[id=B]').click(function() {
			$('#SpecialD').hide();
			$('#SpecialC').hide();
			$('#SpecialB').show();
			$('#SpecialA').hide();
		});
		
		$('a[id=C]').click(function() {
			$('#SpecialD').hide();
			$('#SpecialC').show();
			$('#SpecialB').hide();
			$('#SpecialA').hide();
		});
		
		$('a[id=D]').click(function() {
			$('#SpecialD').show();
			$('#SpecialC').hide();
			$('#SpecialB').hide();
			$('#SpecialA').hide();
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
			<!-- 2016.06.SpecialC 수정 -->
			<!-- SpecialD -->
			<div class="prCont basicArea" id="SpecialD">
			<c:forEach items="${SpecialD}" var="SpecialD">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${SpecialD.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/dataSpecialD.png"
								alt="데이터 스폐셜D">
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
										<p>${SpecialD.extra_data }</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${SpecialD.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${SpecialD.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${SpecialD.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${SpecialD.fixed_month }</em><span>원</span>
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
									<li class="balloon4"><a href="#SpecialA"
										id="A"><strong>데이터<br>(스폐셜A)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#SpecialB"
										id="B"><strong>데이터<br>(스폐셜B)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#SpecialC"
										id="C"><strong>데이터<br>(스폐셜C)
										</strong><span><em>20GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon1 on"><a href="#SpecialD"
										id="D"><strong>데이터<br>(스폐셜D)
										</strong><span><em>35GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
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
										<c:forEach items="${Special}" var="Special">
											<tr>
												<th scope="row" class="left "><span>${Special.payment}
														></span></th>
												<td>${Special.fixed_month}원</td>
												<td>${Special.call }</td>
												<td>${Special.sms }</td>
												<td>${Special.data}  ${Special.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>								
								</table>
							</div><br>
									<b style="text-align: left;"> * 음성 : 데이터 스페셜 A/ 스페셜 B/ 스페셜 C/ 스페셜 D 제공 통화랑 300분 , 문자 : 사업자 구분없이 기본제공</b>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="*%">
										<col width="40%">
										<col width="30%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 스폐셜D<br></span></th>
											<td>기본데이터+비디오포털 전용데이터 합산하여<br> 35GB/월+2GB/일 이후 최대 3Mbps 제공</td>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>
										<tr>
											<th>데이터 스폐셜C</th>
											<th>기본데이터+비디오포털 전용데이터 합산하여<br> 20GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜B</th>
											<th rowspan="2">기본데이터+비디오포털 전용데이터 합산하여<br> 11GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜A</th>
						
											<td>비디오 포털 (TV 표준)</td>
										</tr>									
										</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- dataSpecialD -->
			
			
			<!-- SpecialC -->
			<div class="prCont basicArea" id="SpecialC">
			<c:forEach items="${SpecialC}" var="SpecialC">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${SpecialC.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/dataSpecialC.png"
								alt="데이터 스폐셜C">
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
										<p>${SpecialC.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${SpecialC.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${SpecialC.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${SpecialC.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${SpecialC.fixed_month }</em><span>원</span>
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
									<li class="balloon4"><a href="#SpecialA"
										id="A"><strong>데이터<br>(스폐셜A)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#SpecialB"
										id="B"><strong>데이터<br>(스폐셜B)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon2 on"><a href="#SpecialC"
										id="C"><strong>데이터<br>(스폐셜C)
										</strong><span><em>20GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#SpecialD"
										id="D"><strong>데이터<br>(스폐셜D)
										</strong><span><em>35GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
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
										<c:forEach items="${Special}" var="Special">
											<tr>
												<th scope="row" class="left "><span>${Special.payment}
														></span></th>
												<td>${Special.fixed_month}원</td>
												<td>${Special.call }</td>
												<td>${Special.sms }</td>
												<td>${Special.data}  ${Special.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>								
								</table>
							</div><br>
									<b style="text-align: left;"> * 음성 : 데이터 스페셜 A/ 스페셜 B/ 스페셜 C/ 스페셜 D 제공 통화랑 300분 , 문자 : 사업자 구분없이 기본제공</b>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="*%">
										<col width="40%">
										<col width="30%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 스폐셜D<br></span></th>
											<td>기본데이터+비디오포털 전용데이터 합산하여<br> 35GB/월+2GB/일 이후 최대 3Mbps 제공</td>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>
										<tr>
											<th>데이터 스폐셜C</th>
											<th>기본데이터+비디오포털 전용데이터 합산하여<br> 20GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜B</th>
											<th rowspan="2">기본데이터+비디오포털 전용데이터 합산하여<br> 11GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜A</th>
						
											<td>비디오 포털 (TV 표준)</td>
										</tr>									
										</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- SpecialC -->
			
			<!-- SpecialB -->
			<div class="prCont basicArea" id="SpecialB">
			<c:forEach items="${SpecialB}" var="SpecialB">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${SpecialB.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/dataSpecialB.png"
								alt="데이터 스폐셜B">
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
										<p>${SpecialB.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${SpecialB.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${SpecialB.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${SpecialB.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${SpecialB.fixed_month }</em><span>원</span>
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
									<li class="balloon4"><a href="#SpecialA"
										id="A"><strong>데이터<br>(스폐셜A)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon3 on"><a href="#SpecialB"
										id="B"><strong>데이터<br>(스폐셜B)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#SpecialC"
										id="C"><strong>데이터<br>(스폐셜C)
										</strong><span><em>20GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#SpecialD"
										id="D"><strong>데이터<br>(스폐셜D)
										</strong><span><em>35GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
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
										<c:forEach items="${Special}" var="Special">
											<tr>
												<th scope="row" class="left "><span>${Special.payment}
														></span></th>
												<td>${Special.fixed_month}원</td>
												<td>${Special.call }</td>
												<td>${Special.sms }</td>
												<td>${Special.data}  ${Special.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>								
								</table>
							</div><br>
									<b style="text-align: left;"> * 음성 : 데이터 스페셜 A/ 스페셜 B/ 스페셜 C/ 스페셜 D 제공 통화랑 300분 , 문자 : 사업자 구분없이 기본제공</b>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="*%">
										<col width="40%">
										<col width="30%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 스폐셜D<br></span></th>
											<td>기본데이터+비디오포털 전용데이터 합산하여<br> 35GB/월+2GB/일 이후 최대 3Mbps 제공</td>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>
										<tr>
											<th>데이터 스폐셜C</th>
											<th>기본데이터+비디오포털 전용데이터 합산하여<br> 20GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜B</th>
											<th rowspan="2">기본데이터+비디오포털 전용데이터 합산하여<br> 11GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜A</th>
						
											<td>비디오 포털 (TV 표준)</td>
										</tr>									
										</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- SpecialB -->
			
			
			<!-- SpecialA -->
			<div class="prCont basicArea" id="SpecialA">
			<c:forEach items="${SpecialA}" var="SpecialA">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${SpecialA.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/lg/dataSpecialA.png"
								alt="데이터 스폐셜A">
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
										<p>${SpecialA.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${SpecialA.data }</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${SpecialA.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${SpecialA.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">LG만의 혜택</strong>
							<div class="txt">유무선 음성 기본제공<br>사업자 구분없이 문자 기본제공<br>골라쓰는 데이터!</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${SpecialA.fixed_month }</em><span>원</span>
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
									<li class="balloon4 on"><a href="#SpecialA"
										id="A"><strong>데이터<br>(스폐셜A)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon3"><a href="#SpecialB"
										id="B"><strong>데이터<br>(스폐셜B)
										</strong><span class="dLine"><em>11GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#SpecialC"
										id="C"><strong>데이터<br>(스폐셜C)
										</strong><span><em>20GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#SpecialD"
										id="D"><strong>데이터<br>(스폐셜D)
										</strong><span><em>35GB<br>
											</em>매일 2GB<br>이후 속도 제어</span></a></li>
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
										<c:forEach items="${Special}" var="Special">
											<tr>
												<th scope="row" class="left "><span>${Special.payment}
														></span></th>
												<td>${Special.fixed_month}원</td>
												<td>${Special.call }</td>
												<td>${Special.sms }</td>
												<td>${Special.data}  ${Special.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>								
								</table>
							</div><br>
									<b style="text-align: left;"> * 음성 : 데이터 스페셜 A/ 스페셜 B/ 스페셜 C/ 스페셜 D 제공 통화랑 300분 , 문자 : 사업자 구분없이 기본제공</b>
							<!-- 추가혜택있을때 사용 -->
							<br><hr><br><br><br>
									<h3 class="prTit2">
									<em class="fColor3">요금제 혜택 한눈에 보기<br></em> 
									</h3>
							<div class="tableType1">
								<table border="1">
									<colgroup>										
										<col width="*%">
										<col width="40%">
										<col width="30%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">비디오전용 데이터</th>
											<th scope="col">혜택</th>
									</thead>
									
									<tbody>														
										<tr>
										<th scope="row"><span>데이터 스폐셜D<br></span></th>
											<td>기본데이터+비디오포털 전용데이터 합산하여<br> 35GB/월+2GB/일 이후 최대 3Mbps 제공</td>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>
										<tr>
											<th>데이터 스폐셜C</th>
											<th>기본데이터+비디오포털 전용데이터 합산하여<br> 20GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜B</th>
											<th rowspan="2">기본데이터+비디오포털 전용데이터 합산하여<br> 11GB/월+2GB/일 이후 최대 3Mbps 제공</th>
											<td>비디오 포털 (TV표준/지식팩/Uflix)</td>
										</tr>									
										<tr>
											<th>데이터 스폐셜A</th>
						
											<td>비디오 포털 (TV 표준)</td>
										</tr>									
										</tbody>
								</table>
								<br>
							</div>
							
						</div>
					</div>
				</div>
				</div>
			
			<!-- SpecialA -->
						
			
		</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;

	alert(url);

 */
	

	if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%20%EC%8A%A4%ED%8F%90%EC%85%9CA')){
		// $('div[id=perfect]').css("display", "none");
		$('#SpecialA').show();
		$('#SpecialB').hide();
		$('#SpecialC').hide();
		$('#SpecialD').hide();
	}  else if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%20%EC%8A%A4%ED%8F%90%EC%85%9CB')){
		$('#SpecialA').hide();
		$('#SpecialB').show();
		$('#SpecialC').hide();
		$('#SpecialD').hide();
	}  else if(location.href.match('%EB%8D%B0%EC%9D%B4%ED%84%B0%20%EC%8A%A4%ED%8F%90%EC%85%9CC')){
		$('#SpecialA').show();
		$('#SpecialB').hide();
		$('#SpecialC').show();
		$('#SpecialD').hide();
	}else{
		$('#SpecialA').hide();
		$('#SpecialB').hide();
		$('#SpecialC').hide();
		$('#SpecialD').show();
	}


</script>
</html>