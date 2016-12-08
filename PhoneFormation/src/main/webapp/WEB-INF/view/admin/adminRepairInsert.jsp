<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>

<script type="text/javascript">

function check() {
	
	if($('#name').val() == '') {
		alert('기기명을 확인해주세요');
		$('#name').focus();
	}
	else if($('#glass').val() == '') {
		alert('액정파손 확인');
		$('#glass').focus();
	
	}else if($('#backcover').val() == '') {
		alert('뒤커버파손 확인');
		$('#backcover').focus();
	}
	else if($('#crome').val() == '') {
		alert('크롬 및 외관손상 확인');
		$('#crome').focus();
	}
	else if($('#pan').val() == '') {
		alert('펜손실 확인');
		$('#pan').focus();
	}
	else if($('#scratch').val() == '') {
		alert('액정잔기스 확인');
		$('#scratch').focus();
	}
	else if($('#powerbutton').val() == '') {
		alert('전원버튼 확인');
		$('#powerbutton').focus();
	}
	else if($('#homebutton').val() == '') {
		alert('홈버튼 확인');
		$('#homebutton').focus();
	}
	else if($('#sound').val() == '') {
		alert('진동불량 확인');
		$('#sound').focus();
	}
	else if($('#camera').val() == '') {
		alert('카메라불량 확인');
		$('#camera').focus();
	}
	else if($('#wifi').val() == '') {
		alert('WIFI불량 확인');
		$('#wifi').focus();
	}
	else if($('#charge').val() == '') {
		alert('충전불량 확인');
		$('#charge').focus();
	}
		
	else if($('#battery').val() == '') {
		alert('배터리 불량 확인');
		$('#battery').focus();
	}
		
	else if($('#sensor').val() == '') {
		alert('근접센서불량 확인');
		$('#sensor').focus();
	}
	else if($('#afterimage').val() == '') {
		alert('잔상불량 확인');
		$('#afterimage').focus();
	}
	else if($('#lcd').val() == '') {
		alert('LCD 확인');
		$('#lcd').focus();
	}
	else {
		document.frm.submit();
		alert("수리견적이 등록되었습니다");
	}
		
	
	
}




</script>

<body>

	<!-- Main content -->

	<div class="container">
		<div id="content">
			<div>
				<%@include file="adminHeader.jsp"%>
			</div>
			<!-- Classic Heading -->
			<h4 class="classic-title">
				<span>수리견적추가</span>
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

									<form action="/phonefo/adminRepairInsert" id="frm" method="post" name="frm">

										<!--// 회원가입폼 -->
										<div class="inner">

											<div class="step3">
												<div class="tbLeave tbJoin">
													<table>
														<colgroup>
															<col width="160">
															<col width="1000">
														</colgroup>
														<tbody>

															<tr>
																<th><h3>아이디</h3></th>
																<td><h3>
																		<input type="text" name="name" id="name"
																			class="tBox tPwd" maxlength="20"
																			placeholder="기기명을 입력하세요" title="이름" />
																	</h3>
															</tr>
															<tr>
																<th><h3>액정파손</h3></th>
																<td><h3>
																		<input type="text" name="glass" id="glass"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="액정파손" />
																	</h3>
															</tr>
															<tr>
																<th><h3>뒤커버파손</h3></th>
																<td><h3>
																		<input type="text" name="backcover" id="backcover"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="뒤커버파손" />
																	</h3>
															</tr>
															<tr>
																<th><h3>크롬 및 외관손상</h3></th>
																<td><h3>
																		<input type="text" name="crome" id="crome"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="크롬 및 외관손상" />
																	</h3>
															</tr>
													
															<tr>
																<th><h3>펜손실</h3></th>
																<td><h3>
																		<input type="text" name="pan" id="pan"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="펜손실" />
																	</h3>
															</tr>
															<tr>
																<th><h3>액정잔기스</h3></th>
																<td><h3>
																		<input type="text" name="scratch" id="scratch"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="액정잔기스" />
																	</h3>
															</tr>
															<tr>
																<th><h3>전원버튼</h3></th>
																<td><h3>
																		<input type="text" name="powerbutton" id="powerbutton"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="전원버튼" />
																	</h3>
															</tr>
															<tr>
																<th><h3>홈버튼</h3></th>
																<td><h3>
																		<input type="text" name="homebutton" id="homebutton"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="홈버튼" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>진동불량</h3></th>
																<td><h3>
																		<input type="text" name="sound" id="sound"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="진동불량" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>카메라불량</h3></th>
																<td><h3>
																		<input type="text" name="camera" id="camera"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="카메라불량" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>WIFI불량</h3></th>
																<td><h3>
																		<input type="text" name="wifi" id="wifi"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="WIFI" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>충전불량</h3></th>
																<td><h3>
																		<input type="text" name="charge" id="charge"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="충전불량" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>배터리 불량</h3></th>
																<td><h3>
																		<input type="text" name="battery" id="battery"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="배터리 불량" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>근접센서불량</h3></th>
																<td><h3>
																		<input type="text" name="sensor" id="sensor"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="근접센서불량" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>잔상불량</h3></th>
																<td><h3>
																		<input type="text" name="afterimage" id="afterimage"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="잔상불량" />
																	</h3>
															</tr>
		
															<tr>
																<th><h3>LCD</h3></th>
																<td><h3>
																		<input type="text" name="lcd" id="lcd"
																			class="tBox tPwd" maxlength="8"
																			placeholder="숫자" title="LCD" />
																	</h3>
															</tr>
															
															<tr>
															<th>
															<button type="button" onclick="check()">
															<img alt="" src="/resources/images/join/join5.JPG">
															</button>
															</th>
															</tr>


														
														
														</tbody>
													</table>
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