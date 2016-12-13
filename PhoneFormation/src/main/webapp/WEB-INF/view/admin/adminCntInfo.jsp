<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>통계</title>
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
					<h4 class="classic-title">
						<span>방문자</span>
					</h4>
					<Br>
					<Br>

				 <!-- Start Milestone Block -->
   		                   <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${totalVisit }</div>
                                <div class="milestone-text">총 방문자</div>
                            </div>
                        </div>

                          <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${todayVisit }</div>
                                <div class="milestone-text">오늘 방문자</div>
                            </div>
                        </div>
				</div>
		</div>
		
		
		
		
		
		
		
		<div class="row sidebar-page">

				<!-- Page Content -->
				<div class="col-md-12 page-content">

					<!-- Classic Heading -->
					<h4 class="classic-title">
						<span>중고폰</span>
					</h4>
					<Br>
					<Br>

                        
                        <!-- Start Milestone Block -->
   		                   <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${cntSecondHand}</div>
                                <div class="milestone-text">총 거래</div>
                            </div>
                        </div>

                          <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${profitSecondHand}원</div>
                                <div class="milestone-text">총 수익</div>
                            </div>
                        </div>

                         <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${TodaycntSecondHand}</div>
                                <div class="milestone-text">오늘 거래</div>
                            </div>
                        </div>
                        
                         <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${TodayprofitSecondHand}</div>
                                <div class="milestone-text">오늘 수익</div>
                            </div>
                        </div>
				</div>
				
				
				
				
				
				
				<div class="col-md-12 page-content">

					<!-- Classic Heading -->
					<h4 class="classic-title">
						<span>수리폰</span>
					</h4>
					<Br>
					<Br>

                        
                        <!-- Start Milestone Block -->
   		                   <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${cntRepair}</div>
                                <div class="milestone-text">총 거래</div>
                            </div>
                        </div>

                          <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${profitRepair}원</div>
                                <div class="milestone-text">총 수익</div>
                            </div>
                        </div>

                         <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${TodaycntRepair}</div>
                                <div class="milestone-text">오늘 거래</div>
                            </div>
                        </div>
                        
                         <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${TodayprofitRepair}</div>
                                <div class="milestone-text">오늘 수익</div>
                            </div>
                        </div>


   		                 
				</div>
				
				
				
				
				
				
		</div>
		
				<br>
				<br>
				
		</div>
	</div>

</body>
</html>