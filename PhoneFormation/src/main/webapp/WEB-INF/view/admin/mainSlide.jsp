<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	var f=document.frm1;
	$('#bt1').click(function(){
		alert('누름?');
		f.submit();
	});
});
</script>
<div class="container">
		<div id="content">
			<div>
				<%@include file="adminHeader.jsp"%>
			</div>
			<!-- Classic Heading -->
			<h4 class="classic-title">
				<span>메인슬라이드 변경</span>
			</h4>

			<!-- Start content -->
			<div id="content">
				<div class="container" style="width: 900px;">
					<!-- Start Services Icons -->
					<div class="row">


						<!-- Start content -->
						<div id="content">
							<div class="container">


								<!-- Start Services Icons -->
								<div class="row">

									<form action="/phonefo/mainSlideUpdate?state=1" name="frm1"  enctype="multipart/form-data" method="post" >

										<!--// 회원가입폼 -->

												<h3>1.첫번째 슬라이드<input type="file" name="file"></h3>
													<br>
														<button type="button" id="bt1" class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												<hr>
												<input type="hidden" value="1" name="state">
										</form>
										
										
										
										
									<form action="/phonefo/mainSlideUpdate" name="frm2"  enctype="multipart/form-data" method="post" >

										<!--// 회원가입폼 -->

												<h3>2.두번째 슬라이드<input type="file" name="file"></h3>
													<br>
														<button type="submit" class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												<hr>
													<input type="hidden" value="2" name="state">
										</form>
										
										
										
										
									<form action="/phonefo/mainSlideUpdate" name="frm3"  enctype="multipart/form-data" method="post" >

										<!--// 회원가입폼 -->

												<h3>3.세번째 슬라이드<input type="file" name="file"></h3>
												<
													<br>
														<button type="submit" class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
													<input type="hidden" value="3" name="state">
												<hr>
										</form>
											<!-- 	<h3>2.두번째 슬라이드<input type="file"></h3>
													<br>
														<button type="button"  onclick="check()" class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												<hr>
												<h3>3.세번째 슬라이드<input type="file"></h3>
													<br>
														<button type="button"  onclick="check()" class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												<hr> -->
													
												
												</div>
											</div>
										</div>
										<!-- 회원가입폼 끝 //-->
									</form>
								</div>
								<!-- 회원가입 끝 //-->






							</div>
						</div>
						<!-- End Clients Carousel -->







					</div>
				</div>
				<!-- End Clients Carousel -->

			</div>
		</div>
	</div>
</body>
</html>