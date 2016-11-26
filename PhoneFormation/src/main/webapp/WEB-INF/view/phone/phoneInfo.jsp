<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.nav-tabs {
	border-color: #eee;
}

.nav-tabs>li>a {
	font-weight: 600;
	width: 200px;
	text-align: center;
	color: #666;
	padding: 14px;
	border-radius: 3px 3px 0 0;
	-webkit-border-radius: 3px 3px 0 0;
	-moz-border-radius: 3px 3px 0 0;
	-o-border-radius: 3px 3px 0 0;
	border: 1px solid #eee;
	border-bottom: none;
	transition: all 0.2s ease-in-out;
	-moz-transition: all 0.2s ease-in-out;
	-webkit-transition: all 0.2s ease-in-out;
	-o-transition: all 0.2s ease-in-out;
}

.nav-tabs>li>a i {
	margin-right: 1px;
	padding-right: 5px;
}

.nav-tabs>li>a:hover, .nav-tabs>li>a:focus {
	color: #333;
	background-color: #fff;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus
	{
	border-color: #eee;
	border-bottom-color: #fff;
}
.tab-image{
	height: 500px;
	width: 400px;
}

.tab-image img{
	height: 400px;
	width: 200px;
}

.tab-content {
	border: 1px solid #eee;
	border-top: none;
	padding: 12px 16px;
}

.tab-content p {
	margin-bottom: 15px;
}

.tab-content p:last-child {
	margin-bottom: 0;
}
</style>
</head>
<body>
	<div id="content">
		<div class="container">
			<div class="row sidebar-page">
				<div class="tabs-section">
					<!-- Nav Tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab-4" data-toggle="tab">삼성</a></li>
						<li><a href="#tab-5" data-toggle="tab">LG</a></li>
						<li><a href="#tab-6" data-toggle="tab">애플</a></li>
					</ul>

					<!-- Tab Panels -->
					<div class="tab-content">
						<!-- Tab Content 1 -->
						<div class="tab-pane fade in active" id="tab-4">
							<table align="center">
								<c:forEach items="${list }" var="list" varStatus="status">
									<c:if test="${status.index%3==0}">
										<tr>
									</c:if>
									<td>
									<div class="tab-image">
										<center>
											<img src="${list.image }">
											<p>${list.name }</p>
										</center>
									</div>
									</td>
									<c:if test="${status.index%3==2}">
										</tr>
									</c:if>

								</c:forEach>
							</table>
						</div>
						<!-- Tab Content 2 -->
						<div class="tab-pane fade" id="tab-5">
							<p>Sed ut perspiciatis unde omnis iste natus error sit
								voluptatem accusantium doloremque laudantium, totam rem aperiam,
								eaque ipsa quae ab illo inventore veritatis et quasi architecto
								beatae vitae dicta sunt explica. Nemo enim ipsam voluptatem quia
								voluptas sit aspernatur aut odit aut fugit, sed quia
								consequuntur magni dolores eos qui ratione voluptatem sequi
								nesciunt. But I must explain to you how all this mistaken idea
								of denouncing pleasure and praising pain was born and I will
								give you a complete account of the system, and expound the
								actual teachings of the great explorer of the truth, the
								master-builder of human happiness. No one rejects, dislikes, or
								avoids pleasure itself, because it is pleasure, but because
								those who do not know how to pursue pleasure rational encounter
								consequences that are extremely painful.</p>
						</div>
						<!-- Tab Content 3 -->
						<div class="tab-pane fade" id="tab-6">
							<p>
								<strong>Lorem ipsum</strong> dolor sit amet, consectetur
								adipisicing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip ex ea commodo
								consequat. Duis aute irure dolor in reprehenderit in voluptate
								velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
								sint occaecat cupidatat non proident, sunt in culpa qui officia
								deserunt mollit anim id est laborum.
							</p>
						</div>
					</div>
					<!-- End Tab Panels -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>