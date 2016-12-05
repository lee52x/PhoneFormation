<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요금제</title>
</head>
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css" type="text/css" />

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
	$('#sktpay').hide();
	
	$(document).ready(function() {		
		
	// 퀵메뉴 하단 (요금제 비교하기)
		$('#UD').click(function() {
			var str = $('#UD_img').attr('src');
			//alert(str);

			if($('#UD_img').attr('src') === '/resources/images/payment/up.png'){
			$('#UD_img').attr('src', '/resources/images/payment/down.png');
			$('#UD_tab').css('bottom', '0px');
			}else {
				$('#UD_img').attr('src', '/resources/images/payment/up.png');
				$('#UD_tab').css('bottom', '-110px');
			}
		});
	
		$('#compare').click(function() {
			$('.payment').fadeIn();
		});
	
		$('#close').click(function() {
			$('.payment').fadeOut();
		});
	
	
	
		$('#telecom1').change(function() {
			//alert("나와라 SKT1");
		$.ajax({
			url:"/phonefo/payment/payment",
			data:{telecom1:$('#telecom1').val()},
			success:function(result){
				var options='<option>요금제 선택</option>';			  
			}			
			
		});
		
	});


		$('#telecom1').change(function() {
				//alert("나와라 SKT1");
				if($('#telecom1').val() == "SKT"){
					$.ajax({
						url:"/phonefo/payment/skt1",
						data:{payment:$('#telecom1').val()},
						success:function(result){
							var options='<option>요금제 선택</option>';
						   for(var i=0;i<result.length;i++){
							  //alert(result[i].payment);
							       options += '<option value="'+result[i].payment+'">'+result[i].payment+'</option>';
						   }
						   $('#payment1').html(options);
						}				
						
					});
				}else if($('#telecom1').val() == "KT"){
					$.ajax({
						url:"/phonefo/payment/kt1",
						data:{payment:$('#telecom1').val()},
						success:function(result){
							var options='<option>요금제 선택</option>';
						   for(var i=0;i<result.length;i++){
							  //alert(result[i].payment);
							       options += '<option>'+result[i].payment+'</option>';
						   }
						   $('#payment1').html(options);
						}
					
					
					
					});
			}else if($('#telecom1').val() == "LG"){
				$.ajax({
					url:"/phonefo/payment/lg1",
					data:{payment:$('#telecom1').val()},
					success:function(result){
						var options='<option>요금제 선택</option>';
					   for(var i=0;i<result.length;i++){
						  //alert(result[i].payment);
						       options += '<option>'+result[i].payment+'</option>';
					   }
					   $('#payment1').html(options);
					}					
					
				});
							
			}
			
		});
		
		$('#telecom2').change(function() {
			//alert("나와라 SKT1");
			if($('#telecom2').val() == "SKT"){
				$.ajax({
					url:"/phonefo/payment/skt2",
					data:{payment:$('#telecom2').val()},
					success:function(result){
						var options='<option>요금제 선택</option>';
					   for(var i=0;i<result.length;i++){
						  //alert(result[i].payment);
						       options += '<option>'+result[i].payment+'</option>';
					   }
					   $('#payment2').html(options);
					}					
				
				});
			}else if($('#telecom2').val() == "KT"){
				$.ajax({
					url:"/phonefo/payment/kt2",
					data:{payment:$('#telecom2').val()},
					success:function(result){
						var options='<option>요금제 선택</option>';
					   for(var i=0;i<result.length;i++){
						  //alert(result[i].payment);
						       options += '<option>'+result[i].payment+'</option>';
					   }
					   $('#payment2').html(options);
					}
				
				});
			}else if($('#telecom2').val() == "LG"){
			$.ajax({
					url:"/phonefo/payment/lg2",
					data:{payment:$('#telecom2').val()},
					success:function(result){
						var options='<option>요금제 선택</option>';
					   for(var i=0;i<result.length;i++){
						  //alert(result[i].payment);
						       options += '<option>'+result[i].payment+'</option>';
					   }
					   $('#payment2').html(options);
					}				
				
				});
			
			}
		
		});
		
		
		
		$('#payment1').change(function() {
			alert("안녕 요금제");
				$.ajax({
				url:"/phonefo/payment/compareskt1",
				data:{payment:$('#payment1').val()},
				success:function(result){
					var trs;
					for(var i=0;i<result.length;i++){
					 trs += '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].payment+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].fixed_month+'원</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].extra_data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].call+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].sms+'</th>'
					}
					 $('#selectpay1').html(trs);
				}
			});// SKT
			
			
			$.ajax({
				url:"/phonefo/payment/comparekt1",
				data:{payment:$('#payment1').val()},
				success:function(result){
					var trs;
					for(var i=0;i<result.length;i++){
					 trs += '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].payment+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].fixed_month+'원</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].extra_data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].call+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].sms+'</th>'
					}
					 $('#selectpay1').html(trs);
				}
			});// KT
			
			$.ajax({
				url:"/phonefo/payment/comparelg1",
				data:{payment:$('#payment1').val()},
				success:function(result){
					var trs;
					for(var i=0;i<result.length;i++){
					 trs += '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].payment+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].fixed_month+'원</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].extra_data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].call+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].sms+'</th>'
					}
					 $('#selectpay1').html(trs);
				}
			});// LG
			
			
			
		}); 
		
		
		$('#payment2').change(function() {
			alert("안녕 요금제");
				$.ajax({
				url:"/phonefo/payment/compareskt2",
				data:{payment:$('#payment1').val()},
				success:function(result){
					var trs;
					for(var i=0;i<result.length;i++){
					 trs += '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].payment+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].fixed_month+'원</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].extra_data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].call+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].sms+'</th>'
					}
					 $('#selectpay2').html(trs);
				}
			});// SKT
			
			
			$.ajax({
				url:"/phonefo/payment/comparekt2",
				data:{payment:$('#payment1').val()},
				success:function(result){
					var trs;
					for(var i=0;i<result.length;i++){
					 trs += '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].payment+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].fixed_month+'원</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].extra_data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].call+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].sms+'</th>'
					}
					 $('#selectpay2').html(trs);
				}
			});// KT
			
			$.ajax({
				url:"/phonefo/payment/comparelg2",
				data:{payment:$('#payment1').val()},
				success:function(result){
					var trs;
					for(var i=0;i<result.length;i++){
					 trs += '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].payment+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].fixed_month+'원</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].extra_data+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].call+'</th>'+
						 '<tr><th style="border-bottom: 1px solid black; height: 50px;">'+result[0].sms+'</th>'
					}
					 $('#selectpay2').html(trs);
				}
			});// LG
			
			
			
		}); 
		
		
		
		

	});

</script>


<body id="top">

	<div class="container">
		<br><br>		
                <div class="resultTop">
						<div class="infoBox" id="SKT T" style="color: #f85641"><br>
						<h3 style="margin-left: 20px; width: 100px" id=""><a href="/phonefo/payment/skt"><img alt="SKT" src="/resources/images/payment/SKT.png"></a></h3><br><br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><span style="color: #F85641;"><b>T시그니처 요금제</b></span>  </li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/skt/T 시그니처 Master" title="T시그니처 Master">T시그니처  Master</a></li>
																
								<li id="payment"><a href="/phonefo/payment/skt/T 시그니처 Classic" title="T시그니처 Classic">T시그니처 Classic</a></li>
							
							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>band YT 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/skt/band YT 퍼펙트" title="band YT 퍼펙트">band YT 퍼펙트</a></li>
																
								<li id="payment"><a href="/phonefo/payment/skt/band YT 7G" title="band YT 7G">band YT 7G</a></li>
							
								<li id="payment"><a href="/phonefo/payment/skt/band YT 3G" title="band YT 3G">band YT 3G</a></li>

								<li id="payment"><a href="/phonefo/payment/skt/band YT 3G" title="band YT 1G">band YT 1G</a></li>

								<li id="payment"><a href="/phonefo/payment/skt/band YT 세이브" title="band YT 세이브">band YT 세이브</a></li>

							</ul>
							
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>band 데이터 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 퍼펙트S" title="band 데이터 퍼펙트S">band 데이터 퍼펙트S</a></li>
								
								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 퍼펙트" title="band 데이터 퍼펙트">band 데이터 퍼펙트</a></li>
																
								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 6.5G" title="band 데이터 6.5G">band 데이터 6.5G</a></li><br>
							
								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 3.5G" title="band 데이터 3.5G">band 데이터 3.5G</a></li>
								
								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 2.2G" title="band 데이터 2.2G">band 데이터 2.2G</a></li>

								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 1.2G" title="band 데이터 1.2G">band 데이터 1.2G</a></li>

								<li id="payment"><a href="/phonefo/payment/skt/band 데이터 세이브" title="band 데이터 세이브">band 데이터 세이브</a></li>

							</ul>
							<br> 
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>전국민 무한 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/skt/전국민 무한 100" title="전국민 무한 100">전국민 무한 100</a></li>
								
								<li id="payment"><a href="/phonefo/payment/skt/전국민 무한 85" title="전국민 무한 85">전국민 무한 85</a></li>
							
								<li id="payment"><a href="/phonefo/payment/skt/LTE 데이터 무제한 80팩" title="LTE 데이터 무제한 80팩">LTE 데이터 무제한 80팩</a></li>
								
								<li id="payment"><a href="/phonefo/payment/skt/전국민 무한 75" title="전국민 무한 75">전국민 무한 75</a></li>

								<li id="payment"><a href="/phonefo/payment/skt/전국민 무한 69" title="전국민 무한 1.2G">전국민 무한 69</a></li>

							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>T끼리 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/skt/T끼리 65" title="T끼리 65">T끼리 65</a></li>
								
								<li id="payment"><a href="/phonefo/payment/skt/T끼리 55" title="T끼리 55">T끼리 55</a></li>
																
								<li id="payment"><a href="/phonefo/payment/skt/T끼리 45" title="T끼리 45">T끼리 45</a></li>
							
								<li id="payment"><a href="/phonefo/payment/skt/T끼리 35" title="T끼리 35">T끼리 35</a></li>
								
							</ul>
							<br>
						</div>
					</div>
               <br>
		 <!-- Start Recent Projects Carousel -->
                <div class="recent-projects">
                    <h4 class="title"><span>요금제 광고 영상</span></h4>
                    <div class="projects-carousel touch-carousel">
                    
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" data-lightbox-type="ajax" title="T 시그니처 요금제" href="https://youtu.be/mcZh5RcZaOI" s>
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/T_Signiture.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>T 시그니처</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="T끼리 요금제" href="https://youtu.be/GUsq6xdoG5g">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/T_Together.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>T끼리</h4>
                                        <span>SKT</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="전국민 무한 요금제" href="https://youtu.be/tOabZplgvJo">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/T_Everyone.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>전국민 무한</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="Quantum (커넥티드카 편)" href="https://youtu.be/k2MiRtVh3VI">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/Quantum.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>Quantum</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="Quantum(런칭 편)" href="https://youtu.be/K6pEm2IHieA">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/Quantum.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>Quantum</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="T전화" href=https://youtu.be/oifwfhuUb3Q>
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/T_Call.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>T전화</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                         <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="루나" href=https://youtu.be/GW8AKlioIJw>
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/Luna.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>루나</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="루나S" href=https://youtu.be/a-NOC_gfcjE>
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/RonaS.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>루나S</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="생활플랫 폼(데이터플러스 T멤버십)" href="https://youtu.be/gppAU7rwKsA">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/form.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>생활플랫 폼</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="생활플랫 폼(T갤럭시 클럽)" href="https://youtu.be/CuCzqGQzNfo">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/form2.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details" id="KT">
                                        <h4>생활플랫 폼</h4>
                                        <span>SKT</span> 
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- End Recent Projects Carousel --> 
                
                <br><br><br>
                <div class="resultTop">
						<div class="infoBox" id="K"><br>
						<h3 style="margin-left: 20px"><a href="/phonefo/payment/kt"><img alt="KT Olleh" src="/resources/images/payment/KTOlleh.png"></a></h3><br><br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px; font: bold;"><b>순 완전무한 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/kt/순 완전무한 99" title="순 완전무한 99">순 완전무한 99</a></li>
																
								<li id="payment"><a href="/phonefo/payment/kt/순 완전무한 77" title="순 완전무한 77">순 완전무한 77</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/순 완전무한 67" title="순 완전무한 67">순 완전무한 67</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/순 완전무한 61" title="순 완전무한 61">순 완전무한 61</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/순 완전무한 51" title="순 완전무한 51">순 완전무한 51</a></li>
							
							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>순 모두다올레 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/kt/순 모두다올레 41" title="순 모두다올레 41">순 모두다올레 41</a></li>
																
								<li id="payment"><a href="/phonefo/payment/kt/순 모두다올레 34" title="순 모두다올레 34">순 모두다올레 34</a></li>
							
								<li id="payment"><a href="/phonefo/payment/kt/순 모두다올레 28" title="순 모두다올레 28">순 모두다올레 28</a></li>

							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>Y틴 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/kt/Y틴 38" title="전국민 무한 100">Y틴 38</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/Y틴 32" title="Y틴 32">Y틴 32</a></li>
																
								<li id="payment"><a href="/phonefo/payment/kt/Y틴 27" title="Y틴 27">Y틴 27</a></li>
							
								<li id="payment"><a href="/phonefo/payment/kt/Y틴 20" title="Y틴 20">Y틴 20</a></li>
								
							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>Y24 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/kt/Y24 65.8" title="Y24 65.8">Y24 65.8</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/Y24 54.8" title="Y24 54.8">Y24 54.8</a></li>
																
								<li id="payment"><a href="/phonefo/payment/kt/Y24 49.3" title="Y24 49.3">Y24 49.3</a></li>
							
								<li id="payment"><a href="/phonefo/payment/kt/Y24 38.3" title="Y24 38.3">Y24 38.3</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/Y24 32.8" title="Y24 32.8">Y24 32.8</a></li>
								
							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>LTE-알 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/kt/LTE-알520" title="LTE-알520">LTE-알 520</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/LTE-알420" title="LTE-알420">LTE-알 420</a></li>
																
								<li id="payment"><a href="/phonefo/payment/kt/LTE-알340" title="LTE-알340">LTE-알 340</a></li>
							
								<li id="payment"><a href="/phonefo/payment/kt/LTE-알240" title="LTE-알240">LTE-알 240</a></li>
								
								<li id="payment"><a href="/phonefo/payment/kt/LTE-알190" title="LTE-알190">LTE-알 190</a></li>
								
							</ul>
							<br>
						</div>
					</div><hr style="color: black;">
               <br>
                <!-- Start Recent Projects Carousel -->
                <div class="recent-projects">
                    <h4 class="title"><span>요금제 영상 보기</span></h4>
                    <div class="projects-carousel touch-carousel">
                    
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" data-lightbox-type="ajax" title="순 완전무한(데이터 편)" href="https://youtu.be/sQ09IN1o4Zc">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/limtied.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>순 완전무한</h4>
                                        <span>KT Olleh</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="순 완전무한(음성 편 )" href="https://youtu.be/6JshWHyaHBc">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/limtied.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>순 완전무한</h4>
                                        <span>KT Olleh</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="Y틴 데이터 2배 쓰기" href="https://youtu.be/1F2JSKey95A">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/yTeen.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>Y틴</h4>
                                        <span>KT Olleh</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="Y24 매일 3시간 무제한" href="https://youtu.be/lwfQV9Ij-Xk">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/Y24.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>Y24</h4>
                                        <span>KT Olleh</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="https://youtu.be/xGCaL0Z03Dw">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/Y24.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>Y24</h4>
                                        <span>KT Olleh</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href=https://youtu.be/ryPG5WZ4Oew>
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/lteEgg.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>LTE 알 요금제</h4>
                                        <span>KT Olleh</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="GiGA로 5G를 향하여 - '5G' 편" href="https://youtu.be/t1fPdkyGEmc">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/GIGA_5G.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>GIGA 5G</h4>
                                        <span>KT Olleh</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="GiGA로 5G를 향하여 - 'GiGAtopia' 편" href="https://youtu.be/xPJRZ1Cwmpg">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="IOT@Home" src="/resources/images/payment/GIGA5G.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details" id="LG"> 
                                        <h4>GIGA 5G</h4>
                                        <span>KT Olleh</span> 
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- End Recent Projects Carousel --> 
                <br>
                <div>
                
               </div>
               <br>  
               <br><br>
                <div class="resultTop">
						<div class="infoBox" id="L" style="color: #ff0089;"><br>
						<h3 style="margin-left: 20px"><a href="/phonefo/payment/lg"><img alt="LG U+" src="/resources/images/payment/LGU+.png"></a></h3><br><br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>데이터 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/lg/데이터 일반" title="데이터 요금제 일반">데이터 요금제 일반</a></li>
																
								<li id="payment"><a href="/phonefo/payment/lg/데이터 1.3" title="데이터 요금제 1.3c">데이터 요금제  1.3</a></li>
							
								<li id="payment"><a href="/phonefo/payment/lg/데이터 2.3" title="데이터 요금제 2.3">데이터 요금제 2.3</a></li>
							
								<li id="payment"><a href="/phonefo/payment/lg/데이터 3.6" title="데이터 요금제3.6">데이터 요금제 3.6</a></li>
							
								<li id="payment"><a href="/phonefo/payment/lg/데이터 6.6" title="데이터 요금제6.6">데이터 요금제 6.6</a></li>
							
							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>데이터 스폐셜 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/lg/데이터 스폐셜A" title="데이터 스폐셜A">데이터 스폐셜A</a></li>
																
								<li id="payment"><a href="/phonefo/payment/lg/데이터 스폐셜B" title="데이터 스폐셜B">데이터 스폐셜B</a></li>
							
								<li id="payment"><a href="/phonefo/payment/lg/데이터 스폐셜C" title="데이터 스폐셜C">데이터 스폐셜C</a></li>

								<li id="payment"><a href="/phonefo/payment/lg/데이터 스폐셜D" title="데이터 스폐셜D">데이터 스폐셜D</a></li>

							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>LTE 망내 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/lg/LTE 망내 34" title="LTE 망내 34">LTE 망내 34</a></li>
								
								<li id="payment"><a href="/phonefo/payment/lg/LTE 망내 42" title="LTE 망내 42">LTE 망내 42</a></li>
																
								<li id="payment"><a href="/phonefo/payment/lg/LTE 망내 52" title="LTE 망내 52">LTE 망내 52</a></li>

							</ul>
							<br>
							<ul class="filtering" style="text-align: left;">
								<li id="payment" style="font-size: 18px;"><b>LTE 요금제</b></li><br>
								
							
								<li id="payment"><a href="/phonefo/payment/lg/LTE 34" title="LTE 34">LTE 34</a></li>
								
								<li id="payment"><a href="/phonefo/payment/lg/LTE 42" title="LTE 42">LTE 42</a></li>
																
								<li id="payment"><a href="/phonefo/payment/lg/LTE 52" title="LTE 52">LTE 52</a></li>
							
								<li id="payment"><a href="/phonefo/payment/lg/LTE 62" title="LTE 62">LTE 62</a></li>
								
								<li id="payment"><a href="/phonefo/payment/lg/LTE 72" title="LTE 72">LTE 72</a></li>

								<li id="payment"><a href="/phonefo/payment/lg/LTE 85" title="LTE 85">LTE 85</a></li>

								<li id="payment"><a href="/phonefo/payment/lg/LTE 100" title="LTE 100">LTE 100</a></li>

								<li id="payment"><a href="/phonefo/payment/lg/LTE 120" title="LTE 120">LTE 120</a></li>

							</ul>
							<br>
						</div>
					</div>
               <br>              
                <!-- Start Recent Projects Carousel -->
                <div class="recent-projects">
                    <h4 class="title"><span>LG U+</span></h4>
                    <div class="projects-carousel touch-carousel">
                    
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" data-lightbox-type="ajax" title="데이터 요금제" href="https://youtu.be/MmhCCyggJys">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/data.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details">
                                        <h4>데이터 요금제</h4>
                                        <span>LG U+</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="데이터 요금제" href="https://youtu.be/FPQYWKJGlHo">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/data.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>데이터 요금제</h4>
                                        <span>LG U+</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="LTE 요금제" href="https://youtu.be/0SdOWjZhJzo">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/lte.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>LTE 요금제</h4>
                                        <span>LG U+</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="U+ 페밀리샵" href=https://youtu.be/1sUvFjEIDPQ>
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/U+.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>U+ 페밀리퍕</h4>
                                        <span>LG U+</span> 
                                </div>
                            </div>
                        </div>
                        
                       <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="LTE 비디오포터" href="https://youtu.be/LOydpJopTcE">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="" src="/resources/images/payment/videoPortal.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>LTE 비디오포털</h4>
                                        <span>LG U+</span> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="IOT@home" href="https://youtu.be/xosQm65o-f4">
                                        <div class="thumb-overlay"><i class="fa fa-play"></i></div>
                                        <img alt="IOT@Home" src="/resources/images/payment/iot_home.png" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                        <h4>IOT@home</h4>
                                        <span>LG U+</span> 
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- End Recent Projects Carousel --> 
		
		<!-- 퀵메뉴 리모컨 -->
		<div style="display: block; position: fixed; top: 400px; right:10%; z-index: 150; text-align: center; border: 1px solid black; border-radius: 5px; background-color: #F8F8F8; font-family: '돋움',dotum,Helvetica,Sans-serif; width: 100px;">
			
			<div class="h_area" style="border-bottom: 1px solid black; background-color: #dddddd; border-radius: 5px 5px 0 0; cursor: move;">
                  <p><b><strong style="color: black;">리모콘</strong></b><p>
            </div>
 			<div class="remote_cont" style="margin-top: 10px;">
                        <div style="border-bottom: 1px solid black;">
                        <p><b><a href="/phonefo/main" class="main" style="text-decoration: none;" title="험페이지 이동"><span style="color: red">PHONE</span><br><span style="color: black;">FORMATION</span></a></b></p><br>
						</div>
                        
                        <div class="pg_area2" style="border-bottom: 1px solid black;">
                                <br><p>
                                <b><a href="#TOP" style="color: red; text-decoration: none;" title="SKT로 이동">SKT</a></b><br>
                                <b><a href="#KT" style="color: black; text-decoration: none;" title="KT로 이동">KT Olleh</a></b><br>
                                <b><a href="#LG" style="color: #E952DF; text-decoration: none;" title="LG로 이동">LG U+</a></b>
                                </p>
                                <br>
                        </div>
                        
                        <div style="margin: 10px;">
                        <p><b><a href="#top" style=" text-decoration: none; font-size: 20px;" title="위로">TOP</a></b></p>
                        </div>
            </div>
		</div>
		
		<!-- 요금제 비교 리모컨 -->
		<div id="UD_tab" style="display: block; position: fixed; bottom: -110px; left: 20%; z-index: 150; text-align: center; border: 1px solid black; border-radius: 5px; background-color: #F8F8F8; font-family: '돋움',dotum,Helvetica,Sans-serif; width: 60%;">

 			<div class="remote_cont">
 						<table>
 							<col width="40%" />
    						<col width="40%" />
   							<col width="10%" />
   							<col width="10%" />
 							<tr style="height: 30px;">
 								<td colspan="3" style="border-bottom: 1px solid black;height: 30px; background-color: #dddddd; border-radius: 5px 5px 0 0;"><b>요금제 비교하기</b></td>
 								<td style="border-bottom: 1px solid black; font-size: 15px; color: red; width: 10%;"><button id="UD" style="width: 100%; height: 100%;"><img id="UD_img" width="100%" height="100%" alt="탭 올리기 " src="/resources/images/payment/up.png" title="올리기"></button></td>
 							</tr>
 							<tr>
 							</tr>	
 							<tr style="height: 30px;font-size: 15px; border-bottom: 1px solid black;">
 								
 								<th colspan="2" style="width: 80%; border-right: 1px solid black;" id="select1">요금제 선택</th>
 								<th colspan="2" rowspan="3" style="width: 20%;background-color: skyblue; font-size: 20px;"><button type="button" style="width: 100%;height: 100%; color: black;" id="compare"><b>비교하기</b></button></th>
 							</tr>
 							
 							<tr style="height: 40px;font-size: 15px">
 								<td style="border-right: 1px solid black;">
 									<select style="width: 100%;height: 100%;" id="telecom1" name="telecom1">
 										<option>통신사</option>
 										<option value="SKT">SKT</option>
 										<option value="KT">KT</option>
 										<option value="LG">LG</option>
 									</select> 								
 								</td>
 								<td style="border-right: 1px solid black;">
 									<select style="width: 100%;height: 100%;" id="telecom2" name="telecom2">
 										<option>통신사</option>
 										<option value="SKT">SKT</option>
 										<option value="KT">KT</option>
 										<option value="LG">LG</option>
 									</select> 	
								</td>
 							</tr>
 							<tr style="height: 40px;font-size: 15px">
 								<td style="border-right: 1px solid black;">
 									<select id="payment1" style="width: 100%;height: 30px;">
 										<option>요금제 선택</option>
										
																
 									</select>
 								</td>
 								<td style="border-right: 1px solid black;">
 									<select id="payment2" style="width: 100%;height: 40px;">
										<option>요금제 선택</option>
 									</select>
 									
 								</td>
 							</tr>

 						</table>
 						
 						
                        
            </div>
		</div>

		
	
	 	</div>

	<div class="payment" style="display: block; position: fixed; top: 20%; left:20%; z-index: 150; text-align: center; border: 1px solid black; border-radius: 5px; background-color: #F8F8F8; font-family: '돋움',dotum,Helvetica,Sans-serif; width: 60%; height: 60%;">
			
			<div class="h_area" style=" background-color: #dddddd; border-radius: 5px 5px 0 0; height: 5%;">
                  <p style="width: 100%; display: inline-block; float: left;"><b><strong style="color: black;font-size: 25px;vertical-align: middle;">요금제 비교</strong></b>
            </div>
 			<div class="remote_cont" style="display: block; height: 80%; margin-top: 2%;">
                      <table style="width:80%; border-top: 1px solid black; margin-left: auto;margin-right: auto; margin-top: 3%;">
                      	<thead style="border-bottom: 1px solid black; font-size: 20px;">
                      		<tr style="background-color: skyblue;height: 50px;">
                      			<th style="width: 35%; border-right: 1px solid black;"><b>요금제 A</b></th>
                      			<th style="width: 30%; border-right: 1px solid black;"><b>내용</b></th>
                      			<th style="width: 35%;"><b>요금제 B</b></th>
                      		</tr>
                      	</thead>
                      	<tbody>
                      		<tr>
                      			<td style="width: 35%; border-right: 1px solid black;">
                      				<table id="selectpay1">
										
										
										
									</table>
                      			
                      			</td>
                      			<th style="width: 30%; border-right: 1px solid black;">
									<table>
										<tr>
											<th style="border-bottom: 1px solid black; height: 50px;">요금제</th>
										</tr>
										<tr>
											<th style="border-bottom: 1px solid black; height: 50px;">월정액</th>
										</tr>
										<tr>
											<th style="border-bottom: 1px solid black; height: 50px;">데이터</th>
										</tr>
										<tr>
											<th style="border-bottom: 1px solid black; height: 50px;">추가 데이터</th>
										</tr>
										<tr>
											<th style="border-bottom: 1px solid black; height: 50px;">음성</th>
										</tr>
										<tr>
											<th style="border-bottom: 1px solid black; height: 50px;">문자</th>
										</tr>
										
										
										
									</table>
								</th>
                      			<th style="width: 35%;">
                      				<table id="selectpay2">
										
										
									</table>
                      			</th>
                      		</tr>
                      	</tbody>                 
                      </table>
                      <div>
                      	
                      </div>
            </div>
                      	<div>
							<button type="button" class="btn btn-primary btn-lg" id="close">닫기</button>
						</div>
		</div>
	



				

						


</body>

</html>