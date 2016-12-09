<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	$('#sendEmail').click(function(){
		alert($('#email2').val());
	var email1=$('#email1').val()
	var email2=$('#email2').val()
	var result = confirm(email1+'@'+email2+'메일로 전송하시겠습니까?');
	if(result==true){
		
	}
	});
});

</script>


<body>
<div class="emailBox">
						<form id="frm_info2" method="post" onsubmit="chk_form2(this); return false;" action="/customer/search_id_ok.asp">
							<input type="hidden" name="DB_Name" value="GI" />
							<input type="hidden" name="u_mail" value="" />
							<input type="hidden" name="u_name" value ="" />
							<input type="hidden" name="info_type" value="MAIL" />
							<fieldset>
								<legend>가입자명, e-메일로 입력</legend>
								<h2>e-메일로 찾기</h2>
								<p class="subTxt">회원정보에 등록된 e-메일로 아이디를<br/> 찾을 수 있습니다.</p>

								<!-- e-메일로 찾기 -->
								<dl class="odd">
									<dt><label for="lb_eName">가입자명</label></dt>
									<dd>
										<input id="lb_eName" name="mail_name" type="text" maxlength="40" class="tBox" style="width:195px;" />
									</dd>
									<dt><label for="lb_email">e-메일</label></dt>
									<dd>
										<p><input id="email1" name="email1" class="tBox" type="text" title="이메일 아이디" maxlength="25" style="width:85px; ime-mode:disabled;"/>&nbsp;@&nbsp;</p>
										<p><span id="Dev_MEmailstrsp" style="display:none;"><input type="text" style="width:82px;" name="info_mail_etc" id="dev_mail_etc" class="tBox" /></span></p>
										<p><select id="email2" title="이메일 서비스업체 선택" style="width:92px;" name="eamil2" onchange="email_set(this.value);">
												<option value="">선택하세요</option>
												<option value="naver.com" >naver.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="nate.com">nate.com</option>
												<option value="daum.net">daum.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">직접입력</option>
											</select>
										</p>
									</dd>
								</dl>
								<button id="sendEmail" type="button">확인</button>
							</fieldset>
						</form>
					</div>
				</div>


</body>


</html>