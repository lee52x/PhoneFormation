<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제 - SKT</title>
<link href="http://www.tworld.co.kr/poc/inc/css/common.css" rel="stylesheet" type="text/css">
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
.resultTop .infoBox .guide span.monthly{background:url(/resources/images/payment/skt/bl_product_guide1.png) no-repeat 0 center;color:#fb6400}
.resultTop .infoBox .guide span.stipulation{background:url(/resources/images/payment/skt/bl_product_guide2.png) no-repeat 0 center;color:#00a49a}

.fareList>ul{border-bottom:1px solid #ccc}
.fareList>ul>li{padding:29px;*zoom:1;border:1px solid #fff;border-top:1px solid #ccc;vertical-align:top}
.fareList>ul>li+li{margin-top:-1px;border-top:1px solid #e4e4e4}
.fareList>ul>li:after{content:'';display:block;clear:both}
.fareList>ul>li .blank{display:inline-block !important;height:108px;margin-left:-5px;vertical-align:middle}
.fareList>ul>li .title{float:left;width:40px;min-height:108px}
.fareList>ul>li .title>div{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}
.fareList>ul>li .title strong{display:block;color:#333;font-weight:normal;font-size:28px;line-height:36px;letter-spacing:-1px}
.fareList>ul>li .title strong sup{font-size:16px;vertical-align:10px}
.fareList>ul>li .title span{display:block;color:#666;font-size:16px;line-height:22px;letter-spacing:-1px}
.fareList>ul>li .title .checkbox{width:410px}
.fareList>ul>li .title .checkbox label{min-height:40px;padding-left:70px;background:url(/resources/images/payment/skt/ico_fare_check.png) no-repeat 0 50%}
.fareList>ul>li .title .checkbox label span{margin-top:7px}
.fareList>ul>li .title .checkbox.checked label{background-position:-1180px 50%}
.fareList>ul>li .title .fareTit{width:340px;min-height:40px;padding-left:70px;background:url(/resources/images/payment/skt/ico_my_fare.png) no-repeat 0 50%}
.fareList>ul>li .title .fareTit span{margin-top:7px}
.fareList>ul>li .infoArea{float:right;width:701px;min-height:108px;text-align:right}
.fareList>ul>li .infoArea>*{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}
.fareList>ul>li .infoArea>*:after{content:'';display:block;clear:both}
.fareList>ul>li .infoArea .list1{height:auto;margin-right: 30px;margin-top: 30px}
.fareList>ul>li .infoArea .list2{margin-left:15px}
.fareList>ul>li .infoArea .list2 li{float:left;width:108px;height:71px;padding-top:37px;background:url(/resources/images/payment/skt/bg_product1.png) no-repeat 0 0;text-align:center;font-size:15px;font-weight:bold;vertical-align:top}
.fareList>ul>li .infoArea .list2 li+li{margin-left:10px}
.fareList>ul>li .infoArea .list2 li strong{position:absolute;left:-9999px;font-size:0;line-height:0;text-indent:-9999px}
.fareList>ul>li .infoArea .list2 li span{display:block;font-size:14px}
.fareList>ul>li .infoArea .list2 li.monthly{background-position:0 0;color:#fb6400}
.fareList>ul>li .infoArea .list2 li.stipulation{background-position:0 -108px;color:#00a49a}
.fareList>ul>li .infoArea .list2 li.noData{background:none;text-indent:-9999px;font-size:0;line-height:0}
.fareList>ul>li .infoArea .list2 li span.free{font-weight:bold;font-size:18px;line-height:32px}
.fareList>ul>li .infoArea .list3{height:auto}
.fareList>ul>li .infoArea>.btnBox{width:100px;padding:0;margin-left:20px;margin-top: 30px}
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
.userData{position:relative;top:0;width:1180px;background:#fff;z-index:100}
.userData .fareList>ul{border-bottom:0 none}
.userData .fareList>ul>li{margin-bottom:-1px}
.userData .fareList>ul>li.myFare{position:relative;border:1px solid #514f65}
.userData .fareList>ul>li.compare{border:1px solid #ccc;background:#f7f7f7}
.internet .fareList>ul>li .title{width:730px}
.internet .fareList>ul>li .title .checkbox{width:725px}
.internet .fareList>ul>li .title .fareTit{width:655px}
.internet .fareList>ul>li .infoArea{width:360px}
.iptv .fareList>ul>li .title{width:590px}
.iptv .fareList>ul>li .title .checkbox{width:585px}
.iptv .fareList>ul>li .title .fareTit{width:515px}
.iptv .fareList>ul>li .infoArea{width:500px}
.phone .fareList>ul>li .title{width:720px}
.phone .fareList>ul>li .title .checkbox{width:715px}
.phone .fareList>ul>li .title .fareTit{width:645px}
.phone .fareList>ul>li .infoArea{width:370px}
.roaming .fareList>ul>li .title{width:830px}
.roaming .fareList>ul>li .title .checkbox{width:825px}
.roaming .fareList>ul>li .title .fareTit{width:755px}
.roaming .fareList>ul>li .infoArea{width:260px}

.prCont2{min-width:1180px;border:0 none !important}
.prCont2,.prCont2 .inner{background:url(/resources/images/payment/skt/bg_prcont2.png) repeat-y 50% 0 !important}
.prCont2 a{display:inline-block;height:48px;padding:0 20px;border:1px solid #fff;color:#fff !important;font-weight:bold;font-size:16px;line-height:46px}
.prCont2 a img{vertical-align:middle}
.prCont2 a span.ico_arrow{display:inline-block;padding-right:20px;background:url(/resources/images/payment/skt/ico_arrow2.png) no-repeat 100% 50%;color:#fff}
.prCont2 .prTit2 em,.prCont2 .prTit2 strong,.prCont2 .prCopy{color:#fff}
.quickLink .inner{position:static;padding:0;*zoom:1}
.quickLink ul{*zoom:1;padding:40px 0;background:url(/resources/images/payment/skt/bg_quick_link.png) repeat-y 50% 0}
.quickLink ul:after{content:'';display:block;clear:both}
.quickLink ul li{float:left;width:550px;padding:0 40px 0 0;color:#fff;*zoom:1}
.quickLink ul li+li{padding:0 0 0 40px}
.quickLink ul li strong{float:left;width:430px;font-weight:normal;font-size:30px;line-height:38px;letter-spacing:-1px}
.quickLink ul li p{float:left;width:430px;padding:15px 0 20px;font-size:16px;letter-spacing:-1px}
.quickLink ul li .img{float:right;width:120px;margin-top:-13px;text-align:right}
.quickLink ul li .img img{vertical-align:top}
.quickLink ul li a{float:left}
.caution2 .inner{position:static;padding:10px 0;*zoom:1}
.caution2 .inner:after{content:'';display:block;clear:both}
.caution2 strong{float:left;padding-left:35px;background:url(/resources/images/payment/skt/ico_caution2.png) no-repeat 0 13px !important;color:#fff;font-weight:normal;font-size:18px;line-height:46px}
.caution2 a{float:right}
.caution2 a:hover{text-decoration:none}
</style>
<script type="text/javascript">
//상품 리스트 조회
		$('#getProdList').click(function(){			
			var gnrlProdThm2 	= $('#gnrlProdThm2').val();	
			var prodThmNm2 		= $("#gnrlProdThm2 option:selected").text();
			var gnrlProdThm3 	= $('#gnrlProdThm3').val();	
			var prodThmNm3 		= $("#gnrlProdThm3 option:selected").text();
			
			//alert("gnrlProdThm2 : " + gnrlProdThm2 + "  -  prodThmNm2 : " + prodThmNm2 );
			//alert("gnrlProdThm3 : " + gnrlProdThm3 + "  -  prodThmNm3 : " + prodThmNm3 );

			$('#sAllThmId').val("");
			var f = document.listForm;		
			f.action = '/normal.do?serviceId=S_PROD1001&viewId=V_PROD1001&paramThmId=TC0101';
			f.submit();
			
		});
		
		// 상품 리스트 더보기
		$('#viewMore').click(function(){
			var totCnt 			= 82;
			var pageSize 		= $('#pageSize').val();
			var addPageNo		= $('#addPageNo').val();
			var sGnrlProdThmId 	= $('#sGnrlProdThmId').val();
			var sAllThmId		= $('#sAllThmId').val();/* 전체검색일 경우는 상위 테마 ID 셋팅됨 */
			var bodyArea 		= "";
			var fareNum			= "";
			addPageNo++;

			$.ajax({
					type : "POST",
					url : '/normal.do?viewId=V_PROD1023&serviceId=S_PROD6037',
					dataType : "JSON",
					data :{
						"pageNo" 			: addPageNo,
						"sGnrlProdThmId" 	: sGnrlProdThmId,
						"sAllThmId" 		: sAllThmId
					},
					success : function(data, textStatus) {
						if( data.resultCount != null && data.resultList.length > 0 ){							

							var idx = 0;													
							$.each(data.resultList, function(index, entry){
								fareNum = addPageNo * pageSize - pageSize + idx;
								
								//24개월 요금약정 금액값없을 경우 표기하지 않음
								if(entry.m24AgrmtDc == null){
									m24DcAmtTxtHtml = '<li class="noData">데이터가 없습니다.</li>'
								}else{
									m24DcAmtTxtHtml = '<li class="stipulation"><strong>24개월약정시 (부가세포함) : </strong>' + entry.m24DcAmtTxt + '</li>'
								}
								
								bodyArea +='<li>'
										+'<div class="title">'
										+'	 <div class="checkbox">'
										+'		 <input type="checkbox" id="fareType' + fareNum + '"><label for="fareType' + fareNum + '">'
										+'			 <strong>' + entry.prodNm + '</strong>'
										+'		 </label>'
										+'	 </div>'
										+'	 <span class="blank"></span>'
										+'</div>'
										+'<div class="infoArea">'
										+'	 <span class="blank"></span>'
										+'	 <ul class="list1">'
										+'		 <li><img src="/poc/img/product/ico_data.png" alt="데이터 기본 제공량">'
										+'			 <strong>' + entry.basDataTxt + '</strong>'
										+'			 <span></span>'
										+'		 </li>'
										+'		 <li><img src="/poc/img/product/ico_call.png" alt="음성 기본 제공량">'
										+'			 <strong>' + entry.basOfrVcallTmsTxt + '</strong>'
										+'			 <span></span>'
										+'		 </li>'
										+'		 <li><img src="/poc/img/product/ico_sms.png" alt="문자 기본 제공량">'
										+'			 <strong>' + entry.basOfrLtrAmtTxt + '</strong>'
										+'		 </li>'
										+'	 </ul>'
										+'	 <ul class="list2">'
										+'		 <li class="monthly"><strong>월정액 (부가세포함) : </strong>' + entry.basFeeAreaTxt + '</li>'
										+		 m24DcAmtTxtHtml
										+'	 </ul>'
										+'	 <div class="btnBox">'
										+'		 <a href="javascript:goProductDetail(\''+ entry.prodNm + '\', \''+  entry.prodId + '\', \''+  entry.ctgCd + '\');" class="btnS btnDgray" title="' + entry.prodNm + ' 자세히보기">자세히보기</a>'
										+'		 <a href="javascript:;" onclick="prAddLibraryOpen(\''+ entry.prodNm + '\', \''+  entry.prodId + '\', \''+  entry.ctgCd + '\', this);" class="btnS btnWhite" title="' + entry.prodNm + ' 보관함담기"><img src="/poc/img/product/ico_add_library2.png" alt="보관함담기 버튼 이미지"></a>'
										+'		 <a href="#prViewBenefit" onclick="javascript:prViewBenefitOpen(\''+ entry.prodNm + '\', \''+  entry.prodId + '\', \''+  entry.ctgCd + '\', event);" class="btnS btnWhite id_layerOpen" title="' + entry.prodNm + ' 혜택보기"><img src="/poc/img/product/ico_view_benefit.png" alt="혜택보기 버튼 이미지"></a>'
										+'	 </div>'
										+'</div>'
										+'</li>';	
								idx++;
	    					});
							
						 	$('#productList').append(bodyArea);
						 	$('#addPageNo').val(addPageNo);// 더보기 후 페이지 번호 셋팅
						 	
						 	var focusNum = addPageNo * pageSize - pageSize;
						 	$("#fareType"+focusNum).focus();//더보기 후 포커스를 다음 상품으로 이동
						 	
						 	if( totCnt <= pageSize * addPageNo ){// 더보기 버튼 제거
						 		$('#viewMoreBtn').remove();
						 	}

						}
					},
					error : function(xhr, status, error) {
						alert("요금상품 조회에 실패 하였습니다. 다시 선택하여 주십시오.");
					}
			});
			
		});

</script>

</head>
<body>

				<br>
				<div class="container">	
					<div class="resultTop">
						<div class="infoBox">
							<ul class="filtering">
								<li class="on"><a href="#" onclick="javascript:getProdList('T00560')" title="전체 상품 조회">전체</a></li>
								
							
									<li ><a href="#" onclick="javascript:getProdList('T00561')" title="T시그니처 상품 조회">T시그니처</a></li>
								
							
									<li ><a href="#" onclick="javascript:getProdList('T00584')" title="band YT 상품 조회">band YT</a></li>
								
							
									<li ><a href="#" onclick="javascript:getProdList('T00134')" title="band 데이터 상품 조회">band 데이터</a></li>
								
							
									<li ><a href="#" onclick="javascript:getProdList('T00135')" title="전국민 무한 상품 조회">전국민 무한</a></li>
								
							
									<li ><a href="#" onclick="javascript:getProdList('T00533')" title="T끼리">T끼리</a></li>
								
																
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
							
							<li id="">
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
										<a href="javascript:goProductDetail('T시그니처 Master', 'NA00005292', 'A101');" title="T시그니처 Master 자세히보기" class="btnS btnDgray">자세히보기</a>
										
									</div>
								</div>
							</li>
							
							<li>
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
							
							<li>
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
							
							<li>
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
							
							<li>
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
							
							<li>
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
							
							<li>
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
							
							<li>
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
							
							<li>
								<div class="title">
									<div class="checkbox">
										<!-- <input type="checkbox" id="fareType8"><label for="fareType8"> -->
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
										/div>
								</div>
							</li>
							
							<li>
								<div class="title">
									
										<!-- <input type="checkbox" id="fareType9"><label for="fareType9"> -->
											<strong>band 데이터 6.5G</strong>


									<span class="blank"><!-- design --></span>
								</div>
								<div class="infoArea" style="height: 500px">
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
							
							<!--// loop -->
						</ul>						
						<span id="viewMoreBtn">
						
						<a href="#none" class="btnMore" id="viewMore"><span>더보기</span></a><!-- 검색된 요금상품 항목이 10개가 초과되면 출력됨 | 클릭 후 위로 생성되는 데이터로 포커스 이동 -->
						
						</span>
					</div>
					
					</div>
	

</body>
</html>