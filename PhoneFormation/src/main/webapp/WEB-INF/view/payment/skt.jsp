<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/css/payment.css"/>

<script type="text/javascript">
	$(document).ready(function() {
		$('#all').click(function(){ 		
			$('li[id=signiture]').show();
			$('li[id=band_yf]').show();
			$('li[id=band_data]').show();
			$('li[id=everyone_unlimited]').show();
			$('li[id=t_together]').show();
		});
		
		$('#t_si').click(function() {
			$('li').show();
			$('li[id=band_yf]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#b_yf').click(function() {
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#b_data').click(function() {	
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yf]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#e_unlimited').click(function() {	
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yf]').hide();
			$('li[id=band_data]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#t_together').click(function() {	
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yf]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
		});
		
	});
</script>
<script type="text/javascript">


</script>
</head>
<body>

				<br>
				<div class="container">	
					<div class="resultTop">
						<div class="infoBox">
						<h3 style="margin-left: 20px">SKT</h3><br>
							<ul class="filtering" style="text-align: left;">
								<li class="on"><a href="#" id="all" title="전체 상품 조회">전체</a></li>
								
							
									<li id="payment"><a href="#" id="t_si" title="T시그니처 상품 조회">T시그니처</a></li>
								
							
									<li id="payment"><a href="#" id="b_yf" title="band YT 상품 조회">band YT</a></li>
								
							
									<li id="payment"><a href="#" id="b_data" title="band 데이터 상품 조회">band 데이터</a></li>
								
							
									<li id="payment"><a href="#" id="e_unlimited" title="전국민 무한 상품 조회">전국민 무한</a></li>
								
							
									<li id="payment"><a href="#" id="t_together" title="T끼리">T끼리</a></li>
								
																
							</ul>
							<br>
							<div class="guide">
								<span class="monthly">월정액(부가세포함)</span>
								<span class="stipulation">24개월약정시(부가세포함)</span>
							</div>
						</div>
					</div>

					<div>
						<div>
							
						</div>
					</div>
					
					<div class="fareList">
						<ul id="productList">
							<!-- loop -->
							
							<li id="signiture">
								<div class="title">
														<div class="checkbox">
	
											<strong>T시그니처 Master</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>35GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly" style=""><strong>월정액 (부가세포함) : </strong>110,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="skt_payment/details" title="T시그니처 Master 자세히보기" class="btnS btnDgray">자세히보기</a>
										
									</div>
								</div>
							</li>
							
							<li id="signiture">
								<div class="title">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType1"><label for="fareType1"> -->
											<strong>T시그니처 Classic</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>20GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>88,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('T시그니처 Classic', 'NA00005293', 'A101');" title="T시그니처 Classic 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_yf">
								<div class="title">
									<div class="checkbox">
										
											<strong>band YT 퍼펙트</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>12GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>71,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band YT 퍼펙트', 'NA00005017', 'A101');" title="band YT 퍼펙트 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_yf">
								<div class="title">
									<div class="checkbox">
											<strong>band YT 7G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>7GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>62,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band YT 7G', 'NA00005016', 'A101');" title="band YT 7G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_yf">
								<div class="title">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType4"><label for="fareType4"> -->
											<strong>band YT 3G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>3GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>52,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band YT 3G', 'NA00005014', 'A101');" title="band YT 3G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_yf">
								<div class="title">
									<div class="checkbox">
									<!-- 	<input type="checkbox" id="fareType5"><label for="fareType5"> -->
											<strong>band YT 1G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>1GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>42,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band YT 1G', 'NA00005013', 'A101');" title="band YT 1G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_yf">
								<div class="title">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType6"><label for="fareType6"> -->
											<strong>band YT 세이브</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>500MB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>38,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band YT 세이브', 'NA00005012', 'A101');" title="band YT 세이브 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType7"><label for="fareType7"> -->
											<strong>band 데이터 퍼펙트S</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>16.0GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>75,900원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 퍼펙트S', 'NA00005134', 'A101');" title="band 데이터 퍼펙트S 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										
											<strong>band 데이터 퍼펙트</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>11.0GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>65,890원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 퍼펙트', 'NA00004775', 'A101');" title="band 데이터 퍼펙트 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										
											<strong>band 데이터 6.5G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>6.5GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>56,100원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										
											<strong>band 데이터 3.5G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>3.5GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>51,700원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										
											<strong>band 데이터 2.2G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>2.2GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>46,200원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										
											<strong>band 데이터 1.2G</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>1.2GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>39,600원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
				
							<li id="band_data">
								<div class="title">
									<div class="checkbox">
										
											<strong>band 데이터 세이브</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>300MB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>32,890원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>요금약정<br>해당없음</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="everyone_unlimited">
								<div class="title">
									<div class="checkbox">
										
											<strong>전국민 무한 100</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>16GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>110,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>83,600원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="everyone_unlimited">
								<div class="title">
									<div class="checkbox">
										
											<strong>전국민 무한 85</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>12GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>93,500원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>71,500원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="everyone_unlimited">
								<div class="title">
									<div class="checkbox">
										
											<strong>LTE데이터 무제한 80팩</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>8GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>88,000원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>67,375원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="everyone_unlimited">
								<div class="title">
									<div class="checkbox">
										
											<strong>전국민 무한 75</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>8GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>82,500원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>61,875원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="everyone_unlimited">
								<div class="title">
									<div class="checkbox">
										
											<strong>전국민 무한 69</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>5GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>집전화·이동전화 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>75,900원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>56,650원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="t_together">
								<div class="title">
									<div class="checkbox">
										
											<strong>T끼리 65</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>5GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>SKT 고객관 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>71,500원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>53,075원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="t_together">
								<div class="title">
									<div class="checkbox">
										
											<strong>T끼리 55</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>2GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>SKT 고객관 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>60,500원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>44,825원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="t_together">
								<div class="title">
									<div class="checkbox">
										
											<strong>T끼리 45</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>5GB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>SKT 고객관 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>49,500원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>37,125원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<li id="t_together">
								<div class="title">
									<div class="checkbox">
										
											<strong>T끼리 35</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>550MB</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>SKT 고객관 무제한</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li class="monthly"><strong>월정액 (부가세포함) : </strong>38,500원</li>
										
										<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>30,580원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							
							<!--// loop -->
						</ul>						
						<!-- <span id="viewMoreBtn">
						
						<a href="#none" class="btnMore" id="viewMore"><span>더보기</span></a>검색된 요금상품 항목이 10개가 초과되면 출력됨 | 클릭 후 위로 생성되는 데이터로 포커스 이동
						
						</span> -->
					</div>
					
					</div>
	

</body>
</html>