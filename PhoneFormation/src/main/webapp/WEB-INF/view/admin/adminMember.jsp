<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>



<!-- Main content -->
<section class="content">

			


			

					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="i"
							<c:out value="${cri.searchType eq 'i'?'selected':''}"/>>
							ID</option>
						<option value="n"
							<c:out value="${cri.searchType eq 'n'?'selected':''}"/>>
							Name</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'in'?'selected':''}"/>>
							ID OR Name</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
					<button id='newBtn'>New Board</button>

		
					<table class="table table-bordered">
						<tr>
							<th>ID</th>
							<th>PW</th>
							<th>Name</th>
							<th>Birth</th>
							<th>Rdate</th>
							<th>Gender</th>
							<th>Email</th>
							<th>Tel</th>
							<th>Root</th>
							<th>Status</th>
						</tr>

						<c:forEach items="${list}" var="member">
	
							<tr>
								<td>${member.userid}</td>
								<td>${member.userpwd} </a></td>
								<td>${member.username}</td>
								<td>${member.birth}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${boardVO.rdate}" /></td>
								<td>${member.gender}</td>
								<td>${member.email}</td>
								<td>${member.tel}</td>
								<td>${member.root}</td>
								<td>${member.status}</td>
								
							</tr>

						</c:forEach>

					</table>
				


			
							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>


</section>



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

							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				$('#newBtn').on("click", function(evt) {

					self.location = "register";

				});

			});
</script>


