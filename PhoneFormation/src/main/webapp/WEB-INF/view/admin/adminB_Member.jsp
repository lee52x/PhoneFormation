<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<title>기업멤버 리스트</title>
<!-- Main content -->

<div class="container">
	<div id="content">
	<div>
<%@include file="adminHeader.jsp"%>
	</div>		
	 <!-- Classic Heading -->
                        <h4 class="classic-title"><span>기업멤버 </span></h4>
				<div class='widget widget-search'>
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="i"
							<c:out value="${cri.searchType eq 'i'?'selected':''}"/>>
							아이디</option>
						<option value="m"
							<c:out value="${cri.searchType eq 'm'?'selected':''}"/>>
							회사명</option>
						<option value="im"
							<c:out value="${cri.searchType eq 'im'?'selected':''}"/>>
							아이디 OR 회사명</option></select>
					 <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button class="search-btn" id='searchBtn'><i class="fa fa-search"></i></button>

            </div>         
			

		<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>설립일자</th>
							<th>성별</th>
							<th>이메일</th>
							<th>가입일자</th>
							<th>연락처</th>
							<th>사업자번호</th>
							<th>회사명</th>
							<th>대표명</th>
							<th>주소</th>
						
						</tr>

						<c:forEach items="${list}" var="member">
	
							<tr>
								<td>${member.memberno}</td>
								<td>${member.userid}</td>
								<td>${member.username}</td>
								<td>${member.birth}</td>
								<td>${member.gender}</td>
								<td>${member.email}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${member.rdate}" /></td>
								<td>${member.tel}</td>
								<td>${member.businessNum}</td>
								<td>${member.companyName}</td>
								<td>${member.leaderName}</td>
								<td>${member.address}</td>

								
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


