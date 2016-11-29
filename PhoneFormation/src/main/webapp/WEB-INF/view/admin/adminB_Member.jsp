<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>



<!-- Main content -->

<div class="container">
	<div id="content">
				
				<div class='widget widget-search'>
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="i"
							<c:out value="${cri.searchType eq 'i'?'selected':''}"/>>
							ID</option>
						<option value="m"
							<c:out value="${cri.searchType eq 'm'?'selected':''}"/>>
							Name</option>
						<option value="im"
							<c:out value="${cri.searchType eq 'im'?'selected':''}"/>>
							ID OR Name</option></select>
					 <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button class="search-btn" id='searchBtn'><i class="fa fa-search"></i></button>

            </div>         
			

		<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th>ID</th>
							<th>PW</th>
							<th>Tel</th>
							<th>Email</th>
							<th>businessNum</th>
							<th>companyName</th>
							<th>leader</th>
							<th>address</th>
							<th>rdate</th>
							<th>root</th>
						
						</tr>

						<c:forEach items="${list}" var="member">
	
							<tr>
								<td>${member.userid}</td>
								<td>${member.userpwd}</td>
								<td>${member.tel}</td>
								<td>${member.email}</td>
								<td>${member.businessNum}</td>
								<td>${member.companyName}</td>
								<td>${member.leader}</td>
								<td>${member.address}</td>
								<td>${member.rdate}</td>
								<td>${member.root}</td>
								
							</tr>

						</c:forEach>

					</table>
</div>
			<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="adminB_Member${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="adminB_Member${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="adminB_Member${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
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

							self.location = "adminB_Member"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

						});

				

			});
</script>


