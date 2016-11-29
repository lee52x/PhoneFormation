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
<script type="text/javascript">
	//var manufacture = $('.samsung').attr().val;
	//alert(manufacture)
	$(document).ready(function() {
		if($('.samsung').click(function(){
			alert('삼성선택');
			 $.ajax({
			      type: "post",
			      url: "queryJSON.jsp",
			      datatype:"json",
			      data: { cat: calledCat, point:pPoint[i]},
			      success:function( data ) {
			       console.log('check');
			  		console.log(data.NUM);
			        }
			 });
		}));
		if($('.lg').click(function(){
			alert('lg선택');
		}));
		if($('.apple').click(function(){
			alert('apple선택');
		}));
	});
</script>
</head>
<body>
	<div id="content">
		<div class="container">
			<div class="row sidebar-page">
				<div class="tabs-section">
					<!-- Nav Tabs -->
					<ul class="nav nav-tabs" id="manufacture-tab">
						<li class="active"><a href="#tab-4" data-toggle="tab" class="samsung">삼성전자</a></li>
						<li class=""><a href="#tab-4" data-toggle="tab" class="lg">LG전자</a></li>
						<li class=""><a href="#tab-4" data-toggle="tab" class="apple">애플</a></li>
					</ul>

					<!-- Tab Panels -->
					<div class="tab-content">
						<!-- Tab Content 1 -->
						<div class="tab-pane fade in active" class="tab-4">
							<table align="center">
								<c:forEach items="${list }" var="list" varStatus="status">
									<c:if test="${status.index%3==0}">
										<tr>
									</c:if>
									<td>
									<div class="tab-image">
									<a href="/phonefo/phoneInfo_spec?no=${list.no}">
										<center>
											<img src="${list.image }">
											<p>${list.name }</p>
										</center>
									</a>
									</div>
									</td>
									<c:if test="${status.index%3==2}">
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>