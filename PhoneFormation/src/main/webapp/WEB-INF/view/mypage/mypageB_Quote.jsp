<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기업 중고폰 구매 신청 리스트</title>
<style type="text/css">
.list_form {
	width: 100%;
	border-bottom: 1px solid #eee;
}

.list_form .section {
	background: url(http://www.hunphone.co.kr/img/bg_diagonal.gif);
}

.list_form th {
	padding: 5px;
	height: 30px;
	border-top: 2px solid #eee;
	border-bottom: 3px solid #eee;
	color: #e54c47;
	font-size: 16px;
}

.list_form td {
	text-align: left;
	font-size: 14px;
	padding: 5px;
	line-height: 30px;
	height: 30px;
}

.list_form a {
	font-size: 14px;
}

.tit_1 {
	margin-top: 30px;
	border-bottom: 1px solid #eee;
	height: 30px;
}

.tit_1 .page_name {
	display: block;
	background: url(http://www.hunphone.co.kr/img/ico_nowpage.gif) no-repeat
		0 2px;
	padding-left: 20px;
	margin-bottom: 10px;
	height: 20px;
	text-align: left;
}

.tit_1 .page_name span {
	display: inline-block;
	background: url(http://www.hunphone.co.kr/img/aw_nowpage.gif) no-repeat
		right 3px;
	height: 20px;
	vertical-align: middle;
	padding-right: 15px;
	margin-right: 5px;
	font-size: 16px;
	color: #e54c47;
}

.tit_1 .page_name span a {
	display: block;
	font-size: 16px;
	color: #e54c47;
}
</style>



<%
	if (session.getAttribute("userid") == null || session.getAttribute("userid") == "") {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/phonefo/login');" + "</script>");
	}
%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<script type="text/javascript">
function callTable(manufacture,machine,quote_price,power,glass,equipment,username,rdate,tel,bank_name,account_number,request_message){
	
	$("#manufacture").text(manufacture);
	$("#machine").text(machine);
	$("#quote_price").text(quote_price);
	$("#power").text(power);
	$("#glass").text(glass);
	$("#equipment").text(equipment);
	$("#username").text(username);
	$("#rdate").text(rdate);
	$("#tel").text(tel);
	$("#bank_name").text(bank_name);
	$("#account_number").text(account_number);
	$("#request_message").text(request_message);



	$("#popup").fadeIn(700);
	

}



	$(document).ready(function() {


		
		
		$("#popup").hide();
		
		$("#close").click(function() {
			$("#popup").fadeOut(10);
		});
	
	

	});
</script>
</head>
<body>
</head>
<body>
	<div class="container">
		<div id="content">
			<div>
				<%@include file="mypageHeader.jsp"%>
			</div>

			<div class="box-body">
				<table cellpadding=1 cellspacing=0 border=0 class="list_form">
					<colgroup>
						<col width="10%" />
						<col width="15%" />
						<col />
						<col width="15%" />
						<col width="10%" />
						<col width="10%" />
						<col width="10%" />
					</colgroup>
					<thead>
						<tr id='mainindex_HeadTR' class="section">
							<th>번호</th>
							<th>제조사</th>
							<th>기기명</th>
							<th>신청자</th>
							<th>신청일</th>
							<th>진행상태</th>
							<th>상세보기</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="mypageQuote">
							<tr align=center>
								<td>${mypageQuote.no}</td>
								<td>${mypageQuote.manufacture}</td>
								<td>${mypageQuote.machine}</td>
								<td>${mypageQuote.username}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${mypageQuote.rdate}" /></td>

								<c:choose>
									<c:when test="${mypageQuote.state eq '0'}">
										<td>미신청</td>
									</c:when>
									<c:when test="${mypageQuote.state eq '1'}">
										<td>거래대기</button></td>
									</c:when>
									<c:when test="${mypageQuote.state eq '2'}">
										<td>거래중</button></td>
									</c:when>
									<c:when test="${mypageQuote.state eq '3'}">
										<td>거래완료</button></td>
									</c:when>
									<c:otherwise>
										<td>거래완료</td>
									</c:otherwise>
								</c:choose>

								<td><button class="btn btn-primary"
										onclick="callTable
					('${mypageQuote.manufacture}','${mypageQuote.machine}','${mypageQuote.quote_price}','${mypageQuote.power}'
					,'${mypageQuote.glass}','${mypageQuote.equipment}','${mypageQuote.username}','<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${mypageQuote.rdate}" />','${mypageQuote.tel}'
					,'${mypageQuote.bank_name}','${mypageQuote.account_number}','${mypageQuote.request_message}')">상세보기</button></td>



							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>









	<div id="popup"
		class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
		<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container"
				style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white; overflow: auto; overflow-x: hidden;">


			<table class="table"
					style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
					<tr>
						<td colspan="2"
							style="border-right: medium; border-right-color: black; text-align: center;">중고견적
							상세 보기</td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">제조사</td>
						<td><div id="manufacture"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">기기명</td>
						<td><div id="machine"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">금액</td>
						<td><div id="quote_price"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">전원</td>
						<td><div id="power"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">액정</td>
						<td><div id="equipment"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">기기상태</td>
						<td><div id="glass"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">이름</td>
						<td><div id="username"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">등록일</td>
						<td><div id="rdate"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;"  width="25%">연락처</td>
						<td><div id="tel"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">은행명</td>
						<td><div id="bank_name"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">계좌번호</td>
						<td><div id="account_number"></div></td>
					</tr>
					<tr>
						<td style="text-align: center;" width="25%">참고사항</td>
						<td><div id="request_message"></div></td>
					</tr>

				</table>
				<button type="button"
					class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close"
					style="margin-bottom: 3%">닫기</button>

			</div>

		</div>
	</div>
	
</body>
</html>
