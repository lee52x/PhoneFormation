<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.list_form{width:100%; border-bottom:1px solid #eee;}
.list_form .section{background:url(http://www.hunphone.co.kr/img/bg_diagonal.gif);}
.list_form th{padding:5px; height:30px; border-top:2px solid #eee; border-bottom:3px solid #eee; color:#e54c47; font-size:16px;}
.list_form td{text-align:left; font-size:14px; padding:5px; line-height:30px; height:30px;}
.list_form a{font-size:14px;}

.tit_1{margin-top:30px; border-bottom:1px solid #eee; height:30px;}
.tit_1 .page_name{display:block; background:url(http://www.hunphone.co.kr/img/ico_nowpage.gif) no-repeat 0 2px; padding-left:20px; margin-bottom:10px; height:20px; text-align:left;}
.tit_1 .page_name span{display:inline-block; background:url(http://www.hunphone.co.kr/img/aw_nowpage.gif) no-repeat right 3px; height:20px; vertical-align:middle; padding-right:15px; margin-right:5px; font-size:16px; color:#e54c47;}
.tit_1 .page_name span a{display:block; font-size:16px; color:#e54c47;}



</style>
 <%
	if (session.getAttribute("userid") == null || session.getAttribute("userid") =="") {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/phonefo/login');" + "</script>");
	}
%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<script type="text/javascript">
function callTable(title,category,content,image){
	$("#title").text(title);
	$("#category").text(category);
	$("#contents").text(content);
	if(image=="/resources/upload/"){
		$("#img").attr("src","/resources/images/noimage.jpg");

	}else{
	$("#img").attr("src",image);
	}
	$("#popup").fadeIn(700);
	

}
function callAnsTable(answer,answer_regdate){
	$("#answer").text(answer);
	$("#answer_regdate").text(answer_regdate);
	
	$("#popup2").fadeIn(700);

}
$(document).ready(function(){
	
$("#popup").hide();
$("#popup2").hide();
		$(function(){
			$("#close").click(function(){
				$("#popup").fadeOut(10);
		});
});
	$("#close2").click(function(){
		$("#popup2").fadeOut(500);
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
		<col width="5%" />
		<col width="10%"/>
		<col width="15%"/>
		<col width="15%"/>
		<col width="5%"/>
		<col width="10%"/>

		<col width="10%" />
		<col width="10%" />
	</colgroup>
			<thead>
				<tr id='mainindex_HeadTR' class="section">
							<th>ono</th>
							<th>userid</th>
							<th>title</th>
							<th>category</th>

							<th>image</th>
							<th>regdate</th>

							<th>내용</th>
							<th>답변</th>
						
						</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="mypageOno">
					<tr class="tr">
					<td>${mypageOno.ono}</td>
					<td>${mypageOno.userid}</td>
					<td>${mypageOno.title}</td>
					<td>${mypageOno.category}</td>

					<c:choose>
							<c:when test="${mypageOno.image eq '/resources/upload/'}">
								<td>무</td>
							</c:when>
							<c:otherwise>
								<td>유</td>
							</c:otherwise>
						</c:choose>
					<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${mypageOno.regdate}" /></td>
			
						<td><button class="btn btn-primary"  onclick="callTable('${mypageOno.title}','${mypageOno.category}','${mypageOno.content}','${mypageOno.image}')">상세보기</button></td>
						<c:choose>
							<c:when test="${empty mypageOno.answer_regdate}">
								<td>답변대기</td>
							</c:when>
							<c:otherwise>
								<td><button class="btn btn-primary"  onclick="callAnsTable('${mypageOno.answer}','<fmt:formatDate pattern="yyyy-MM-dd" value="${mypageOno.answer_regdate}" />')">답변완료</button></td>
							</c:otherwise>
						</c:choose>
						
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div></div>
	
	

		
           
                    

           

            <div id="popup" class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
			<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container" style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white;overflow:auto; overflow-x:hidden;">

  						 				
										<table class="table"  style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
											<tr>
												<td colspan="2"style="border-right: medium; border-right-color: black;  text-align: center;">문의 내역 상세 보기</td>
											</tr>
											<tr>
												<td style=" text-align: center;" width="25%">제목</td>
												<td><div id="title"></div></td>
											</tr>
											<tr>
												<td style=" text-align: center;" width="25%">카테고리</td>
												<td><div id="category"></div></td>
											</tr>
											<tr>
												<td style=" text-align: center;" width="25%">내용</td>
												<td><div id="contents"></div></td>
											</tr>
											<tr>
											
												<td style=" text-align: center;" colspan="2"><img alt="이미지" id="img"></td>
											</tr>
										</table>
										<button type="button" class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close" style="margin-bottom: 3%">닫기</button>
									
								</div>
							
						</div>
</div>
                 
                    
    <div id="popup2" class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
			<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container" style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white;overflow:auto; overflow-x:hidden;">

  						 				
										<table class="table"  style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
											<tr>
												<td colspan="2"style="border-right: medium; border-right-color: black;  text-align: center;">답변 상세 보기</td>
											</tr>
											<tr>
												<td style=" text-align: center;" width="25%">답변</td>
												<td><div id="answer"></div></td>
											</tr>
											<tr>
												<td style=" text-align: center;" width="25%">답변날짜</td>
												<td><div id="answer_regdate"></div></td>
											</tr>
											
											<tr>
												
												<td style=" text-align: center;" colspan="2"></td>
											</tr>
										</table>
										<button type="button" class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close2" style="margin-bottom: 3%">닫기</button>
									
								</div>
							
						</div>
</div>
   

</body>
</html>
