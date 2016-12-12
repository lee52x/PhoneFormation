<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>




<script type="text/javascript">



	$(document).ready(
			function() {
				
				$("#popup").hide();
				$("#popup2").hide();

		
					$("#close").click(function() {
						$("#popup").fadeOut(10);
					});
					$("#close2").click(function() {
						$("#popup2").fadeOut(10);
					});
		
				
			
				$('#searchBtn').on(
						"click",
						function(event) {

							self.location = "adminOno"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});
				
				

			});
	
	
	function callTable(title,category,content,image){

		$("#title").text(title);
		$("#category").text(category);
		$("#contents").text(content);
		if(image=="/resources/upload/"){
			$("#img").attr("src","/resources/images/noimage.jpg");

		}else{
		$("#img").attr("src",image);
		}


		$("#popup2").fadeIn(700);
		

	}
	
	function callAnsTable(ono){
		$('#ono').val(ono);
		
		$("#popup").fadeIn(700);
	}
</script>

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

</head>
<body>


<!-- Main content -->

<div class="container">
	<div id="content">
					<div>
<%@include file="adminHeader.jsp"%>
	</div>		
	 <!-- Classic Heading -->
                        <h4 class="classic-title"><span>1대1문의 내역 </span></h4>
				<div class='widget widget-search'>
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="에러1"
							<c:out value="${cri.searchType eq '에러1'?'selected':''}"/>>
							에러1</option>
						<option value="에러2"
							<c:out value="${cri.searchType eq '에러2'?'selected':''}"/>>
							에러2</option>
						<option value="에러3"
							<c:out value="${cri.searchType eq '에러3'?'selected':''}"/>>
							에러3</option>
						<option value="에러4"
							<c:out value="${cri.searchType eq '에러4'?'selected':''}"/>>
							에러4</option>
						</select>
					 <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button class="search-btn" id='searchBtn'><i class="fa fa-search"></i></button>

            </div>         


		<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>제목</th>
							<th>분류</th>
							<th>내용</th>
							<th>이미지</th>
							<th>등록일자</th>
							<th>답변</th>
							<th>답변날짜</th>
							<th></th>
							<th></th>
						
						</tr>

						<c:forEach items="${list}" var="adminOno">
	
							<tr>
								<td>${adminOno.ono}</td>
								<td>${adminOno.userid}</td>
								<td>${adminOno.title}</td>
								<td>${adminOno.category}</td>
								<td>${adminOno.content}</td>
								<c:choose>
							<c:when test="${adminOno.image eq '/resources/upload/'}">
								<td>없음</td>
							</c:when>
							<c:otherwise>
								<td>있음</td>
							</c:otherwise>
							</c:choose>
								
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${adminOno.regdate}" /></td>
							<c:choose>
							<c:when test="${adminOno.answer eq null}">
								<td>없음</td>
								<td>없음</td>
							</c:when>
							<c:otherwise>
								<td>있음</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${adminOno.answer_regdate}" /></td>
							</c:otherwise>
							</c:choose>
									<td><button class="btn-custom btn-large border-btn btn-gray"  
									onclick="callTable('${adminOno.title}','${adminOno.category}'
									,'${adminOno.content}','${adminOno.image}')">상세보기</button></td>
									<td><button class="btn-custom btn-large border-btn btn-gray" onclick="callAnsTable('${adminOno.ono}')">답변하기</button></td>
						
					
								
							</tr>

						</c:forEach>

					</table>
</div>
			<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="adminOno${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="adminOno${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="adminOno${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>

				</div>
		
	

</div>
</div>


  <div id="popup" class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
			<div class="nivo-lightbox-wrap">
			<div class="nivo-lightbox-table container" style="line-height: 607px; height: 607px; margin-top: 3%; background-color: white;overflow:auto; overflow-x:hidden;">

  						 				<form method="post">
										<table class="table"  style="background-color: white; width: 800px; margin-left: 15%; margin-top: 5%;">
											<tr>
												<td colspan="2"style="border-right: medium; border-right-color: black;  text-align: center;">답변하기</td>
											</tr>
											<tr>
												<td colspan="2" style="border-right: medium; border-right-color: black;  text-align: center;">
												<textarea rows="20" cols="100" name="answer"></textarea></td>
											</tr>
							
											
										</table>
										<input type="hidden" id="ono" name="ono">
										<button type="submit" class="btn btn-primary btn-sm col-sm-1 col-sm-offset-5" style="margin-right: 1%">답변</button>
										</form>
										<button type="button" class="btn btn-danger btn-sm col-sm-1 " id="close">닫기</button>
									
								</div>
							
						</div>
</div>
  
	  <div id="popup2" class="nivo-lightbox-overlay nivo-lightbox-theme-default nivo-lightbox-effect-fadeScale nivo-lightbox-open">
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
										<button type="button" class="btn btn-danger btn-sm col-sm-2 col-sm-offset-5" id="close2" style="margin-bottom: 3%">닫기</button>
									
								</div>
							
						</div>
</div>
</body></html>


