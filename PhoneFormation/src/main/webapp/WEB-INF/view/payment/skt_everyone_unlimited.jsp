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
		$('a[id=everyone_unlimited_100]').click(function() {
			$('#100').show();
			$('#85').hide();
			$('#80pack').hide();
			$('#75').hide();
			$('#69').hide();
		});
		
		$('a[id=everyone_unlimited_85]').click(function() {
			$('#100').hide();
			$('#85').show();
			$('#80pack').hide();
			$('#75').hide();
			$('#69').hide();
		});
		
		$('a[id=everyone_unlimited_80pack]').click(function() {
			$('#100').hide();
			$('#85').hide();
			$('#80pack').show();
			$('#75').hide();
			$('#69').hide();
		});
		
		$('a[id=everyone_unlimited_75]').click(function() {
			$('#100').hide();
			$('#85').hide();
			$('#80pack').hide();
			$('#75').show();
			$('#69').hide();
		});
		
		$('a[id=everyone_unlimited_69]').click(function() {
			$('#100').hide();
			$('#85').hide();
			$('#80pack').hide();
			$('#75').hide();
			$('#69').show();
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
			<!-- everyone_unlimited_100 -->
			<div class="prCont basicArea" id="100">
			<c:forEach items="${everyone_unlimited_100}" var="everyone_unlimited_100">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${everyone_unlimited_100.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/everyone_unlimited_100.jpg"
								alt="전국민 무한 100">
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
										<p>${everyone_unlimited_100.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${everyone_unlimited_100.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${everyone_unlimited_100.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${everyone_unlimited_100.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">최신 콘텐츠 무료<br>oksusu 100여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${everyone_unlimited_100.fixed_month }</em><span>원</span>
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
								<em class="fColor3">전국민 무한 한눈에 보기</em> <strong>전국민 모두와 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
							<ul>
									<li class="balloon5"><a href="#69"
										id="everyone_unlimited_69"><strong>전국민 무한<br>(69)
										</strong><span class="dLine"><em>5GB
											</em></span></a></li>
									<li class="balloon4"><a href="#75"
										id="everyone_unlimited_75"><strong>전국민 무한<br>(75)
										</strong><span class="dLine"><em>8GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#80pack"
										id="everyone_unlimited_80pack"><strong>LTE 데이터 무제한<br>(80팩)
										</strong><span class="dLine"><em>8GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#85"
										id="everyone_unlimited_85"><strong>전국민 무한<br>(85)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1 on"><a href="#100"
										id="everyone_unlimited_100"><strong>전국민 무한<br>(100)
										</strong><span><em>16GB<br><br>
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
									<caption>전국민 무한, 한눈에 보기</caption>
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
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${everyone_unlimited}" var="everyone_unlimited">
											<tr>
												<th scope="row" class="left "><span>${everyone_unlimited.payment}
														></span></th>
												<td>${everyone_unlimited.fixed_month}원</td>
												<td>${everyone_unlimited.fixed_month_dis}원</td>
												<td>${everyone_unlimited.call }</td>
												<td>${everyone_unlimited.sms }</td>
												<td>${everyone_unlimited.data}  ${everyone_unlimited.extra_data}</td>
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
			
			<!-- everyone_unlimited_100 -->
			
			<!-- everyone_unlimited_85 -->
			<div class="prCont basicArea" id="85">
			<c:forEach items="${everyone_unlimited_85}" var="everyone_unlimited_85">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${everyone_unlimited_85.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/everyone_unlimited_85.jpg"
								alt="전국민 무한 85">
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
										<p>${everyone_unlimited_85.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${everyone_unlimited_85.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${everyone_unlimited_85.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${everyone_unlimited_85.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">최신 콘텐츠 무료<br>oksusu 100여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${everyone_unlimited_85.fixed_month }</em><span>원</span>
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
								<em class="fColor3">전국민 무한 한눈에 보기</em> <strong>전국민 모두와 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#69"
										id="everyone_unlimited_69"><strong>전국민 무한<br>(69)
										</strong><span class="dLine"><em>5GB
											</em></span></a></li>
									<li class="balloon4"><a href="#75"
										id="everyone_unlimited_75"><strong>전국민 무한<br>(75)
										</strong><span class="dLine"><em>8GB<br>
											</em></span></a></li>
									<li class="balloon3"><a href="#80pack"
										id="everyone_unlimited_80pack"><strong>LTE 데이터<br>(80팩)
										</strong><span class="dLine"><em>8GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2 on"><a href="#85"
										id="everyone_unlimited_85"><strong>전국민 무한<br>(85)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#100"
										id="everyone_unlimited_100"><strong>전국민 무한<br>(85)
										</strong><span><em>16GB<br><br>
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
									<caption>전국민 무한, 한눈에 보기</caption>
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
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${everyone_unlimited}" var="everyone_unlimited">
											<tr>
												<th scope="row" class="left "><span>${everyone_unlimited.payment}
														></span></th>
												<td>${everyone_unlimited.fixed_month}원</td>
												<td>${everyone_unlimited.fixed_month_dis}원</td>
												<td>${everyone_unlimited.call }</td>
												<td>${everyone_unlimited.sms }</td>
												<td>${everyone_unlimited.data}  ${everyone_unlimited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- everyone_unlimited_85 -->
			
			
			
			<!-- lte_data_80pack -->
			<div class="prCont basicArea" id="80pack">
			<c:forEach items="${lte_data_80pack}" var="lte_data_80pack">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${lte_data_80pack.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/lte_data_80pack.jpg"
								alt="LTE 데이터 무제한 80팩">
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
										<p>${lte_data_80pack.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${lte_data_80pack.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${lte_data_80pack.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${lte_data_80pack.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">최신 콘텐츠 무료<br>oksusu 100여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${lte_data_80pack.fixed_month }</em><span>원</span>
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
								<em class="fColor3">전국민 무한 한눈에 보기</em> <strong>전국민 모두와 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#69"
										id="everyone_unlimited_69"><strong>전국민 무한<br>(69)
										</strong><span class="dLine"><em>5GB
											</em></span></a></li>
									<li class="balloon4"><a href="#75"
										id="everyone_unlimited_75"><strong>전국민 무한<br>(75)
										</strong><span class="dLine"><em>8GB<br>
											</em></span></a></li>
									<li class="balloon3 on"><a href="#80pack"
										id="everyone_unlimited_80pack"><strong>LTE 데이터 무제한<br>(80팩)
										</strong><span class="dLine"><em>8GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#85"
										id="everyone_unlimited_85"><strong>전국민 무한<br>(85)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#100"
										id="everyone_unlimited_100"><strong>전국민 무한<br>(100)
										</strong><span><em>16GB<br><br>
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
									<caption>전국민 무한, 한눈에 보기</caption>
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
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${everyone_unlimited}" var="everyone_unlimited">
											<tr>
												<th scope="row" class="left "><span>${everyone_unlimited.payment}
														></span></th>
												<td>${everyone_unlimited.fixed_month}원</td>
												<td>${everyone_unlimited.fixed_month_dis}원</td>
												<td>${everyone_unlimited.call }</td>
												<td>${everyone_unlimited.sms }</td>
												<td>${everyone_unlimited.data}  ${everyone_unlimited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- lte_data_80pack -->
			
			<!-- everyone_unlimited_75 -->
			<div class="prCont basicArea" id="75">
			<c:forEach items="${everyone_unlimited_75}" var="everyone_unlimited_75">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${everyone_unlimited_75.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/everyone_unlimited_75.jpg"
								alt="전국민 무한 75">
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
										<p>${everyone_unlimited_75.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${everyone_unlimited_75.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${everyone_unlimited_75.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${everyone_unlimited_75.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">최신 콘텐츠 무료<br>oksusu 100여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${everyone_unlimited_75.fixed_month }</em><span>원</span>
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
								<em class="fColor3">전국민 무한 한눈에 보기</em> <strong>전국민 모두와 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5"><a href="#69"
										id="everyone_unlimited_69"><strong>전국민 무한<br>(69)
										</strong><span class="dLine"><em>5GB
											</em></span></a></li>
									<li class="balloon4"><a href="#75"
										id="everyone_unlimited_75"><strong>전국민 무한<br>(75)
										</strong><span class="dLine"><em>8GB<br>
											</em></span></a></li>
									<li class="balloon3 on"><a href="#80pack"
										id="everyone_unlimited_80pack"><strong>LTE 데이터<br>(80팩)
										</strong><span class="dLine"><em>8GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#85"
										id="everyone_unlimited_85"><strong>전국민 무한<br>(85)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#100"
										id="everyone_unlimited_100"><strong>전국민 무한<br>(100)
										</strong><span><em>16GB<br><br>
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
									<caption>전국민 무한, 한눈에 보기</caption>
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
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${everyone_unlimited}" var="everyone_unlimited">
											<tr>
												<th scope="row" class="left "><span>${everyone_unlimited.payment}
														></span></th>
												<td>${everyone_unlimited.fixed_month}원</td>
												<td>${everyone_unlimited.fixed_month_dis}원</td>
												<td>${everyone_unlimited.call }</td>
												<td>${everyone_unlimited.sms }</td>
												<td>${everyone_unlimited.data}  ${everyone_unlimited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- everyone_unlimited_75 -->
			
			<!-- everyone_unlimited_69 -->
			<div class="prCont basicArea" id="69">
			<c:forEach items="${everyone_unlimited_69}" var="everyone_unlimited_69">
				<div class="inner">
					<div class="titTop">
						<br>
						<br>
						
						<h1>${everyone_unlimited_69.payment }</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img src="/resources/images/payment/skt/everyone_unlimited_69.jpg"
								alt="전국민 무한 69">
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
										<p>${everyone_unlimited_69.extra_data}</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>${everyone_unlimited_69.data }</span>
								</li>
								<li><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p style="font-size: 8px">${everyone_unlimited_69.call }</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div>
									<span>${everyone_unlimited_69.sms}</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">최신 콘텐츠 무료<br>oksusu 100여개 채널 무료</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>${everyone_unlimited_69.fixed_month }</em><span>원</span>
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
								<em class="fColor3">전국민 무한 한눈에 보기</em> <strong>전국민 모두와 통화 시간 걱정 없이 마음껏</strong>
							</h3>
							<p class="prCopy">통화 시간 걱정 없이 친구, 가족에게 마음껏 전화해 안부를 물어보고, 데이터 걱정 없이 최신 콘텐츠를 즐겨보세요.</p>

							<div class="tabType3"></div>
						</div>
						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon5 on"><a href="#69"
										id="everyone_unlimited_69"><strong>전국민 무한<br>(69)
										</strong><span class="dLine"><em>5GB
											</em></span></a></li>
									<li class="balloon4"><a href="#75"
										id="everyone_unlimited_75"><strong>전국민 무한<br>(75)
										</strong><span class="dLine"><em>8GB<br>
											</em></span></a></li>
									<li class="balloon3	"><a href="#80pack"
										id="everyone_unlimited_80pack"><strong>LTE 데이터<br>(80팩)
										</strong><span class="dLine"><em>8GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon2"><a href="#85"
										id="everyone_unlimited_85"><strong>전국민 무한<br>(85)
										</strong><span class="dLine"><em>12GB<br>
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a href="#100"
										id="everyone_unlimited_100"><strong>전국민 무한<br>(100)
										</strong><span><em>16GB<br><br>
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
									<caption>전국민 무한, 한눈에 보기</caption>
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
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${everyone_unlimited}" var="everyone_unlimited">
											<tr>
												<th scope="row" class="left "><span>${everyone_unlimited.payment}
														></span></th>
												<td>${everyone_unlimited.fixed_month}원</td>
												<td>${everyone_unlimited.fixed_month_dis}원</td>
												<td>${everyone_unlimited.call }</td>
												<td>${everyone_unlimited.sms }</td>
												<td>${everyone_unlimited.data}  ${everyone_unlimited.extra_data}</td>
											</tr>
											
										</c:forEach>
									</tbody>
								</table>
							</div>
							</div>
							
						</div>
					</div>
				</div>
			
			<!-- everyone_unlimited_69 -->
			
			
			</div>
		</div>




</body>
<script type="text/javascript" charset="UTF-8">

/* 
	var url = document.URL;
	alert(url);
 */
	

	if(location.href.match('100')){
		// $('div[id=perfect]').css("display", "none");
		$('#100').show();
		$('#85').hide();
		$('#80apck').hide();
		$('#75').hide();
		$('#69').hide();
	}  else if(location.href.match('85')){
		$('#100').hide();
		$('#85').show();
		$('#80pack').hide();
		$('#75').hide();
		$('#69').hide();
	}  else if(location.href.match('80')){
		$('#100').show();
		$('#85').hide();
		$('#80pack').show();
		$('#75').hide();
		$('#69').hide();
	}else if(location.href.match('75')){
		$('#100').hide();
		$('#85').hide();
		$('#80pack').hide();
		$('#75').show();
		$('#69').hide();
	}else{
		$('#100').hide();
		$('#85').hide();
		$('#80pack').hide();
		$('#75').hide();
		$('#69').show();
	}
</script>
</html>