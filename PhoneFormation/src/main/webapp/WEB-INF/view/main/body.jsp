<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>Phone Formantion</title>
</head>
<style type="text/css">
table {
    border-collapse: collapse;
  }
  tbody {
    background-color: #F79F81;
    border: 1px solid #ffffff;
  }
  tfoot {
    background-color: #F3E2A9;
    border: 1px solid #ffffff;
  }
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
		$('#skt_tag').hover(function() {
			$('#skt_event').css("display", "block");
			$('#kt_event').css("display", "none");
			$('#lg_event').css("display", "none");
		});
		
		$('#kt_tag').hover(function() {
			$('#skt_event').css("display", "none");
			$('#kt_event').css("display", "block");
			$('#lg_event').css("display", "none");
		});
		
		$('#lg_tag').hover(function() {
			$('#skt_event').css("display", "none");
			$('#kt_event').css("display", "none");
			$('#lg_event').css("display", "block");
		});
		
		$('#skt_pay').hover(function() {
			$('#skt_pay_img').css("display", "block");
			$('#kt_pay_img').css("display", "none");
			$('#lg_pay_img').css("display", "none");
		});
		
		$('#kt_pay').hover(function() {
			$('#skt_pay_img').css("display", "none");
			$('#kt_pay_img').css("display", "block");
			$('#lg_pay_img').css("display", "none");
		});
		
		$('#lg_pay').hover(function() {
			$('#skt_pay_img').css("display", "none");
			$('#kt_pay_img').css("display", "none");
			$('#lg_pay_img').css("display", "block");
		});
		
	});


</script>

<body>
<div class="container">
<div class="slider-1_wrapper" style="margin: 1%;">
                <div class="slider-1 revslider">
                    <ul>
                        <!-- THE FIRST SLIDE --> 
                        <li data-transition="fade" data-slotamount="5" data-masterspeed="300"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="/resources/images/main/삼성.png" data-fullwidthcentering="on" alt="background"> 
                            
                            <!-- THE CAPTIONS/LAYERS IN THIS SLIDE -->
                            <!-- 메인화면 슬라이드 -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="58" 
                                  data-y="150" 
                                  data-speed="300" 
                                  data-start="1600" 
                                  data-easing="easeOutExpo">Welcome to<br>
                                  	핸드폰의 모든 정보<br/>
                               		PhoneFormation이 알려드립니다</div>
                            <div class="caption small-600-black lfr" 
                                  data-x="58" 
                                  data-y="250" 
                                  data-speed="400" 
                                  data-start="2000" 
                                  data-easing="easeOutExpo">사고 싶은 핸드폰의 정보가 궁금해?<br/>
                                	원하는 요금제, 바꾸고 싶은 요금제가 궁금해?<br/>
                                	폰은 팔고 싶은데, 가격이 궁금해?<br>
                               		당신이 원하는 정보를 phoneFormation에서 검색해 보세요</div>
                            <div class="caption lfl" 
                                  data-x="650" 
                                  data-y="120" 
                                  data-speed="400" 
                                  data-start="1200" 
                                  data-easing="easeOutExpo"><img src="/resources/images/payment/SKT.png" alt="SKT" width="200px" /> </div>
                            <div class="caption lfl" 
                                  data-x="450" 
                                  data-y="250" 
                                  data-speed="400" 
                                  data-start="700" 
                                  data-easing="easeOutExpo"><img src="/resources/images/payment/KTOlleh.png" alt="KT Olleh" width="200px"/> </div>
                            <div class="caption lfl" 
                                  data-x="550" 
                                  data-y="350" 
                                  data-speed="400" 
                                  data-start="900" 
                                  data-easing="easeOutExpo"><img src="/resources/images/payment/LGU+.png" alt="LG U+" width="200px" /> </div>
                            <div class="caption lfl" 
                                  data-x="800" 
                                  data-y="300" 
                                  data-speed="400" 
                                  data-start="600" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/Samsung.png" alt="SAMSUNG" width="200px" /> </div>
                            <div class="caption lfl" 
                                  data-x="800" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="500" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/LG.png" alt="LG" width="200px" /> </div>
                            <div class="caption lfl" 
                                  data-x="450" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/Apple.png" alt="APPLE" width="100px" /> </div>
                        </li>
                        
                        <!-- THE SECOND SLIDE --> 
                        <!-- SANSUNG 슬라이드 -->
                        <li data-transition="papercut" data-slotamount="5" data-masterspeed="500" data-delay="9400"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="/resources/images/main/삼성.png" data-fullwidthcentering="on" alt="background"> 
                            
                            <!-- THE CAPTIONS/LAYERS IN THIS SLIDE -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="650" 
                                  data-y="150" 
                                  data-speed="300" 
                                  data-start="400"
                                  data-easing="easeOutExpo">SAMSUNG<br/>
                                	스마트폰을 원하세요?</div>
                            <div class="caption small-600-black lfr" 
                                  data-x="650" 
                                  data-y="225" 
                                  data-speed="300" 
                                  data-start="800" 
                                  data-easing="easeOutExpo">아래의 버튼을 눌러<br/>
                                	나에게 맞는 스마트폰을 찾아보세요 <br>
                                  	(갤럭시 A 시리즈, J 시리즈, S 시리즈, 노트 시리즈)</div>
                            <div class="caption randomrotate" 
                                  data-x="650" 
                                  data-y="300" 
                                  data-speed="300" 
                                  data-start="1200" 
                                  data-easing="easeOutExpo"><a href="#" class="btn-custom btn-medium border-btn">SAMSUNG 스마트폰 보러가기</a> </div>
                             <div class="caption lfl" 
                                  data-x="100" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/s7.png" alt="S7" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="220" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/s6.png" alt="S6" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="340" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/s6edge.png" alt="S6Edge" width="100px" /> </div>
                              <div class="caption lfl" 
                                  data-x="460" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/j7.png" alt="J7" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="120" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/note5.png" alt="Note5" width="135px" /> </div>
                             <div class="caption lfl" 
                                  data-x="265" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/note4edge.png" alt="NoteEdge" width="145px" /> </div>
                             <div class="caption lfl" 
                                  data-x="420" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/a8.png" alt="A8" width="100px" /> </div>
                            
                        </li>
                        
                        <!-- THE THIRD SLIDE --> 
                        <!-- LG슬라이드 -->
                        <li data-transition="turnoff" data-slotamount="5" data-masterspeed="300"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="/resources/images/main/삼성.png" alt="background" data-fullwidthcentering="on" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                            
                            <!-- THE CAPTIONS/LAYERS IN THIS SLIDE -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="100" 
                                  data-y="138" 
                                  data-speed="300" 
                                  data-start="800" 
                                  data-easing="easeOutExpo">LG<br/>
                                	스마트폰은 어떠신가요?</div>
                            <div class="caption small-600-black lfr" 
                                  data-x="100" 
                                  data-y="214" 
                                  data-speed="300" 
                                  data-start="1200" 
                                  data-easing="easeOutExpo">아래의 버튼을 눌러<br/>
                                	나에게 맞는 스마트폰을 찾아보세요 <br>
                                  	(G 시리즈, V 시리즈)</div>
                            <div class="caption randomrotate" 
                                  data-x="100" 
                                  data-y="280" 
                                  data-speed="300" 
                                  data-start="1600" 
                                  data-easing="easeOutExpo"><a href="#" class="btn-custom btn-medium border-btn">LG 스마트폰 보러기기</a> </div>
                            <div class="caption lfl" 
                                  data-x="580" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/g3.png" alt="G3" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="710" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/g4.png" alt="G4" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="840" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/g3cat6.png" alt="G3Cat6" width="100px" /> </div>
                              <div class="caption lfl" 
                                  data-x="520" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/g3screen.png" alt="G3Screen" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="650" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/g5.png" alt="G5" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="770" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/g3a.png" alt="G3A" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="900" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/gstylo.png" alt="GStylo" width="100px" /> </div>
                        </li>
                        
                        <!-- THE FOURTH SLIDE --> 
                        <li data-transition="papercut" data-slotamount="7" data-masterspeed="300"> 
                            <!-- MAIN IMAGE --> 
                            <img src="/resources/images/main/삼성.png" data-fullwidthcentering="on" alt="background"> 
                            
                            <!-- LAYER NR. 1 -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="700" 
                                  data-y="125" 
                                  data-speed="300" 
                                  data-start="1600" 
                                  data-easing="easeOutExpo">iPhone<br>
                                  	스마트폰도 있습니다</div>
                            
                            <!-- LAYER NR. 3 -->
                            <div class="caption small-600-black lfr" 
                                  data-x="700" 
                                  data-y="200" 
                                  data-speed="300" 
                                  data-start="2000" 
                                  data-easing="easeOutExpo">아래의 버튼을 눌러<br>
                                  	나에게 맞는 스마트폰을 찾아보세요<br>
                                  	(6 시리즈, 7 시리즈, SE 시리즈)</div>
                            
                            <!-- LAYER NR. 4 -->
                            <div class="tp-caption sfb start" 
                                  data-x="700" 
                                  data-y="265" 
                                  data-speed="300" 
                                  data-start="2500" 
                                  data-easing="easeOutExpo"><a href="#" class="btn-custom btn-medium border-btn">iPhone 보러기기</a> </div>
                            
                            <!-- LAYER NR. 5 -->
                           
                             <div class="caption lfl" 
                                  data-x="280" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/iPhone7.png" alt="iPhone7" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="440" 
                                  data-y="50" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/iPhone7Plus.png" alt="iPhone7Plus" width="100px" /> </div>
                              <div class="caption lfl" 
                                  data-x="210" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/iPhone6S.png" alt="iPhone6S" width="100px" /> </div>
                             <div class="caption lfl" 
                                  data-x="360" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/iPhone6Plus.png" alt="iPhone6Plus" width="100px" /> </div>
                              <div class="caption lfl" 
                                  data-x="500" 
                                  data-y="150" 
                                  data-speed="400" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/iPhoneSE.png" alt="iPhoneSE" width="100px" /> </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div style="width: 21%; float: left;">
            <div style="border: 1px solid black; margin-left: 2%; margin-right:2%; margin-top:2%;margin-bottom:1.5%; text-align: center; vertical-align: middle;height: 100%;width: 100%">
            	<a href="#"><img alt="핸드폰 수리비" src="/resources/images/main/soori.png" height="100%;"></a>
            </div>
  			<div style="border: 1px solid black; margin-left: 2%; margin-right:2%;margin-top: 1.5%; text-align: center; vertical-align: middle;height: 100%;width: 100%">
            	<a href="#"><img alt="중고폰 판매가" src="/resources/images/main/joonggo.png" height="100%;"></a>
            </div>
            </div>
            <div style="width: 53.5%; float: left; border: 1px solid black; margin-left: 1.5%;margin-top: 0.5%; background-color: #eeeeee; text-align: center;">
            	<div id="skt_pay" style="width: 5%; float: left; height: 100%;">S<br>K<br>T<br>요<br>금<br>제</div>
            	<div id="skt_pay_img" style="width: 85%; float: left;"><a href=""><img alt="" src="/resources/images/main/skt_pay.png" width="100%"></a></div>
            	<div id="kt_pay" style="width: 5%; float: left;">O<br>l<br>l<br>e<br>h<br>요<br>금<br>제</div>
            	<div id="kt_pay_img" style="width: 85%; float: left; display: none;"><a href=""><img alt="" src="/resources/images/main/kt_pay.png" width="100%"></a></div>
            	<div id="lg_pay" style="width: 5%; float: left;">L<br>G<br>U<br>+<br>요<br>금<br>제</div>
            	<div id="lg_pay_img" style="width: 85%; float: left; display: none;"><a href=""><img alt="" src="/resources/images/main/lg_pay.png" width="100%"></a></div>
            </div>
            <div style="border: 1px solid black; width: 22%;;float: right; vertical-align: middle; text-decoration: none ;margin:0.5%;text-align: center;vertical-align: middle; font-size: 25px;">
        			<div id="skt_tag" style="height: ; background-color: #dddddd; margin: auto;"><img alt="SKT 이벤트" src="/resources/images/main/skt_event.png" height="100%" width="100%"></div>
        			<div style="height: 10px;"></div>
        			<div style="display:;height: ;" id="skt_event"><a href=""><img alt="SKT 이벤트" src="/resources/images/payment/SKT.png" width="60%;" height="85%;"></a></div>
        			<div id="kt_tag" style="height: ; background-color: #dddddd;"><img alt="" src="/resources/images/main/ktOlleh_event.png" height="100%" width="100%"></div>
        			<div style="height: 10px;"></div>
        			<div style="display: none;height: ;" id="kt_event"><a href=""><img alt="KT 이벤트" src="/resources/images/payment/KTOlleh.png" width="90%;"></a></div>
        			<div id="lg_tag" style="height: ; background-color: #dddddd;"><img alt="" src="/resources/images/main/lgU+_event.png" height="100%" width="100%"></div>      			 
        			<div style="height: 10px;"></div>
        			<div style=" display: none;height: ;" id="lg_event"><a href=""><img alt="LG 이벤트" src="/resources/images/payment/LGU+.png" width="90%;"></a></div>
        	</div>
        	<div>
            </div>
            </div>
            <br><br>
            <div class="container">
            <div style="width: 48%;float: left; margin-left: 1%;">
				<table style="width: 100%;">
					<thead>
						<tr>
							<th colspan="2" style="font-size: 20px;">공지사항</th>
							<th style="float: right;"><a href="#">더보기</a></th>
						</tr>
					</thead>
					<tbody>
						<tr id="head">
							<th style="width: 20%; margin-left: 1px solid black; text-align: center;">글번호</th>
							<th style="width: 60%">제목</th>
							<th style="width: 20%;  text-align: center;">조회수</th>
						</tr>
					</tbody>
					<tfoot>
						<tr>
						<td style="text-align: center;">1</td>
						<td>공지사항</td>
						<td style="text-align: center;">5</td>
						</tr>
					</tfoot>
				</table>
			</div>
           <div style="width: 48%;float: left; margin-left: 1%;">
				<table style="width: 100%;">
					<thead>
						<tr>
							<th colspan="2" style="font-size: 20px;">자유게시판</th>
							<th style="float: right;"><a href="#">더보기</a></th>
						</tr>
					</thead>
					<tbody>
						<tr id="head">
							<th style="width: 20%; text-align: center;">글번호</th>
							<th style="width: 60%">제목</th>
							<th style="width: 20%; text-align: center;">조회수</tH>
						</tr>
					</tbody>
					<tfoot>
						<tr>
						<td style="text-align: center;">1</td>
						<td>자유게시판</td>
						<td style="text-align: center;">3</td>
						</tr>
					</tfoot>
				</table>
			</div>
			</div>
            

  
</body>
</html>