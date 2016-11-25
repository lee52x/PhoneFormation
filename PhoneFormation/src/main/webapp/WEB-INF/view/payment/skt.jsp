<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css" rel="stylesheet" type="text/css">

<!-- <link href="http://www.tworld.co.kr/poc/inc/css/product.css"	rel="stylesheet" type="text/css"> -->
<style type="text/css">
/*검색결과*/
.resultTop .infoBox{overflow:hidden}
.resultTop .infoBox .filtering{width:1000px;margin:0 auto;text-align:center}
.resultTop .infoBox .filtering li{display:inline-block;*display:inline;*zoom:1;padding-bottom:20px}
.resultTop .infoBox .filtering li a{display:block;padding:0 10px 0 15px;font-size:16px;line-height:20px}
.resultTop .infoBox .filtering li+li a{border-left:1px solid #e4e4e4}
.resultTop .infoBox .filtering li.on a{color:#ea002c;font-weight:bold}
.resultTop .infoBox .guide{text-align:right}
.resultTop .infoBox .guide span{padding-left: 22px;font-size:16px}
.resultTop .infoBox .guide span+span{margin-left:15px}

#monthly{color:#fb6400}
#stipulation{color:#00a49a}
/*table*/
.infoBox{position:relative;margin:0;padding-bottom:17px}/*테이블 상단*/
.infoBox .addInfo{position:absolute;bottom:17px;right:0}
.infoBox .titDep1,.infoBox .titDep2,.infoBox .titDep3,.infoBox .titDep4,.infoBox .titDep5,.infoBox .titDep6{padding:0}
.infoBox .title{padding-right:16px;font-size:20px;line-height:20px;color:#111;letter-spacing:-2px}
.infoBox .btnS{margin-left:6px}
.infoBox.pd0{padding-bottom:0}

.popCon .infoBox{padding-bottom:12px}
.popCon .infoBox .titDep1,.popCon .infoBox .titDep2,.popCon .infoBox .titDep3,.popCon .infoBox .titDep4,.popCon .infoBox .titDep5,.popCon .infoBox .titDep6{padding:0}
.popCon .infoBox .addInfo{bottom:12px}



.fareList>ul{border-bottom:1px solid #ccc}
.fareList>ul>li{padding:29px;*zoom:1;border:1px solid #fff;border-top:1px solid #ccc;vertical-align:top}
.fareList>ul>li+li{margin-top:-1px;border-top:1px solid #e4e4e4}
.fareList>ul>li:after{content:'';display:block;clear:both}
.fareList>ul>li .blank{display:inline-block !important;height:108px;margin-left:-5px;vertical-align:middle}
.fareList>ul>li .title{float:left;width:415px;min-height:108px}
.fareList>ul>li .title>div{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}
.fareList>ul>li .title strong{display:block;color:#333;font-weight:normal;font-size:28px;line-height:36px;letter-spacing:-1px}
.fareList>ul>li .title strong sup{font-size:16px;vertical-align:10px}
.fareList>ul>li .title span{display:block;color:#666;font-size:16px;line-height:22px;letter-spacing:-1px}
.fareList>ul>li .title .checkbox{width:410px}
.fareList>ul>li .title .checkbox label{min-height:40px;padding-left:70px;}
.fareList>ul>li .title .checkbox label span{margin-top:7px}
.fareList>ul>li .title .checkbox.checked label{background-position:-1180px 50%}
.fareList>ul>li .title .fareTit{width:340px;min-height:40px;padding-left:70px;}
.fareList>ul>li .title .fareTit span{margin-top:7px}
.fareList>ul>li .infoArea{float:right;width:701px;min-height:108px;text-align:right}
.fareList>ul>li .infoArea>*{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}
.fareList>ul>li .infoArea>*:after{content:'';display:block;clear:both}
.fareList>ul>li .infoArea .list1{height:auto}
.fareList>ul>li .infoArea .list2{margin-left:15px}
.fareList>ul>li .infoArea .list2 li{float:left;width:108px;height:71px;padding-top:37px;stext-align:center;font-size:15px;font-weight:bold;vertical-align:top}
.fareList>ul>li .infoArea .list2 li+li{margin-left:10px}
.fareList>ul>li .infoArea .list2 li strong{position:absolute;left:-9999px;font-size:0;line-height:0;text-indent:-9999px}
.fareList>ul>li .infoArea .list2 li span{display:block;font-size:14px}
.fareList>ul>li .infoArea .list2 li.monthly{background-position:0 0;color:#fb6400}
.fareList>ul>li .infoArea .list2 li.stipulation{background-position:0 -108px;color:#00a49a}
.fareList>ul>li .infoArea .list2 li.noData{background:none;text-indent:-9999px;font-size:0;line-height:0}
.fareList>ul>li .infoArea .list2 li span.free{font-weight:bold;font-size:18px;line-height:32px}
.fareList>ul>li .infoArea .list3{height:auto}
.fareList>ul>li .infoArea>.btnBox{width:100px;padding:0;margin-left:20px}
.fareList>ul>li .infoArea>.btnBox>a{float:left;width:100px;min-width:auto;padding:0}
.fareList>ul>li .infoArea>.btnBox>a~a{float:left;width:45px;margin:5px 0 0}
.fareList>ul>li .infoArea>.btnBox>a~a~a{float:right}
.fareList>ul>li .infoArea>.btnBox>a img{display:inline-block;margin-top:9px}
.fareList>ul>li.mbRouter .title{width:755px}
.fareList>ul>li.mbRouter .title .checkbox{width:750px}
.fareList>ul>li.mbRouter .title .fareTit{width:680px}
.fareList>ul>li.mbRouter .infoArea{width:320px}
.fareList>ul>li.mbRouter .infoArea .list1 li{width:50px}
.fareList .btnMore{margin-top:-1px}


infoArea .list1{overflow:hidden;height:120px}
.infoArea .list1 li{float:left;width:107px;text-align:center}
.infoArea .list1 li+li+li{background:none}
.infoArea .list1 li img{vertical-align:top}
.infoArea .list1 li strong{display:block;padding-top:7px;color:#333;font-size:16px;line-height:24px;letter-spacing:-2px;word-break:break-all}
.infoArea .list1 li:first-child strong{letter-spacing:-1px}
.infoArea .list1 li span{display:block;font-size:12px;line-height:14px}
.infoArea .list3{overflow:hidden;height:120px}
.infoArea .list3 li{float:left;min-width:60px;padding-right:10px;color:#333;text-align:center}
.infoArea .list3 li+li{margin-left:-10px;padding-left:20px;background:url(/poc/img/product/ico_cb_plus.gif) no-repeat 1px 7px}
.infoArea .list3 li strong{display:block;margin-top:10px;font-size:16px;line-height:22px;letter-spacing:-1px}
.infoArea .list3 li.cp4{padding-left:40px}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$('#all').click(function(){ 		
			$('#all').css("font-weight", "bold");
			$('#all').css("color", "red");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yf').css("font-weight", "normal");
			$('#b_yf').css("color", "black");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li[id=signiture]').show();
			$('li[id=band_yf]').show();
			$('li[id=band_data]').show();
			$('li[id=everyone_unlimited]').show();
			$('li[id=t_together]').show();
		});
		
		$('#t_si').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "bold");
			$('#t_si').css("color", "red");
			$('#band_yf').css("font-weight", "normal");
			$('#band_yf').css("color", "black");
			$('#band_data').css("font-weight", "normal");
			$('#band_data').css("color", "black");
			$('#everyone_unlimited').css("font-weight", "normal");
			$('#everyone_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=band_yf]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#b_yf').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yf').css("font-weight", "bold");
			$('#b_yf').css("color", "red");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_data]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#b_data').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yf').css("font-weight", "normal");
			$('#b_yf').css("color", "black");
			$('#b_data').css("font-weight", "bold");
			$('#b_data').css("color", "red");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yf]').hide();
			$('li[id=everyone_unlimited]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#e_unlimited').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yf').css("font-weight", "normal");
			$('#b_yf').css("color", "black");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "bold");
			$('#e_unlimited').css("color", "red");
			$('#t_together').css("font-weight", "normal");
			$('#t_together').css("color", "black");
			$('li').show();
			$('li[id=signiture]').hide();
			$('li[id=band_yf]').hide();
			$('li[id=band_data]').hide();
			$('li[id=t_together]').hide();
		});
		
		$('#t_together').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#t_si').css("font-weight", "normal");
			$('#t_si').css("color", "black");
			$('#b_yf').css("font-weight", "normal");
			$('#b_yf').css("color", "black");
			$('#b_data').css("font-weight", "normal");
			$('#b_data').css("color", "black");
			$('#e_unlimited').css("font-weight", "normal");
			$('#e_unlimited').css("color", "black");
			$('#t_together').css("font-weight", "bold");
			$('#t_together').css("color", "red");
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
										<li id="monthly" style="height: 108px""><strong>월정액 (부가세포함) : </strong>${signiture.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${signiture.fixed_month_dis }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="/phonefo/payment/skt/signiture_master" title="T시그니처 Master 자세히보기" class="btnS btnDgray">자세히보기</a>
										
									</div>
								</div>
							</li>
							</c:forEach>
							
							<c:forEach items="${band_yf }" var="band_yf">
							<li id="band_yf">
								<div class="title" style="width: 300px">
									<div class="checkbox">
										
											<strong>${band_yf.payment }</strong>
										
									</div>
									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea">
									<span class="blank"><!-- design --></span>
									<ul class="list1">
										<li style="width: 70px"><img src="/resources/images/payment/skt/ico_data.png" alt="데이터 기본 제공량">
											<strong>${band_yf.data }</strong>
											<span></span><!-- 부가설명 -->
										</li>
										<li style="width: 150px"><img src="/resources/images/payment/skt/ico_call.png" alt="음성 기본 제공량">
											<strong>${band_yf.call }</strong>
											<span></span>
										</li>
										<li><img src="/resources/images/payment/skt/ico_sms.png" alt="문자 기본 제공량">
											<strong>기본제공</strong>
										</li>
									</ul>
									<ul class="list2">
										<li id="monthly" style="height: 108px"><strong>월정액 (부가세포함w) : </strong>${band_yf.fixed_month }원</li>
										
										<li id="stipulation" style="height: 108px"><strong>24개월약정시 (부가세포함) : </strong>${band_yf.fixed_month_dis }원</li>
										
									</ul>
									<div class="btnBox">
										<a href="javascript:goProductDetail('band YT 퍼펙트', 'NA00005017', 'A101');" title="band YT 퍼펙트 자세히보기" class="btnS btnDgray">자세히보기</a>
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
										<a href="javascript:goProductDetail('band 데이터 퍼펙트S', 'NA00005134', 'A101');" title="band 데이터 퍼펙트S 자세히보기" class="btnS btnDgray">자세히보기</a>
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
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
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
										<a href="javascript:goProductDetail('band 데이터 6.5G', 'NA00004773', 'A101');" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
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