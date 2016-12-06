<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
						<span>통계${object.quote_price }</span>
					</h4>
					<Br>
					<Br>

				 <!-- Start Milestone Block -->
   		                   <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${object.quoteDeal }</div>
                                <div class="milestone-text">중고거래수</div>
                            </div>
                        </div>
		

	


   		
        <!-- Start Milestone Block -->
                
                        
                          <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${object.quote_price }</div>
                                <div class="milestone-text">중고수익</div>
                            </div>
                        </div>

		 <!-- Start Milestone Block -->
    
             
                        
                         <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-user"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${object.repairDeal }</div>
                                <div class="milestone-text">수리거래수</div>
                            </div>
                        </div>
                        
                         <div class="milestone-block col-md-2">
                            <div class="milestone-icon"><i class="fa fa-wordpress"></i></div>
                            <div class="milestone-right">
                                <div class="milestone-number">${object.repair_price }</div>
                                <div class="milestone-text">수리수익</div>
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