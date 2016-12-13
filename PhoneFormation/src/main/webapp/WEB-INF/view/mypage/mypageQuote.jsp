<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유저 중고폰 판매 등록 리스트</title>
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
	$("#equipment").text(equipment);
	$("#glass").text(glass);
	$("#username").text(username);
	$("#rdate").text(rdate);
	$("#tel").text(tel);
	$("#bank_name").text(bank_name);
	$("#account_number").text(account_number);
	$("#request_message").text(request_message);



	$("#popup").fadeIn(700);
	

}



	$(document).ready(function() {


		
		$("#popup4").hide();
		$("#popup3").hide();
		$("#popup2").hide();
		$("#popup").hide();
		
		$("#close").click(function() {
			$("#popup").fadeOut(10);
		});
	
		$("#close2").click(function() {
			$("#popup2").fadeOut(10);
			$("#purchasetable").empty();
			content = null;
		});
		$("#close3").click(function() {
			$("#popup3").fadeOut(10);
			$("#purchaseIng").empty();
			contentIng = null;
		});
		$("#close4").click(function() {
			$("#popup4").fadeOut(10);
			$("#purchaseEnd").empty();
			contentEnd = null;
		});
		
		

			$('[name=noPurchase]').click(function() {//구매신청한 업체 리스트
			
			var searchNo = $(this).attr('id');
			$.ajax({
				url : "/phonefo/purchaseList",
				data : {"no" : searchNo},
				type : "GET",
				dataType: 'json',
				success : function(result) {
					$("#popup2").fadeIn(700);

					
					 for(var i=0;i<result.length;i++){
						   if(i==0){
							   
							   content+=
								   "<tr>"+
				                    "<th>글번호</th>"+
				                    "<th>아이디</th>"+
				                    "<th>구매번호</th>"+
				                    "<th>전화번호</th>"+
				                    "<th>사업자번호</th>"+
				                    "<th>회사명</th>"+
				                    "<th>주소</th>"+
				                    "<th>선택</th>"+
				                "</tr>"+
				                "<tr>"+
			                    "<td>"+result[i].no+"</td>"+
			                    "<td>"+result[i].userid+"</td>"+
			                    "<td>"+result[i].purchaseNum+"</td>"+
			                    "<td>"+result[i].tel+"</td>"+
			                    "<td>"+result[i].businessNum+"</td>"+
			                    "<td>"+result[i].companyName+"</td>"+
			                    "<td>"+result[i].address+"</td>"+
			                    "<td><button class='btn btn-primary' onclick=sellSelect("
			                    		       +result[i].no +",'"+result[i].userid+"')>선택</button>"+"</td>"+
			                "</tr>";
						   }else{
							
						  
						   content +=
						  "<tr>"+
		                    "<td>"+result[i].no+"</td>"+
		                    "<td>"+result[i].userid+"</td>"+
		                    "<td>"+result[i].purchaseNum+"</td>"+
		                    "<td>"+result[i].tel+"</td>"+
		                    "<td>"+result[i].businessNum+"</td>"+
		                    "<td>"+result[i].companyName+"</td>"+
		                    "<td>"+result[i].address+"</td>"+
		                    "<td><button class='btn btn-primary' onclick=sellSelect("
		                    		       +result[i].no +",'"+result[i].userid+"')>선택</button>"+"</td>"
		                "</tr>";
						   }
					   }
					   $("#purchasetable").empty();
					   
					   $(content).appendTo("#purchasetable");
					  
						   
					   
				
				},error:function(e) {
			    	alert(e.responseText);
				}
			});
			
		});
		
		
		
		
		
	
		
		$('[name=ingPurchase]').click(function() {//사용자가 판매할 업체를 선택한후 나오는 페이지 선택한 업체만 나오고 거래완료 여부 취소여부
			
			var ingNo = $(this).attr('id');
			$.ajax({
				url : "/phonefo/purchaseIng",
				data : {"no" : ingNo},
				type : "GET",
				dataType: 'json',
				success : function(result) {
					$("#popup3").fadeIn(700);
				
		

					 		
						   contentIng =
							   "<tr>"+
			                    "<th>글번호</th>"+
			                    "<th>아이디</th>"+
			                    "<th>구매번호</th>"+
			                    "<th>전화번호</th>"+
			                    "<th>사업자번호</th>"+
			                    "<th>회사명</th>"+
			                    "<th>주소</th>"+
			                    "<th>선택</th>"+
			                    "<th>선택</th>"+
			                "</tr>"+  
						  "<tr>"+
		                    "<td>"+result.no+"</td>"+
		                    "<td>"+result.userid+"</td>"+
		                    "<td>"+result.purchaseNum+"</td>"+
		                    "<td>"+result.tel+"</td>"+
		                    "<td>"+result.businessNum+"</td>"+
		                    "<td>"+result.companyName+"</td>"+
		                    "<td>"+result.address+"</td>"+
		                    "<td><button class='btn btn-danger' onclick=sellSelectEnd("
		                    		       +result.no +",'"+result.userid+"')>거래완료</button>"+"</td>"+
		                    "<td><button class='btn btn-primary' onclick=sellCancel("
		                    		       +result.no +",'"+result.userid+"')>거래취소</button>"+"</td>"
		                "</tr>";
   
					   $("#purchaseIng").empty();
					   
					   $(contentIng).appendTo("#purchaseIng");
					  
						   
					   
				
				},error:function(e) {
			    	alert(e.responseText);
				}
			});
			
		});
		
	

		
	$('[name=endPurchase]').click(function() {//거래가 완료 그후 거래햇던 기업정보
		var endNo = $(this).attr('id');
		$.ajax({
			url : "/phonefo/purchaseEnd",
			data : {"no" : endNo},
			type : "GET",
			dataType: 'json',
			success : function(result) {
				$("#popup4").fadeIn(700);



				 
					   contentEnd =
						   "<tr>"+
		                    "<th>글번호</th>"+
		                    "<th>아이디</th>"+
		                    "<th>구매번호</th>"+
		                    "<th>전화번호</th>"+	
		                    "<th>사업자번호</th>"+
		                    "<th>회사명</th>"+
		                    "<th>주소</th>"+
		                "</tr>"+
							 "<tr>"+
			                 "<td>"+result.no+"</td>"+
			                 "<td>"+result.userid+"</td>"+
			                 "<td>"+result.purchaseNum+"</td>"+
			                 "<td>"+result.tel+"</td>"+
			                 "<td>"+result.businessNum+"</td>"+
			                 "<td>"+result.companyName+"</td>"+
			                 "<td>"+result.address+"</td>"+
			             "</tr>";


				   $("#purchaseEnd").empty();
				   
				   $(contentEnd).appendTo("#purchaseEnd");
				  
					   
				   
			
			}
		});
		
	});
	
	});
	
	var sellSelect=function(no,userid){//판매할 업체 선택
		 var select = confirm("해당 업체를 선택하시겠습니까?");
		if(select==true){
		$.ajax({
			url : "/phonefo/purchaseChoose",
			data : {"no" : no,"userid":userid},
			type : "POST",
			dataType: 'json',
			success :function(){
				$("#popup2").fadeOut(10);
				$("#purchasetable").empty();
				content = null;
			}
		}); 
		alert("선택이 완료되었습니다.");
		location.href='/phonefo/mypageQuote';
		}
	}

	
	var sellCancel=function(no){//거래취소
		var selectCancel = confirm("거래를 취소하시겠습니까? 등록한 글이 삭제됩니다.");
		if(selectCancel==true){
		$.ajax({
			url : "/phonefo/purchaseCancel",
			data : {"no" : no},
			type : "POST",
			dataType: 'json',
			success :function(){
			
				 
				$("#popup3").fadeOut(10);

				$("#purchaseIng").empty();
				contentIng = null;
				
			}
		}); 
		alert("거래가 취소되었습니다.");
		location.href='/phonefo/mypageQuote';
		}
	}
	var sellSelectEnd=function(no,userid){//거래완료
		var selectEnd=confirm('거래를 완료 하시겠습니까?');
		alert($('#companyId').val());
		if(selectEnd==true){
		$.ajax({
			url : "/phonefo/purchaseIngChoose",
			data : {"no" : no,"userid":userid},
			type : "POST",
			dataType: 'json',
			success :function(){
			
				
				$("#popup3").fadeOut(10);

				$("#purchaseIng").empty();
				contentIng = null;
				
			}
		}); 
		alert("거래가 완료되었습니다.");
		location.href='/phonefo/mypageQuote';
	}
	}
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
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${mypageQuote.rdate}" /></td>

								<c:choose>
									<c:when test="${mypageQuote.state eq '0'}">
										<td>미신청</td>
									</c:when>
									<c:when test="${mypageQuote.state eq '1'}">
										<td><button class="btn btn-primary" id="${mypageQuote.no}" name="noPurchase">선택가능</button></td>
									</c:when>
									<c:when test="${mypageQuote.state eq '2'}">
										<td><button class="btn btn-warning" id="${mypageQuote.no}" name="ingPurchase">거래중</button></td>
									</c:when>
									<c:when test="${mypageQuote.state eq '3'}">
										<td><button class="btn btn-danger" id="${mypageQuote.no}" name="endPurchase">거래완료</button></td>
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
	
	<div id="popup2"
		class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
		<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container"
				style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white; overflow: auto; overflow-x: hidden;">

			<div class="big-title text-center">
			<h1>신청내역</h1>
			</div>
				<table class="table" id="purchasetable"
					style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
				</table>
				<button type="button"
					class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close2"
					style="margin-bottom: 3%">닫기</button>

			</div>

		</div>
	</div>
	
	
	
	<div id="popup3"
		class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
		<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container"
				style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white; overflow: auto; overflow-x: hidden;">

			<div class="big-title text-center">
			<h1>거래중</h1>
			</div>

				<table class="table" id="purchaseIng"
					style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
	

	                
	   
				</table>
				<button type="button"
					class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close3"
					style="margin-bottom: 3%">닫기</button>

			</div>

		</div>
	</div>

	<div id="popup4"
		class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
		<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container"
				style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white; overflow: auto; overflow-x: hidden;">

			<div class="big-title text-center">
			<h1>거래완료</h1>
			</div>

				<table class="table" id="purchaseEnd"
					style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
	

	                
	   
				</table>
				<button type="button"
					class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close4"
					style="margin-bottom: 3%">닫기</button>

			</div>

		</div>
	</div>


</body>
</html>
