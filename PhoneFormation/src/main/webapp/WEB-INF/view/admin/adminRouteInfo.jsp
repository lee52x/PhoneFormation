<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가입경로 통계</title>



</head>
<body>


        <div id="content">
            <div class="container">
            					<div>
<%@include file="adminHeader.jsp"%>
	</div>		
                <div class="row sidebar-page">

                    <!-- Page Content -->
                    <div class="col-md-12 page-content">

                        <!-- Classic Heading -->
                        <h4 class="classic-title"><span>가입경로 통계 </span></h4>


                        <!-- Start Progress Bar -->
                        <div class="progress-label">주요포털사이트 검색 </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="${object.one }%">
                                <span class="sr-only">${object.one } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">앱스토어 검색</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" data-progress-animation="${object.two }%" data-appear-animation-delay="100">
                                <span class="sr-only">${object.two } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">라디오 광고</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-info" data-progress-animation="${object.three }%" data-appear-animation-delay="200">
                                <span class="sr-only">${object.three } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">TV 광고</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" data-progress-animation="${object.four }%" data-appear-animation-delay="300">
                                <span class="sr-only">${object.four } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">뉴스(신문, 인터넷 등)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="${object.five }%" data-appear-animation-delay="400">
                                <span class="sr-only">${object.five } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">모바일(온라인)광고 배너</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" data-progress-animation="${object.six }%" data-appear-animation-delay="500">
                                <span class="sr-only">${object.six } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">친구 및 지인 소개</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-info" data-progress-animation="${object.seven }%" data-appear-animation-delay="600">
                                <span class="sr-only">${object.seven } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">인터넷 커뮤니티 및 게시판</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning" data-progress-animation="${object.eight }%" data-appear-animation-delay="700">
                                <span class="sr-only">${object.eight } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">극장 광고</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" data-progress-animation="${object.nine }%" data-appear-animation-delay="800">
                                <span class="sr-only">${object.nine } %</span>
                            </div>
                        </div>

                        <!-- Start Progress Bar -->
                        <div class="progress-label">기타(버스, 지하철, 판촉물 등)</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" data-progress-animation="${object.ten }%" data-appear-animation-delay="900">
                                <span class="sr-only">${object.ten } %</span>
                            </div>
                        </div>
 				 </div>
 		 </div>
 	</div>
 </div>
 		
</body>
</html>