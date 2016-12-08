<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>

<!-- Main content -->

<div class="container">
	<div id="content">
					<div>
<%@include file="adminHeader.jsp"%>
	</div>		
	 <!-- Classic Heading -->
                        <h4 class="classic-title"><span>수리견적추가</span></h4>
               
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

							<form action="/phonefo/insertMember" id="frm" method="post" name="frm">
								<input id="dev_Ident_e" name="UserIdentE" type="hidden" value="" /><input
									id="dev_certGubun" name="CertPathType" type="hidden"
									value="GGREG" /><input id="dev_db_name" name="DbName"
									type="hidden" value="GG" /><input id="dev_u_ident"
									name="UserIdent" type="hidden" value="" /><input
									id="dev_cert_idx" name="CertIndex" type="hidden" value="" /><input
									id="MemberType" name="MemberType" type="hidden" value="M" />

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
														<td colspan="2" class="tLine"><div></div></td>
													</tr>
													<tr>
														<th><h3>아이디</h3></th>
														<td><h3>
																<input type="text" name="userid" id="userid"
																	class="tBox tPwd" maxlength="16"
																	placeholder="6~16자 영문, 숫자" title="아이디" />
															</h3>

															<p class="compul"></p> <!-- <input id="checkId" name="dev_idchkStat" type="hidden" value="sdsdsd" /></td> -->
															<div id="checkId" style="font: red"></div>
													</tr>
													<tr>

														<th><h3>비밀번호</h3> <a href="javascript:;"><span
																class="iconPwdQues"></span></a></th>
														<td><h3>
																<input type="password" name="userpwd" class="tBox tPwd"
																	id="userpwd" maxlength="16"
																	placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호" />
															</h3>
															<div id="checkPwd"></div>

															<p class="compul" id="PwdSafeResult"></p> <input
															id="dev_pwdchkStat" name="dev_pwdchkStat" type="hidden"
															value="" /></td>
													</tr>
													<tr>
														<th><h3>비밀번호 확인</h3></th>
														<td><h3>
																<input type="password" name="userpwd2" id="userpwd2"
																	class="tBox tPwd" maxlength="16" title="비밀번호확인" />
															</h3>
															<div id="checkPwd2"></div>
													</tr>

													<tr>
														<td colspan="2" class="tLine"><hr>
															<div></div></td>
													</tr>

													<tr>
														<th><h3>이름</h3></th>
														<td><h3>
																<input type="text" name="username" class="tBox"
																	title="이름" id="username" maxlength="12" />
															</h3>
																<div id="usernameCheck"></div>
													</tr>
													<tr>
														<th><h3>생년월일</h3></th>
														<td><h3>
																<select class="tBox joinBx tBirth_yy" data-val="true"
																	data-val-number="SelectedBirthYearValue 필드는 숫자여야 합니다."
																	data-val-required="SelectedBirthYearValue 필드가 필요합니다."
																	id="birth1" name="birth1" title="생년월일 연도"><option
																		value="">년</option>
																	<option value="2016">2016년</option>
																	<option value="2015">2015년</option>
																	<option value="2014">2014년</option>
																	<option value="2013">2013년</option>
																	<option value="2012">2012년</option>
																	<option value="2011">2011년</option>
																	<option value="2010">2010년</option>
																	<option value="2009">2009년</option>
																	<option value="2008">2008년</option>
																	<option value="2007">2007년</option>
																	<option value="2006">2006년</option>
																	<option value="2005">2005년</option>
																	<option value="2004">2004년</option>
																	<option value="2003">2003년</option>
																	<option value="2002">2002년</option>
																	<option value="2001">2001년</option>
																	<option value="2000">2000년</option>
																	<option value="1999">1999년</option>
																	<option value="1998">1998년</option>
																	<option value="1997">1997년</option>
																	<option value="1996">1996년</option>
																	<option value="1995">1995년</option>
																	<option value="1994">1994년</option>
																	<option value="1993">1993년</option>
																	<option value="1992">1992년</option>
																	<option value="1991">1991년</option>
																	<option value="1990">1990년</option>
																	<option value="1989">1989년</option>
																	<option value="1988">1988년</option>
																	<option value="1987">1987년</option>
																	<option value="1986">1986년</option>
																	<option value="1985">1985년</option>
																	<option value="1984">1984년</option>
																	<option value="1983">1983년</option>
																	<option value="1982">1982년</option>
																	<option value="1981">1981년</option>
																	<option value="1980">1980년</option>
																	<option value="1979">1979년</option>
																	<option value="1978">1978년</option>
																	<option value="1977">1977년</option>
																	<option value="1976">1976년</option>
																	<option value="1975">1975년</option>
																	<option value="1974">1974년</option>
																	<option value="1973">1973년</option>
																	<option value="1972">1972년</option>
																	<option value="1971">1971년</option>
																	<option value="1970">1970년</option>
																	<option value="1969">1969년</option>
																	<option value="1968">1968년</option>
																	<option value="1967">1967년</option>
																	<option value="1966">1966년</option>
																	<option value="1965">1965년</option>
																	<option value="1964">1964년</option>
																	<option value="1963">1963년</option>
																	<option value="1962">1962년</option>
																	<option value="1961">1961년</option>
																	<option value="1960">1960년</option>
																	<option value="1959">1959년</option>
																	<option value="1958">1958년</option>
																	<option value="1957">1957년</option>
																	<option value="1956">1956년</option>
																	<option value="1955">1955년</option>
																	<option value="1954">1954년</option>
																	<option value="1953">1953년</option>
																	<option value="1952">1952년</option>
																	<option value="1951">1951년</option>
																	<option value="1950">1950년</option>
																	<option value="1949">1949년</option>
																	<option value="1948">1948년</option>
																	<option value="1947">1947년</option>
																	<option value="1946">1946년</option>
																	<option value="1945">1945년</option>
																	<option value="1944">1944년</option>
																	<option value="1943">1943년</option>
																	<option value="1942">1942년</option>
																	<option value="1941">1941년</option>
																	<option value="1940">1940년</option>
																	<option value="1939">1939년</option>
																	<option value="1938">1938년</option>
																	<option value="1937">1937년</option>
																	<option value="1936">1936년</option>
																	<option value="1935">1935년</option>
																	<option value="1934">1934년</option>
																	<option value="1933">1933년</option>
																	<option value="1932">1932년</option>
																</select> <select name="birth2" class="tBox joinBx tBirth_mm"
																	id="birth2" title="생년월일 월">
																	<option value="">월</option>
																	<option value="01">01월</option>
																	<option value="02">02월</option>
																	<option value="03">03월</option>
																	<option value="04">04월</option>
																	<option value="05">05월</option>
																	<option value="06">06월</option>
																	<option value="07">07월</option>
																	<option value="08">08월</option>
																	<option value="09">09월</option>
																	<option value="10">10월</option>
																	<option value="11">11월</option>
																	<option value="12">12월</option>
																</select> <select name="birth3" class="tBox joinBx tBirth_mm"
																	id="birth3" title="생년월일 일">
																	<option value="">일</option>
																</select>
																<p class="compul" id="txtBirth"></p>
																<input id="dev_birthChkStat" name="dev_birthChkStat"
																	type="hidden" value="" /></td>
													</tr>
													<tr>
														<th><h3>성별</h3></th>
														<td><input type="radio" name="gender" title="남자"
															id="male" value="남자" checked="checked"><label for="male">남자</label>
															<input type="radio" name="Gender" title="여자" id="female"
															value="여자"><label for="female">여자</label>
															<p class="compul" id="txtGender"></p></td>
													</tr>
													<tr>
														<th><h3>이메일</h3></th>
														<td><h3>
																<input type="text" name="email1" class="tBox tEmail"
																	id="email1" maxlength="25" title="이메일아이디"
																	style="width: 200px;"> <span>@</span> <input
																	type="text" name="email2" class="tBox tEmail"
																	id="email2" maxlength="25" title="이메일계정"
																	style="width: 200px;" onfocus="$mship.reg.emailChk1()">
																<select name="selectEmail" class="tBox joinBx tEmail"
																	id="selectEmail" title="이메일 서비스업체 선택">
																	<option value="">Select</option>
																	<option value="naver.com">naver.com</option>
																	<option value="hanmail.net">hanmail.net</option>
																	<option value="nate.com">nate.com</option>
																	<option value="daum.net">daum.net</option>
																	<option value="hotmail.com">hotmail.com</option>
																	<option value="dreamwiz.com">dreamwiz.com</option>
																	<option value="gmail.com">gmail.com</option>
																	<option value="">직접입력</option>
																</select>
															</h3>
																<div id="emailCheck1"></div>
													</tr>
													<tr>
														<td colspan="2" class="tLine"><hr>
															<div></div></td>
													</tr>

													<tr>
														<th><h3>휴대폰 번호</h3></th>
														<td><h3>
																<select name="tel1" class="tBox joinBx tPhone" id="tel1"
																	title="휴대폰 번호">
																	<option value="010">010</option>
																	<option value="011">011</option>
																	<option value="016">016</option>
																	<option value="017">017</option>
																	<option value="018">018</option>
																	<option value="019">019</option>
																</select> - <input type="text" name="tel2" id="tel2"
																	maxlength="4" title="휴대폰 번호" style="width: 100px;">
																- <input type="text" name="tel3" id="tel3" maxlength="4"
																	class="tBox tPhone" title="휴대폰 번호"
																	style="width: 100px;"></h3>
																
																	<div id="telCheck"></div>
													</tr>
													
													
													<tr>
														<td colspan="2" class="tLine"><div></div>
															<hr></td>
													</tr>
													<tr>
														<td colspan="2" class="howAlbamon"><h3>
																<span class="select" style="color: #78838e">[선택]</span>
																PhoneFormation을 어떻게 알게 되셨나요? <select
																	class="tBox joinBx tHow" id="root" name="root"
																	style="width: 350px;" title="알바몬을 어떻게 알게 되셨나요"><option
																		value="">선택하세요</option>
																	<option value="1">주요 포털사이트 검색</option>
																	<option value="2">앱스토어 검색</option>
																	<option value="3">라디오광고</option>
																	<option value="4">TV광고</option>
																	<option value="5">뉴스(신문, 인터넷 등)</option>
																	<option value="6">모바일(온라인) 광고 배너</option>
																	<option value="7">친구 및 지인 소개</option>
																	<option value="8">인터넷 커뮤니티 및 게시판</option>
																	<option value="9">극장광고</option>
																	<option value="10">기타(버스, 지하철, 판촉물 등)</option>
																</select>
															</h3></td>
													</tr>
													<tr>
														<td colspan="2" class="tLine"><div></div></td>
													</tr>
												</tbody>
											</table>
											<div class="tooltip" style="display: none;">
												<p>안전한 비밀번호 사용법</p>
												<ul>
													<li>1. 6~16자의 영문 대소문자, 숫자, 특수기호 사용</li>
													<li>2. 3자 이상 연속 영문/숫자 조합 사용불가</li>
													<li>3. 아이디와 동일한 비밀번호를 사용하지 마세요.</li>
													<li>4. 키보드의 연속 패턴은 사용하지 마세요.</li>
													<li>5. 개인정보를 포함하는 비밀번호를 사용하지 마세요.</li>
													<li>6. 비밀번호는 주기적으로 변경하세요.</li>
												</ul>
												<div class="btnClose">
													<a href="#"></a>
												</div>
											</div>
										</div>
									</div>
									<div class="info_confirm" id="boxJoinConfirm"
										style="display: none;">입력한 정보를 다시 확인해주세요.</div>
									<br>
									<br>
									<br>
									<br>
									<br>
									<div style="margin-left: 20%;">
									<button type="button" onclick="check()"><img alt="" src="/resources/images/join/join5.JPG"></button> 
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
</div></div>
</body>
</html>