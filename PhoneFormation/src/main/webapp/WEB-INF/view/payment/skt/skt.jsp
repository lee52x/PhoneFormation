<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css" rel="stylesheet" type="text/css">

<link href="/resources/css/payment.css"	rel="stylesheet" type="text/css">

<script type="text/javascript" src="/resources/js/sktPayment.js"></script>
	
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
								
							
									<li id="payment"><a href="#" id="b_yt" title="band YT 상품 조회">band YT</a></li>
								
							
									<li id="payment"><a href="#" id="b_data" title="band 데이터 상품 조회">band 데이터</a></li>
								
							
									<li id="payment"><a href="#" id="e_unlimited" title="전국민 무한 상품 조회">전국민 무한</a></li>
								
							
									<li id="payment"><a href="#" id="t_together" title="T끼리">T끼리</a></li>
								
																
							</ul>
							<br>
							<div class="guide">
								<span id="monthly" style="height: 108px">월정액(부가세포함)</span>
								<span id="stipulation" style="height: 108px">24개월약정시(부가세포함)</span>
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
							<c:forEach items="${signiture}" var="signiture">
							<li id="signiture">
								<div class="title" style="width: 300px">
														<div class="checkbox">
	
											<strong>${signiture.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${signiture.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${signiture.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${signiture.sms }</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${signiture.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${signiture.fixed_month_dis }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/skt/${signiture.payment }" title="${signiture.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										
									</div>
								</div>
							</li>
							</c:forEach>
							
							<c:forEach items="${band_yt }" var="band_yt">
							<li id="band_yt">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${band_yt.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${band_yt.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${band_yt.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${band_yt.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${band_yt.fixed_month_dis }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/skt/${band_yt.payment }" title="${band_yt.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>
							
							
							<c:forEach items="${band_data }" var="band_data">
							<li id="band_data">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType7"><label for="fareType7"> -->
											<strong>${band_data.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${band_data.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${band_data.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${band_data.sms }</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${band_data.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${band_data.fixed_month_dis }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/skt/${band_data.payment }" title="${band_data.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>
			
							<c:forEach items="${everyone_unlimited }" var="everyone_unlimited">
							<li id="everyone_unlimited">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${everyone_unlimited.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${everyone_unlimited.data}</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${everyone_unlimited.call}</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${everyone_unlimited.sms}</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${everyone_unlimited.fixed_month}원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${everyone_unlimited.fixed_month_dis}원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/skt/${everyone_unlimited.payment }" title="${everyone_unlimited.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>
							
							<c:forEach items="${t_together }" var="t_together">
							<li id="t_together">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${t_together.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${t_together.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 130px;margin-left: 10px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${t_together.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${t_together.sms }</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${t_together.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${t_together.fixed_month_dis }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/skt/${t_together.payment }" title="${t_together.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>
							
							<!--// loop -->
						</ul>						
					</div>
					
					</div>
	

</body>
</html>