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
		$('a[id=all]').click(function(){ 		
			$('#all').css("font-weight", "bold");
			$('#all').css("color", "red");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_y24Egg').css("font-weight", "normal");
			$('#k_y24Egg').css("color", "black");
			$('li[id=limited]').show();
			$('li[id=all]').show();
			$('li[id=yTeen]').show();
			$('li[id=y24]').show();
			$('li[id=lteEgg]').show();
		});
		
		$('#k_limited').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "bold");
			$('#k_limited').css("color", "red");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			
			$('li[id=all]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=y24]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_all').click(function() {
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "bold");
			$('#k_all').css("color", "red");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=y24]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_yTeen').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "bold");
			$('#k_yTeen').css("color", "red");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=all]').hide();
			$('li[id=y24]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_y24').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_all').css("font-weight", "normal");
			$('#k_all').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "bold");
			$('#k_y24').css("color", "red");
			$('#k_lteEgg').css("font-weight", "normal");
			$('#k_lteEgg').css("color", "black");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=all]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=lteEgg]').hide();
		});
		
		$('#k_lteEgg').click(function() {	
			$('#all').css("font-weight", "normal");
			$('#all').css("color", "black");
			$('#k_limited').css("font-weight", "normal");
			$('#k_limited').css("color", "black");
			$('#k_yTeen').css("font-weight", "normal");
			$('#k_yTeen').css("color", "black");
			$('#k_y24').css("font-weight", "normal");
			$('#k_y24').css("color", "black");
			$('#k_lteEgg').css("font-weight", "bold");
			$('#k_lteEgg').css("color", "red");
			$('li').show();
			$('li[id=limited]').hide();
			$('li[id=all]').hide();
			$('li[id=yTeen]').hide();
			$('li[id=y24]').hide();
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
											<strong style="width: 130px; margin-left: 10px">${limited.call }</strong>
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
										<a href="/phonefo/payment/skt/${limited.payment }" title="T시그니처 Master 자세히보기" class="btnS btnDgray">자세히보기</a>
										
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
										<a href="/phonefo/payment/skt/${all.payment }" title="band YT 퍼펙트 자세히보기" class="btnS btnDgray">자세히보기</a>
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
										<a href="/phonefo/payment/skt/${yTeen.payment }" title="band 데이터 퍼펙트S 자세히보기" class="btnS btnDgray">자세히보기</a>
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
										<a href="/phonefo/payment/skt/${y24.payment }" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
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
										<a href="/phonefo/payment/skt/${lteEgg.payment }" title="band 데이터 6.5G 자세히보기" class="btnS btnDgray">자세히보기</a>
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