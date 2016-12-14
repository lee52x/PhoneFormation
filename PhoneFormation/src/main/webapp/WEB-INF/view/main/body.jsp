<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                            <img src="${slide1 }" data-fullwidthcentering="on" alt="background"> 
                            
                           
                        </li>
                        
                        <!-- THE SECOND SLIDE --> 
                        <li data-transition="papercut" data-slotamount="5" data-masterspeed="500" data-delay="9400"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="${slide2}" data-fullwidthcentering="on" alt="background"> 
                            
                           
                        </li>
                        
                        <!-- THE THIRD SLIDE --> 
                        <li data-transition="turnoff" data-slotamount="5" data-masterspeed="300"> 
                            
                            <!-- THE MAIN BACKGROUND IMAGE IN THIS FIRST SLIDE --> 
                            <img src="${slide3}" alt="background" data-fullwidthcentering="on" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                            
                            </li>
                        
                        <!-- THE FOURTH SLIDE --> 
                        <li data-transition="papercut" data-slotamount="7" data-masterspeed="300"> 
                            <!-- MAIN IMAGE --> 
                            <img src="images/slider_4_bg.jpg" data-fullwidthcentering="on" alt="background"> 
                            
                           
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
                <div> 
                                <div style="width: 21%; float: left;">
            <div style=" margin-left: 2%; margin-right:2%; margin-top:2%;margin-bottom:1.5%; text-align: center; vertical-align: middle;height: 100%;width: 100%">
            	<a href="/phonefo/listRepair"><img alt="핸드폰 수리비" src="/resources/images/main/soori.png" height="100%;"></a>
            </div>
  			<div style=" margin-left: 2%; margin-right:2%;margin-top: 1.5%; text-align: center; vertical-align: middle;height: 100%;width: 100%">
            	<a href="/phonefo/listBoard"><img alt="중고폰 판매가" src="/resources/images/main/joonggo.png" height="100%;"></a>
            </div>
            </div>
            <div style="width: 53.5%; float: left; margin-left: 1.5%;margin-top: 0.5%; background-color: #eeeeee; text-align: center;">
            	<div id="skt_pay" style="width: 5%; float: left; height: 100%;">S<br>K<br>T<br>요<br>금<br>제</div>
            	<div id="skt_pay_img" style="width: 85%; float: left;"><a href="/phonefo/payment/skt"><img alt="" src="/resources/images/main/skt_pay.png" width="100%"></a></div>
            	<div id="kt_pay" style="width: 5%; float: left;">K<br>T<br>요<br>금<br>제</div>
            	<div id="kt_pay_img" style="width: 85%; float: left; display: none;"><a href="/phonefo/payment/kt"><img alt="" src="/resources/images/main/kt_pay.png" width="100%"></a></div>
            	<div id="lg_pay" style="width: 5%; float: left;">L<br>G<br>요<br>금<br>제</div>
            	<div id="lg_pay_img" style="width: 85%; float: left; display: none;"><a href="/phonefo/payment/lg"><img alt="" src="/resources/images/main/lg_pay.png" width="100%"></a></div>
            </div>
            <div style=" width: 22%;;float: right; vertical-align: middle; text-decoration: none ;margin:0.5%;text-align: center;vertical-align: middle; font-size: 25px;">
        			<div id="skt_tag" style="height: ; background-color: #dddddd; margin: auto;"><img alt="SKT Event" src="/resources/images/main/skt_event.png" height="100%" width="100%"></div>
        			<div style="height: 10px;"></div>
        			<div style="display:;height: ;" id="skt_event"><a href="/phonefo/boardlist?tno=3"><img alt="SKT Evnet" src="/resources/images/payment/SKT.png" width="60%;" height="85%;"></a></div>
        			<div id="kt_tag" style="height: ; background-color: #dddddd;"><img alt="" src="/resources/images/main/ktOlleh_event.png" height="100%" width="100%"></div>
        			<div style="height: 10px;"></div>
        			<div style="display: none;height: ;" id="kt_event"><a href="/phonefo/boardlist?tno=1"><img alt="KT Event" src="/resources/images/payment/KTOlleh.png" width="90%;"></a></div>
        			<div id="lg_tag" style="height: ; background-color: #dddddd;"><img alt="" src="/resources/images/main/lgU+_event.png" height="100%" width="100%"></div>      			 
        			<div style="height: 10px;"></div>
        			<div style=" display: none;height: ;" id="lg_event"><a href="/phonefo/boardlist?tno=2"><img alt="LG Event" src="/resources/images/payment/LGU+.png" width="90%;"></a></div>
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
                    <c:forEach items="${phone }" var="phone" varStatus="status" >
                        <div class="portfolio-item item">
                            <div class="portfolio-border">
                                <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="/phonefo/phoneInfo_spec?no=${phone.no}">
                                        <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" width="150" height="370"  src="${phone.image}" /> 
                                   </a> 
                                </div>
                                <div class="portfolio-details"> 
                                   <a href="#">
                                        <h4>${phone.manufacture}</h4>
                                        <span>${phone.name}</span>
                                   </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
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
                    <h4 class="classic-title"><span>최신 글</span></h4>
                    <div class="latest-news custom-carousel touch-carousel" data-appeared-items="2"> 
                        <c:forEach items="${board }" var="boardVO" varStatus="status" >
                        <!-- Start Project Item -->
                        <div class="portfolio-item item">
                            <div class="portfolio-border"> 
                                <!-- Start Project Thumb -->
                                <!--  <div class="portfolio-thumb"> 
                                   <a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_8@2x.jpg">
                                       <div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>
                                        <img alt="" src="images/portfolio/8.jpg" /> 
                                   </a>
                                </div>-->
                                <!-- End Project Thumb --> 
                                <!-- Start Project Details -->
                                <div class="portfolio-details">
                                    <div class="latest-news"> 
                                        <!-- Post 1 -->
                                        <div class="post-row">
                                            <div class="post-time-section">
                                            
                                                <div class="post-date"><span class="day"><fmt:formatDate value="${boardVO.regdate}" pattern="dd"/></span></div>
                                                <div class="post-month"> <span class="month"><fmt:formatDate value="${boardVO.regdate}" pattern="MM"/>월</span> </div>
                                            </div>
                                            <h4 class="post-title">
                                              <a href="boardpage?bno=${boardVO.bno}&tno=${boardVO.tno}">${boardVO.title}</a> 
                                            </h4>
                                            <div class="post-content">
                                                <p>${boardVO.content}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Project Details --> 
                            </div>
                        </div>
                        <!-- End Project Item --> 
                        </c:forEach>
                    </div>
                </div>
                <!-- .col-md-6 -->
                
                <div class="col-md-5"> 
                    
                    <!-- Classic Heading -->
                    <h4 class="classic-title"><span>통계</span></h4>
                    <div class="progress-bars">
                        <div class="progress-label">총 방문자(${totalVisit}명)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="${totalVisit}"> <span class="progress-bar-tooltip">100</span> </div>
                        </div>
                        <div class="progress-label">등록된 업체수(${businessCount}개)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="${businessCount }" data-animation-delay="300"> <span class="progress-bar-tooltip">${businessCount }</span> </div>
                        </div>
                        <div class="progress-label">거래완료(${totalDeal}건)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="${totalDeal }" data-animation-delay="300"> <span class="progress-bar-tooltip">${totalDeal }</span> </div>
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
                    
                    
                    <c:forEach items="${logo }" var="l">
                    <!-- Client 1 -->
                    <div class="client-item item"> <a href="#"><img src="${l.path}" alt="" /></a> </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- .container --> 
        <!-- End Clients/Partner Section --> 
        
    </div>
    <!-- End Content --> 
  
</body>
</html>