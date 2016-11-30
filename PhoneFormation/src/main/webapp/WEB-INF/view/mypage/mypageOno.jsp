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
	$("#image").text(image);
	$("#popup").fadeIn(700);
}
function callAnsTable(answer,answer_regdate){
	$("#answer").text(answer);
	$("#answer_regdate").text(answer_regdate);
	$("#popup2").fadeIn(700);
}

$(function(){
	$("#close").click(function(){
	$("#popup").fadeOut(500);
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
							<c:when test="${empty adminOno.image=='/resources/upload/'}">
								<td>무</td>
							</c:when>
							<c:otherwise>
								<td>유</td>
							</c:otherwise>
						</c:choose>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${adminOno.regdate}" /></td>
					<td>${adminOno.answer}</td>
					<td>${adminOno.answer_regdate}</td>
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
	<div id="popup" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 50%; height: 60%; margin-left: 20%; margin-top: 10%;  border: 1px solid black;">

			<br>
			<table class="table">
				<tr>
					<td>제목</td>
					<td><div id="title"></div></td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td><div id="category"></div></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><div id="contents"></div></td>
				</tr>
				<tr>
					<td>이미지</td>
					<td><img alt="이미지" src="image"></td>
				</tr>
			</table>
			<button type="button" class="btn btn-danger btn-sm" id="close">닫기</button>


		</div>
	</div>

	<div id="popup2" class="overlay"
		style="z-index: 25; display: none; position: fixed; top: 0; left: 0; background-color: rgba(0, 0, 0, 0.6); width: 100%; height: 100%;">
		<div
			style="background-color: white; width: 50%; height: 60%; margin-left: 20%; margin-top: 10%;  border: 1px solid black;">

			<br>
			<table class="table">
				<tr>
					<td>답변</td>
					<td><div id="answer"></div></td>
				</tr>
				<tr>
					<td>답변날짜</td>
					<td><div id="answer_regdate"></div></td>
				</tr>
			</table>
			<button type="button" class="btn btn-danger btn-md" id="close2">닫기</button>

		</div>
	</div>
	

</body>
</html>
