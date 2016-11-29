<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css" rel="stylesheet" type="text/css">

<link href="/resources/css/payment.css"	rel="stylesheet" type="text/css">

<script type="text/javascript" src="/resources/js/ktPayment.js"></script>
</head>
<body>

				<br>
				<div class="container">	
					<div class="resultTop">
						<div class="infoBox">
						<h3 style="margin-left: 20px">Olleh KT</h3><br>
							<ul class="filtering" style="text-align: left;">
								<li class="on"><a href="#" id="all" title="전체 요금제 조회">전체</a></li>
								
							
									<li id="payment"><a href="#" id="k_limited" title="순 완전무한 요금제 조회">순 완전무한 요금제</a></li>
								
							
									<li id="payment"><a href="#" id="k_all" title="순 모두다올래 요금제 조회">순 모두다올레 요금제</a></li>
								
							
									<li id="payment"><a href="#" id="k_yTeen" title="Y틴 요금제 조회">Y틴 요금제</a></li>
								
							
									<li id="payment"><a href="#" id=k_y24 title="Y24 요금제 조회">Y24 요금제</a></li>
								
									<li id="payment"><a href="#" id=k_lteEgg title="LTE-알 요금제 조회">LTE-알 요금제</a></li>

																
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
							<c:forEach items="${limited}" var="limited">
							<li id="limited">
								<div class="title" style="width: 300px">
														<div class="checkbox">
	
											<strong>${limited.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${limited.data }</strong>
						<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong style="width: 140px; margin-left: 10px">${limited.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${limited.sms }</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함w) : </strong>${limited.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${limited.discount }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/kt/${limited.payment }" title="${limited.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										
									</div>
								</div>
							</li>
							</c:forEach>
							
							<c:forEach items="${all }" var="all">
							<li id="all">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${all.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${all.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${all.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함w) : </strong>${all.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${all.discount }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/kt/${all.payment }" title="${all.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>
							
							
							<c:forEach items="${yTeen }" var="yTeen">
							<li id="yTeen">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType7"><label for="fareType7"> -->
											<strong>${yTeen.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${yTeen.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px;"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong style="width: 80px; margin-left: 40px">${yTeen.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${yTeen.sms }</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${yTeen.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${yTeen.discount }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/kt/${yTeen.payment }" title="${yTeen.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>
			
							<c:forEach items="${y24 }" var="y24">
							<li id="y24">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${y24.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${y24.data}</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong style="width: 130px; margin-left: 10px">${y24.call}</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${y24.sms}</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${y24.fixed_month}원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${y24.discount}원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/kt/${y24.payment }" title="${y24.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
										</div>
								</div>
							</li>
							</c:forEach>

			
							<c:forEach items="${lteEgg }" var="lteEgg">
							<li id="lteEgg">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${lteEgg.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${lteEgg.data}</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${lteEgg.call}</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>${lteEgg.sms}</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함) : </strong>${lteEgg.fixed_month}원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${lteEgg.discount}원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/kt/${lteEgg.payment }" title="${lteEgg.payment } 자세히보기" class="btnS btnDgray">자세히보기</a>
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