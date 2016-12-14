<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인슬라이드 변경</title>
</head>
<body>

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

									<form action="/phonefo/mainSlideUpdate" name="frm1"  enctype="multipart/form-data" method="post" >

										<!--// 회원가입폼 -->

												<h3>1.첫번째 슬라이드<input type="file" name="file1"></h3>
													<br>
														<button type="submit"  class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												<hr>

							
										
										
										
										
									

										<!--// 회원가입폼 -->

												<h3>2.두번째 슬라이드<input type="file" name="file2"></h3>
													<br>
														<button type="submit" class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												<hr>
													
										
										
										
										
										
									

										<!--// 회원가입폼 -->

												<h3>3.세번째 슬라이드<input type="file" name="file3"></h3>
												
													<br>
														<button type="submit"  class="btn btn-primary" style="width: 520px;height: 50px;"  >
															슬라이드 등록			
												</button>
												
												<hr>
										
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
													</form>
												
												</div>
											</div>
										</div>
										<!-- 회원가입폼 끝 //-->
								
								</div>
								<!-- 회원가입 끝 //-->

							</div>
						</div>
					</div>
				</div>
				<!-- End Clients Carousel -->

</body>
</html>