<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>



<!-- Main content -->

<div class="container">
	<div id="content">
					<div>
<%@include file="adminHeader.jsp"%>
	</div>		
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
							<th>ono</th>
							<th>userid</th>
							<th>title</th>
							<th>category</th>
							<th>content</th>
							<th>image</th>
							<th>regdate</th>
							<th>answer</th>
							<th>answer_regdate</th>
						
						</tr>

						<c:forEach items="${list}" var="adminOno">
	
							<tr>
								<td>${adminOno.ono}</td>
								<td>${adminOno.userid}</td>
								<td>${adminOno.title}</td>
								<td>${adminOno.category}</td>
								<td>${adminOno.content}</td>
								<td>${adminOno.image}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${adminOno.regdate}" /></td>
								<td>${adminOno.answer}</td>
								<td>${adminOno.answer_regdate}</td>
						
					
								
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



<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>

<script>
	$(document).ready(
			function() {

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
</script>


