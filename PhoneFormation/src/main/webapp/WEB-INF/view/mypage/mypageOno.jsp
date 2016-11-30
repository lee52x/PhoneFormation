<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	if (session.getAttribute("userid") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/phonefo/login');" + "</script>");
	}
%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<div class="container">
	<div id="content">
	<div>
<%@include file="mypageHeader.jsp"%>
	</div>

	<div class="box-body">
	<table class="table table-bordered">
			<thead>
				<tr>
							<th>ono</th>
							<th>userid</th>
							<th>title</th>
							<th>category</th>
							<th>content</th>
							<th>image</th>
							<th>regdate</th>
							<th>answer</th>
							<th>answer_regdate</th>
							<th></th>
							<th></th>
						
						</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="adminOno">
					<tr class="tr">
					<td>${adminOno.ono}</td>
					<td>${adminOno.userid}</td>
					<td>${adminOno.title}</td>
					<td>${adminOno.category}</td>
					<td>${adminOno.content}</td>
					<c:choose>
							<c:when test="${adminOno.image eq '/resources/upload/'}">
								<td>무</td>
							</c:when>
							<c:otherwise>
								<td>유</td>
							</c:otherwise>
						</c:choose>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${adminOno.regdate}" /></td>
					<td>${adminOno.answer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${adminOno.answer_regdate}" /></td>
						<td><button class="btn-custom btn-large border-btn btn-gray" onclick="callTable('${adminOno.title}','${adminOno.category}','${adminOno.content}','${adminOno.image}')">상세보기</button></td>
						<c:choose>
							<c:when test="${empty adminOno.answer_regdate}">
								<td>답변대기</td>
							</c:when>
							<c:otherwise>
								<td><button class="btn-custom btn-large border-btn btn-gray" onclick="callAnsTable('${adminOno.answer}','${adminOno.answer_regdate}')">답변완료</button></td>
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
