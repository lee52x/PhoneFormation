<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tit_1{margin-top:30px; border-bottom:1px solid #eee; height:30px;}
.tit_1 .page_name{display:block; background:url(http://hunphone.co.kr/img/ico_nowpage.gif) no-repeat 0 2px; padding-left:20px; margin-bottom:10px; height:20px; text-align:left;}
.tit_1 .page_name span{display:inline-block; background:url(http://hunphone.co.kr/img/aw_nowpage.gif) no-repeat right 3px; height:20px; vertical-align:middle; padding-right:15px; margin-right:5px; font-size:16px; color:#e54c47;}
.tit_1 .page_name span a{display:block; font-size:16px; color:#e54c47;}
.detail_form{width:100%;}
.detail_form th, td{padding:0; height:50px; line-height:50px; background:url('http://hunphone.co.kr/img/dotted.gif') repeat-x bottom; text-align:left;}
.detail_form th{width:190px; text-align:left;}
.detail_form th span{display:inline-block; background:url(http://hunphone.co.kr/img/aw_none.png) no-repeat 20px 50%; padding-left:30px; color:#e54c47; font-size:14px;}
.detail_form td{font-size:14px;}
.detail_form .last{border-bottom:1px solid #e5e5e5; background:none;}
.detail_form .section_title{background:url(http://hunphone.co.kr/img/bg_diagonal.gif); border-top:3px solid #eee; border-bottom:1px solid #eee;}
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
</style>
</head>

<body>
<div class="tit_1">
	<div class="page_name">
		<span style="background:none; padding:0;">휴대폰 정보</span>
	</div>
</div>
<table class="detail_form" cellspacing="0" cellpadding="0">
	<tr>
		<th><span>제조사명</span></th>
		<td>
			${vo.manufacture }		</td>

		<th><span>모델</span></th>
		<td>
			${vo.machine }		</td>
	</tr>
	<tr>
		<th class="last"><span>예상견적가</span></th>
		<td class="last" colspan="3">
			${vo.quote_price }
		</td>

	</tr>
	<tr>
		<th class="last"><span>전원상태</span></th>
		<td class="last" colspan="3">
			${vo.power }
		</td>

	</tr>
	<tr>
		<th class="last"><span>액정상태</span></th>
		<td class="last" colspan="3">
			${vo.glass }
		</td>

	</tr>
	<tr>
		<th class="last"><span>기기상태</span></th>
		<td class="last" colspan="3">
			${vo.equipment }
		</td>

	</tr>
</table>

<div class="tit_1">
	<div class="page_name">
		<span style="background:none; padding:0;">고객정보</span>
	</div>
</div>
<table class="detail_form" cellspacing="0" cellpadding="0">
	<tr>
		<th><span>신청자</span></th>
		<td>
			${vo.username }		</td>
		<th><span>신청일</span></th>
		<td>
			${vo.rdate }		</td>
	</tr>
	<tr>
				<th><span>휴대폰</span></th>
		<td colspan="3">
			01023123232		</td>
			</tr>
	<tr>
		<th><span>입금받을 계좌번호</span></th>
		<td colspan="3">
			은행명 :  ${vo.bank_name }　　/　　예금주 : ${vo.username }　　/　　계좌번호 : ${vo.account_number }		</td>
	</tr>
	<tr>
		<th class="last"><span>기타 요청사항</span></th>
		<td class="last" colspan="3">
			${vo.request_message }		</td>
	</tr>
</table>
<br><br>
<center>
	<button type="button" class="btn_counsel" id="calculator" onclick="check()">매입신청</button>
</center>	

</body>
</html>