<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT 상세페이지</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css" rel="stylesheet" type="text/css">
<link href="http://www.tworld.co.kr/poc/inc/css/purchase.css" rel="stylesheet" type="text/css">
<link href="http://www.tworld.co.kr/poc/inc/css/product.css"	rel="stylesheet" type="text/css">

<link href="http://www.tworld.co.kr/poc/gnb/inc/css/gnb.css" rel="stylesheet" type="text/css">


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
		$('a[id=siginiture_master]').click(function() {
			$('div[id=classic]').hide();
			$('div[id=master]').show();
		});
		
		$('a[id=siginiture_classic]').click(function() {
			$('div[id=master]').hide();
			$('div[id=classic]').show();
		});
	});
</script>


</head>
<body>

	<div id="container">
		<!-- 수정 2016.04.19 : class="product" 삭제 -->
		<!-- content -->
		<div id="content">
			<!-- 기본정보 -->
			<!-- 2016.06.23 수정 -->
			<!-- signiture_master -->
			<div class="prCont basicArea" id="master">
				<div class="inner">
					<div class="titTop">
					<br><br>
						<h1>T시그니처 Master</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img
								src="/resources/images/payment/skt/signiture_master.jpg"
								alt="T 시그니처 Master">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>35GB+매일2GB 이후 속도제어</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>무제한</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>집전화·이동전화 무제한</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div><span>기본제공</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">통신/ Device / 안심 Care 서비스 제공</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>110,000</em><span>원</span>
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
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">T 시그니처 한눈에 보기</em> <strong>모바일 프리미엄
									고객을 위한 프로그램</strong>
							</h3>
							<p class="prCopy">통신,디바이스,안심 3대 영역에서 최고의 혜택을 제공합니다.</p>

							<div class="tabType3"></div>
						</div>



						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon2"><a
										href="#classic" id="siginiture_classic"><strong>T
												시그니처<br>(Classic)
										</strong><span class="dLine"><em>20GB<br>+
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1 on"><a
										href="#master" id="siginiture_master"><strong>T
												시그니처<br>(Master)
										</strong><span><em>35GB<br>+
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
								<table border="1"
									summary="T 시그니처, 한눈에 보기 테이블은 요금제(T 시그니처(Classic),T 시그니처(Master), 월정액(VAT포함), 음성, 문자, 데이터로 구성되어 있습니다.">
									<caption>T 시그니처, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="15%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="left "><span>T
													시그니처(Classic)</span></th>
											<td>88,000원</td>
											<td>집전화, 이동전화 무제한</td>
											<td>기본제공</td>
											<td>무제한<br>20GB+매일2GB 이후 속도제어
											</td>
										</tr>
										<tr>
											<th scope="row" class="left bg_gray"><span>T
													시그니처(Master)</span></th>
											<td class="bg_gray">110,000원</td>
											<td class="bg_gray">집전화, 이동전화 무제한</td>
											<td class="bg_gray">기본제공</td>
											<td class="bg_gray">무제한<br>35GB+매일2GB 이후 속도제어</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div><!-- signiture_master -->
			
			
			<!-- signiture_classic -->
			<div class="prCont basicArea" id="classic" style="display: none;">
				<div class="inner">
					<div class="titTop">
					<br><br>
						<h1>T시그니처 Classic</h1>
					</div>
					<!-- 다이어그램 내용 : 어드민에서 입력 버그 조치되면 우측 태그 살릴 것 <dl class="prTopType type1"></dl>-->
					<dl class="prTopType type1">
						<dt>
							<img
								src="/resources/images/payment/skt/signiture_classic.jpg"
								alt="T 시그니처 Master">
						</dt>
						<dd>
							<strong class="tit">제공 데이터 및 음성, 문자량</strong>
							<ul class="graphArea">
								<!-- 제공량의 텍스트가 길 경우 class="type2" 추가 -->
								<li class="full">
									<!-- 무제한일 경우 class="full" --> <em class="data">데이터</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>35GB+매일2GB 이후 속도제어</p>
										<!-- 추가 안내 문구가 있을 경우 -->
									</div> <span>무제한</span>
								</li>
								<li class="full"><em class="call">음성</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
										<p>집전화·이동전화 무제한</p>
									</div> <span>무제한</span></li>
								<li class="full"><em class="mail">문자</em>
									<div class="graph">
										<span> <!-- design -->
										</span>
									</div><span>기본제공</span></li>
							</ul>
						<dd>
							<strong class="benefitTit">SKT만의 혜택</strong>
							<div class="txt">통신/ Device / 안심 Care 서비스 제공</div>
							<br> <strong class="tit">월정액 (VAT포함)</strong>
							<p class="price">
								<em>110,000</em><span>원</span>
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
				<div id="prTabCon2">
					<h2 class="hidden">시리즈 안내</h2>
					<div class="prCont bandData bg_gray">
						<div class="inner">
							<h3 class="prTit2">
								<em class="fColor3">T 시그니처 한눈에 보기</em> <strong>모바일 프리미엄
									고객을 위한 프로그램</strong>
							</h3>
							<p class="prCopy">통신,디바이스,안심 3대 영역에서 최고의 혜택을 제공합니다.</p>

							<div class="tabType3"></div>
						</div>



						<div class="graphicArea" id="fareViewType1_1">
							<h4 class="hidden">이미지로 보기</h4>
							<div class="graphic">
								<ul>
									<li class="balloon2 on"><a
										href="#classic" id="siginiture_classic"><strong>T
												시그니처<br>(Classic)
										</strong><span class="dLine"><em>20GB<br>+
											</em> 매일 2GB <br>이후 속도 제어</span></a></li>
									<li class="balloon1"><a
										href="#master" id="siginiture_master"><strong>T
												시그니처<br>(Master)
										</strong><span><em>35GB<br>+
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
								<table border="1"
									summary="T 시그니처, 한눈에 보기 테이블은 요금제(T 시그니처(Classic),T 시그니처(Master), 월정액(VAT포함), 음성, 문자, 데이터로 구성되어 있습니다.">
									<caption>T 시그니처, 한눈에 보기</caption>
									<colgroup>
										<col width="*">
										<col width="15%">
										<col width="15%">
										<col width="15%">
										<col width="25%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">요금제</th>
											<th scope="col">월정액(부가세포함)</th>
											<th scope="col">음성</th>
											<th scope="col">문자</th>
											<th scope="col">테이터</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="left bg_gray"><span>T
													시그니처(Classic)</span></th>
											<td class="bg_gray">88,000원</td>
											<td class="bg_gray">집전화, 이동전화 무제한</td>
											<td class="bg_gray">기본제공</td>
											<td class="bg_gray">무제한<br>20GB+매일2GB 이후 속도제어
											</td>
										</tr>
										<tr>
											<th scope="row" class="left "><span>T
													시그니처(Master)</span></th>
											<td>88,000원</td>
											<td>집전화, 이동전화 무제한</td>
											<td>기본제공</td>
											<td>무제한<br>20GB+매일2GB 이후 속도제어</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div><!-- signiture_classic -->
			
			
			
		</div>
	</div>

</body>
</html>