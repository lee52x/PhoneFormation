<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>


</head>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {

		$('#sendEmail').click(function() {

			$('#show_id').empty();
			var email1 = $('#email1').val();
			var email2 = $('#email2').val();
			var email = email1 + '@' + email2;
			var username = $('#username').val();

			$.ajax({
				url : '/phonefo/send_id',//URL요청
				type : 'post', //method요청방식
				data : { //클라이언트 ---> 서버
					//JSON.stringify()함수 : JSON변환 함수
					email : email,
					username : username
				},
				success : function(result) { //요청 성공시 콜백함수
					
					if (result.status === 'success') { //=== : 자료형 먼저 검사, 자료형 같을 때 내용비교, 다르면 false ex) if(1==='1') --> false
						var str = username + "회원님의 아이디 목록입니다<br>";
						$(result.id).each(function() {
							str += this + "<br>";
						});
						$('#show_id').html(str);
					} else {
						alert("정보가 잘못 입력되었습니다.");
					}

				}
			});

		});
	});
</script>


<body>
	<div class="emailBox">
		<form id="frm_info2" method="post" action="search_id_result">
			<fieldset>
				<legend>가입자명, e-메일로 입력</legend>
			<div style="margin-left: 60px;">
				<h2>e-메일로 찾기</h2>
				<p class="subTxt">
					회원정보에 등록된 e-메일로 아이디를<br /> 찾을 수 있습니다.
				</p>

				<!-- e-메일로 찾기 -->
				<dl class="odd">
					<dt style="float: left;">
						<label for="lb_eName">가입자명</label>
					</dt>
					<dd style="float: left;">
						<input id="username" name="username" type="text" maxlength="40"
							class="tBox" style="width: 195px;" />
					</dd><br>
					<dt style="float: left;">
						<p><label for="lb_email">e-메일</label></p>
					</dt>
					<dd style="float: left;">
						<p style="float: left;">
							<input id="email1" name="email1" class="tBox" type="text"
								title="이메일 아이디" maxlength="25"
								style="width: 85px; ime-mode: disabled; margin-left: 17px;" />@
						</p>
						<p style="float: left;">
							<span id="Dev_MEmailstrsp" style="display: none;"><input
								type="text" style="width: 82px;" name="info_mail_etc"
								id="dev_mail_etc" class="tBox" /></span>
						</p>
						<p style="float: left;">
							<select id="email2" title="이메일 서비스업체 선택" style="width: 92px;"
								name="eamil2">
								<option value="">선택하세요</option>
								<option value="naver.com">naver.com</option>
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
					<div id="show_id"></div>
				</dl>
				<br><br>
				<div style="margin-left: 40%;">
				<input id="sendEmail" type="button" value="확인">
				</div>
				</div>
			</fieldset>
		</form>
	</div>
	</div>


</body>


</html>