

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
    <!-- Start Home Page Slider -->
    <section id="home">
        <div class="slider-1_container">
            <div class="slider-1_wrapper">
                <div class="slider-1 revslider">
                    <ul>
                        <!-- THE FIRST SLIDE --> 
                        <li data-transition="fade" data-slotamount="5" data-masterspeed="300"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="/resources/images/slider_1_bg.jpg" data-fullwidthcentering="on" alt="background"> 
                            
                            <!-- THE CAPTIONS/LAYERS IN THIS SLIDE -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="58" 
                                  data-y="138" 
                                  data-speed="300" 
                                  data-start="1600" 
                                  data-easing="easeOutExpo">PhoneFomation에 오신걸 환영합니다. <br/>
                               		 핸드폰의 모든 정보!!<br/>
                               		PhoneFormation이 알려드립니다</div>
                            <div class="caption small-600-black lfr" 
                                  data-x="58" 
                                  data-y="210" 
                                  data-speed="300" 
                                  data-start="2000" 
                                  data-easing="easeOutExpo"> <br/>
                                 <br/>
                                </div>
                            <div class="caption randomrotate" 
                                  data-x="170" 
                                  data-y="250" 
                                  data-speed="300" 
                                  data-start="2400" 
                                  data-easing="easeOutExpo"> <a href="#" class="btn-custom btn-medium">핸드폰 보러가기</a> </div>
                            <div class="caption lfl" 
                                  data-x="760" 
                                  data-y="51" 
                                  data-speed="300" 
                                  data-start="1200" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/S7Edge_T.png" alt="browser" /> </div>
                            <div class="caption lfl" 
                                  data-x="660" 
                                  data-y="100" 
                                  data-speed="300" 
                                  data-start="800" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/iPhone7_Olleh.png" alt="tablet" /> </div>
                            <div class="caption lfl" 
                                  data-x="560" 
                                  data-y="150" 
                                  data-speed="300" 
                                  data-start="400" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/V20_U+.png" alt="phone" /> </div>
                        </li>
                        
                        <!-- THE SECOND SLIDE --> 
                        <li data-transition="papercut" data-slotamount="5" data-masterspeed="500" data-delay="9400"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="images/slider_2_bg.jpg" data-fullwidthcentering="on" alt="background"> 
                            
                            <!-- THE CAPTIONS/LAYERS IN THIS SLIDE -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="625" 
                                  data-y="150" 
                                  data-speed="300" 
                                  data-start="400" 
                                  data-easing="easeOutExpo">EVERYTHING YOU NEED <br/>
                                TO BUILD EXCEPTIONAL PROJECT. </div>
                            <div class="caption small-600-black lfr" 
                                  data-x="625" 
                                  data-y="225" 
                                  data-speed="300" 
                                  data-start="800" 
                                  data-easing="easeOutExpo">Venue is the best solution for your business, Responsive & <br/>
                                Flexible, You can present your business and services <br/>
                                properly. </div>
                            <div class="caption randomrotate" 
                                  data-x="625" 
                                  data-y="300" 
                                  data-speed="300" 
                                  data-start="1200" 
                                  data-easing="easeOutExpo"><a href="#" class="btn-custom btn-medium border-btn">핸드폰 보러가기</a> </div>
                            <div class="tp-caption sfl start" 
                                  data-x="30" 
                                  data-y="bottom" 
                                  data-speed="1000" 
                                  data-start="1000" 
                                  data-easing="easeOutExpo"><img src="images/slider-3.png" alt="" /> </div>
                        </li>
                        
                        <!-- THE THIRD SLIDE --> 
                        <li data-transition="turnoff" data-slotamount="5" data-masterspeed="300"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="/resources/images/main/bgc.png" alt="background" data-fullwidthcentering="on" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                            
                            <!-- THE CAPTIONS/LAYERS IN THIS SLIDE -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="58" 
                                  data-y="138" 
                                  data-speed="300" 
                                  data-start="800" 
                                  data-easing="easeOutExpo">Fully Responsive. Retina Display Ready. <br/>
                                Touch Enabled Sliders. </div>
                            <div class="caption small-600-black lfr" 
                                  data-x="58" 
                                  data-y="214" 
                                  data-speed="300" 
                                  data-start="1200" 
                                  data-easing="easeOutExpo">Venue is the best solution for your business, Responsive & Flexible, <br/>
                                You can present your business and services properly. </div>
                            <div class="caption randomrotate" 
                                  data-x="58" 
                                  data-y="275" 
                                  data-speed="300" 
                                  data-start="1600" 
                                  data-easing="easeOutExpo"><a href="#" class="btn-custom btn-medium border-btn">Explore More Features</a> </div>
                            <div class="caption lfb" 
                                  data-x="420" 
                                  data-y="40" 
                                  data-speed="300" 
                                  data-start="400" 
                                  data-easing="easeOutExpo"><img src="/resources/images/main/S7Edge_T.png" alt="tablet" /> </div>
                        </li>
                        
                        <!-- THE FOURTH SLIDE --> 
                        <li data-transition="papercut" data-slotamount="7" data-masterspeed="300"> 
                            <!-- MAIN IMAGE --> 
                            <img src="images/slider_4_bg.jpg" data-fullwidthcentering="on" alt="background"> 
                            
                            <!-- LAYER NR. 1 -->
                            <div class="caption medium-700-black lfr" 
                                  data-x="540" 
                                  data-y="125" 
                                  data-speed="300" 
                                  data-start="1600" 
                                  data-easing="easeOutExpo"> <span class="accent-color">Solutions</span> that you need! <br>
                                The best template to get you started </div>
                            
                            <!-- LAYER NR. 3 -->
                            <div class="caption small-600-black lfr" 
                                  data-x="540" 
                                  data-y="200" 
                                  data-speed="300" 
                                  data-start="2000" 
                                  data-easing="easeOutExpo">Venue is best solution for your business, Responsive & Flexible, <br>
                                You can present your business and services properly. </div>
                            
                            <!-- LAYER NR. 4 -->
                            <div class="tp-caption sfb start" 
                                  data-x="540" 
                                  data-y="265" 
                                  data-speed="300" 
                                  data-start="2500" 
                                  data-easing="easeOutExpo"><a href="#" class="btn-custom btn-medium border-btn">Purchase This Now</a> </div>
                            
                            <!-- LAYER NR. 5 -->
                            <div class="tp-caption sfl start" 
                                  data-x="180" 
                                  data-y="bottom" 
                                  data-speed="1000" 
                                  data-start="1000" 
                                  data-easing="easeOutExpo"><img src="images/slide-02-image-01.png" alt="" /> </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- End Home Page Slider --> 

    <!-- Start Content -->
    <div id="content"> 
        
        <!-- Start Services Section -->
        <div class="container"> 
            <!-- Start Services Icons -->
            <div class="row">
                <div class="col-md-3"> 
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


        	<div>
            </div>
            </div>
                <!-- End Service Icon 6 --> 
                
            </div>
            <!-- End Services Icons --> 
        </div>
        <!-- .container --> 
        
        <!-- End Services Section --> 
        
        <!-- Start Portfolio Section -->
        <div class="project">
            <div class="container"> 
            
                <!-- Start Recent Projects Carousel -->
                <div class="recent-projects">
                    <h4 class="title"><span>최신 핸드폰</span></h4>
                    <div class="projects-carousel touch-carousel">
                    
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_2@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="/resources/images/phone/main_s7.jpg" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>SAMSUNG</h4>
                                        <span>Galaxy S7</span>
                                   </a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_2@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="/resources/images/phone/main_v20.jpg" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>LG</h4> 
                                        <span>V20</span>
                                   </a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_3@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="/resources/images/phone/main_ipse.jpg" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>Apple</h4>
                                        <span>iPhoneSE</span> 
                                   </a> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_4@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="/resources/images/phone/main_s7edge.jpg" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>SAMSUNG</h4>
                                        <span>Galaxy S7 edge</span> 
                                   </a> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_5@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="/resources/images/phone/main_v10.jpg" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>LG</h4> 
                                        <span>V10</span> 
                                   </a> 
                                </div>
                            </div>
                        </div>
                        
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_6@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="/resources/images/phone/main_ips6s.jpg" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>Apple</h4>
                                        <span>iPhone 6S</span> 
                                   </a> 
                                </div>
                            </div>
                        </div>
                        
                     
                        

                        
                    </div>
                </div>
                <!-- End Recent Projects Carousel --> 
                
            </div>
            <!-- .container --> 
        </div>
        <!-- End Portfolio Section --> 
        
        <!-- Divider -->
        <div class="hr1 margin-40"></div>
        
        <!-- Start News & Skill Section -->
        <div class="container">
            <div class="row">
                <div class="col-md-7"> 
                
                    <!-- Classic Heading -->
                    <h4 class="classic-title"><span>최신 뉴스</span></h4>
                    <div class="latest-news custom-carousel touch-carousel" data-appeared-items="2"> 
                        
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_8@2x.jpg">
                                       <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="images/portfolio/8.jpg" /> 
                                   </a>
                                </div>
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                                <div class="post-date"> <span class="day">28</span></div>
                                                <div class="post-month"> <span class="month">Dec</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                              <a href="#">Standard Post With Image</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details --> 
                            </div>
                        </div>
                        <!-- End Project Item --> 
                        
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <div class="portfolio-thumb"> 
                                  <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_7@2x.jpg">
                                     <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                       <img alt="" src="images/portfolio/7.jpg" /> 
                                  </a> 
                                </div>
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                                <div class="post-date"> <span class="day">28</span></div>
                                                <div class="post-month"> <span class="month">Dec</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                               <a href="#">Standard Post With Image</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details --> 
                            </div>
                        </div>
                        <!-- End Project Item --> 
                        
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_6@2x.jpg">
                                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="images/portfolio/6.jpg" /> 
                                   </a> 
                                </div>
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                                <div class="post-date"> <span class="day">28</span></div>
                                                <div class="post-month"> <span class="month">Dec</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                              <a href="#">Standard Post With Image</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details --> 
                            </div>
                        </div>
                        <!-- End Project Item --> 
                        
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_5@2x.jpg">
                                      <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="images/portfolio/5.jpg" /> 
                                   </a>
                                </div>
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                                <div class="post-date"> <span class="day">28</span></div>
                                                <div class="post-month"> <span class="month">Dec</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                               <a href="#">Standard Post With Image</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details --> 
                            </div>
                        </div>
                        <!-- End Project Item --> 
                        
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_4@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="images/portfolio/4.jpg" /> 
                                   </a> 
                                </div>
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                                <div class="post-date"> <span class="day">28</span></div>
                                                <div class="post-month"> <span class="month">Dec</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                               <a href="#">Standard Post With Image</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details -->
                            </div>
                        </div>
                        <!-- End Project Item --> 
                        
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_3@2x.jpg">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="images/portfolio/3.jpg" /> 
                                   </a> 
                                </div>
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                                <div class="post-date"> <span class="day">28</span></div>
                                                <div class="post-month"> <span class="month">Dec</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                              <a href="#">Standard Post With Image</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details -->
                            </div>
                        </div>
                        <!-- End Project Item --> 
                    </div>
                </div>
                <!-- .col-md-6 -->
                
                <div class="col-md-5"> 
                    
                    <!-- Classic Heading -->
                    <h4 class="classic-title"><span>통계</span></h4>
                    <div class="progress-bars">
                        <div class="progress-label">총 방문자(12432명)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="100"> <span class="progress-bar-tooltip">100</span> </div>
                        </div>
                        <div class="progress-label">등록된 업체수(52개)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="85" data-animation-delay="300"> <span class="progress-bar-tooltip">85%</span> </div>
                        </div>
                        <div class="progress-label">거래완료(1712건)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="75" data-animation-delay="600"> <span class="progress-bar-tooltip">75%</span> </div>
                        </div>

 

 
                    </div>
                </div>
                <!-- .col-md-6 --> 
            </div>
            <!-- .row --> 
        </div>
        <!-- .container --> 
        <!-- End News & Skill Section --> 
        
        <!-- Divider -->
        <div class="hr1 margin-top"></div>
        
        <!-- Start Clients/Partner Section -->
        <div class="container">
            <div class="our-clients"> 

                <!-- Classic Heading -->
                <h4 class="classic-title"><span>Our Clients</span></h4>
                <div class="clients-carousel custom-carousel touch-carousel" data-appeared-items="5"> 
                    
                    <!-- Client 1 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_sk.jpg" alt="" /></a> </div>
                    
                    <!-- Client 2 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_kt.jpg" alt="" /></a> </div>
                    
                    <!-- Client 3 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_lg.jpg" alt="" /></a> </div>
                    
                    <!-- Client 4 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_samsung.jpg" alt="" /></a> </div>
                    
                    <!-- Client 5 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_vo.jpg" alt="" /></a> </div>
  
                    <!-- Client 5 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_hello.jpg" alt="" /></a> </div>

                    <!-- Client 5 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_apple.png" alt="" /></a> </div>

                    <!-- Client 5 -->
                    <div class="client-item item"> <a href="#"><img src="/resources/images/main/our_umob.jpg" alt="" /></a> </div>
                    

                    
                  
                    

                </div>
            </div>
        </div>
        <!-- .container --> 
        <!-- End Clients/Partner Section --> 
        
    </div>
    <!-- End Content --> 
  
</body>
</html>