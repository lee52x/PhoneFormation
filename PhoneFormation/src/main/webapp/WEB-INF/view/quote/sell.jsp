<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tit_1{margin-top:30px; border-bottom:1px solid #eee; height:30px;}
.tit_1 .page_name{display:block; background:url(/img/ico_nowpage.gif) no-repeat 0 2px; padding-left:20px; margin-bottom:10px; height:20px; text-align:left;}
.tit_1 .page_name span{display:inline-block; background:url(http://www.hunphone.co.kr//img/aw_nowpage.gif) no-repeat right 3px; height:20px; vertical-align:middle; padding-right:15px; margin-right:5px; font-size:16px; color:#e54c47;}
.tit_1 .page_name span a{display:block; font-size:16px; color:#e54c47;}
.write_form{width:100%;}
.write_form th, td{padding:0; height:30px; line-height:30px; background:url('http://www.hunphone.co.kr//img/dotted.gif') repeat-x bottom;}
.write_form .last{border-bottom:1px solid #e5e5e5; background:none;}
.write_form th{width:190px; text-align:left;}
.write_form th span{display:inline-block; background:url(http://www.hunphone.co.kr//img/aw_none.png) no-repeat 20px 50%; padding-left:30px; font-size:14px; color:#e54c47;}
.write_form td label{margin-left:5px; margin-right:15px;}

.write_form2{width:100%; background:none;}
.write_form2 th, td{position:relative; padding:0; height:20px; line-height:20px; background:url('http://www.hunphone.co.kr//img/dotted.gif') repeat-x bottom;}
.write_form2 .last{border-bottom:1px solid #e5e5e5; background:none;}
.write_form2 th{width:150px; text-align:left; }
.write_form2 th span{display:inline-block; background:url(http://www.hunphone.co.kr//img/aw_none.png) no-repeat 20px 50%; padding-left:30px; font-size:12px; color:#e54c47;}
.write_form2 td label{margin-left:5px; margin-right:15px; border:1px solid #000;}
.write_form2 th, td input[type=text]{height:20px;}
.write_form2 td.price{font-weight:bold;}
.write_form2 td.price input[type=text]{width:150px; position:absolute; left:155px; top:7px;}
.write_form2 td.price .won{position:absolute; left:330px; }
.deliveryopt {display:none}
#tbl_deli {border-collapse: collapse;border-spacing: 0px;border:1px solid #000}
#tbl_deli td, #tbl_deli th {line-height:16px;border-collapse: collapse;border-spacing: 0px;border:1px solid #000}
.btn_counsel {
	background: #FF7B05;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #F0582A;
	cursor: pointer;
	color: #fff;
	font-size: 23px;
	padding: 20px;
	font-weight: 700;
	width: 50%;
}

.btn_counsel:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#8B8B8B),
		to(#8B8B8B));
	background-image: -webkit-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -moz-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -ms-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -o-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: linear-gradient(to bottom, #8B8B8B, #8B8B8B);
	border: 1px solid #777777;
	color: #fff;
}
</style>
</head>

<script type="text/javascript">
$(document).ready(function(){
	$('#userpwd').keyup(function(){
		$.ajax({
			url:"/phonefo/quotePwd",
			data:{userpwd:$('#userpwd').val()},
			success:function(result){
				$('#checkPwd').html(result);
			}
		});
	});
});

function check(){
	var f=document.frm;
	f.submit();
	
	
}

</script>
<body>

<div class="page-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h2>중고폰 견적</h2>
					<p>정상해지 공기계</p>
				</div>
				<div class="col-md-6">
					<ul class="breadcrumbs">
						<li><a href="#">홈</a></li>
						<li>회원가입</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<div class="big-title text-center">
		<h1>중고폰 견적</h1>
		<p class="title-desc">아래의 내용에 따라 기입해 주시기 바랍니다.</p>
		<hr>
	</div>
     <div id="content">
<div class="container">
<form name="frm" action="/phonefo/quoteBoard" method="post">
<div class="tit_1">
	<div class="page_name">
		<span style="background:none; padding:0;" class="glyphicon glyphicon-certificate">고객정보입력</span>
	</div>
</div>
<table class="write_form" cellspacing="0" cellpadding="0">
	<tr>
		<th><span><h4>이름</h4></span></th>
		<td>
			<input type=text id="id_name" style="height: 30px;" name=username1 size=20  maxlength=15 value="${vo.username}" onkeyup="$('#user_add7').val(this.value);" onblur="$('#user_add7').val(this.value);" disabled="disabled">
		</td>
	</tr>
	<tr>
		<th class="last"><span><h4>비밀번호</h4></span></td>
		<td class="last">
							<input type=password id="userpwd" name=userpwd maxlength=20 style="height: 30px;">
								<div id="checkPwd"></div>					
			
		</td>
		
	</tr>
	<tr>
		<th><span><h4>휴대폰번호</h4></span></td>
		<td><input type=text id="user_add3" disabled="disabled" style="height: 30px;" name=tel value="${vo.tel}" onkeydown="this.value=this.value.replace(/[^0-9]/g,'')" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onblur="this.value=this.value.replace(/[^0-9]/g,'')"></td>
	</tr>
	
	
	<tr>
		<th class="last"><span><h4>기타 요청사항</h4></span></td>
		<td class="last" style="line-height:42px; padding:5px 0;">
			<textarea name='request_message' style="width:90%; height:80px;"></textarea>
		</td>
	</tr>
	<tr>
		<th><span><h4>입금받을 계좌번호</h4></span></td>
		<td style="line-height:42px; padding:5px 0;">
			<span style="margin-right:20px;">은행명</span>
								<select name=bank_name>
					<option value="">선택해주세요</option>
					<option value="농협" >농협</option>
					<option value="국민" >국민</option>
					<option value="우리" >우리</option>
					<option value="신한" >신한</option>
					<option value="하나" >하나</option>
					<option value="기업" >기업</option>
					<option value="씨티" >씨티</option>
					<option value="외환" >외환</option>
					<option value="새마을" >새마을</option>
					<option value="우체국" >우체국</option>
					<option value="신협" >신협</option>
					<option value="수협" >수협</option>
					<option value="산업" >산업</option>
					<option value="부산" >부산</option>
					<option value="제일" >제일</option>
					<option value="대구" >대구</option>
					<option value="광주" >광주</option>
					<option value="경남" >경남</option>
					<option value="전북" >전북</option>
					<option value="제주" >제주</option>
				</select>
			<span style="margin:0 17px;">예금주</span>
			<input type=text id="username" name="username" value="${vo.username }" disabled="disabled">
			<br>
			<span style="margin-right:9px;">계좌번호</span>			
			<input type=text name=account_number style="width:297px;" value="" onkeydown="this.value=this.value.replace(/[^0-9]/g,'')" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onblur="this.value=this.value.replace(/[^0-9]/g,'')"> (숫자만 입력해주세요.)
		</td>
	</tr>
</table>

<div class="tit_1">
	<div class="page_name">
		<h4><span style="background:none; padding:0;" class="glyphicon glyphicon-certificate">견적내역</span></h4>
	</div>
</div>

	<div style="margin-top:5px;width:100%;background:#eee" align="center" id="quote">
				<table>
					<tr>
						<td rowspan="4" width="100" style="text-align:center;font-size:20px;font-weight:900">가격</td>
						<td width="100" style="text-align:right">출고가격　</td>
						<td><input type="text" id="release_price" name="release_price"  value="${release_price}" disabled="disabled" style="text-align:right"/>원</td>
					</tr>
					<tr>
						<td width="100" style="text-align:right">차감가격　</td>
						<td><input type="text" id="cut_price" name="cut_price"  value="${decrease_price}" disabled="disabled" style="text-align:right"/>원</td>
					</tr>
<!-- 					<tr>
						<td width="100" style="text-align:right">차감내역　</td>
						<td id="itemsReduction"></td>
					</tr> -->
					<tr>
						<td width="100" style="text-align:right">견적가격　</td>
						<td><input type="text" id="quote_price" name="quote_price"  value="${quote_price}" disabled="disabled" style="text-align:right"/>원</td>
					</tr>
				</table>
				<font color="red">※견적금액은 예상금액이며 실제 거래 금액과 차이가 있을 수 있습니다.</font>
			</div>
			<br><br><br>
		<div align="center">
		<button type="button" class="btn_counsel" id="calculator" onclick="check()">글 등록하기</button>
		</div>

		<input type="hidden" value="${quote_price}" name="quote_price">
		<input type="hidden" value="${power}" name="power">
		<input type="hidden" value="${glass}" name="glass">
		<input type="hidden" value="${equipment}" name="equipment">
		<input type="hidden" value="${manufacture}" name="manufacture">
		<input type="hidden" value="${machine}" name="machine">
		<input type="hidden" value="${capacity}" name="capacity">
		</form>
	</div>
	</div>
</body>
</html>