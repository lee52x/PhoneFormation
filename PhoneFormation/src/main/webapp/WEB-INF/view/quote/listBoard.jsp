<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<script type="text/javascript">
function popup(no) {
	window.open(
	"/phonefo/popup?no="+no,
	"EventFrame",
	"menubar=no,width=500,height=400,toolbar=no"
	);
	}
</script>
<body>
<div class="page-banner">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h2>중고폰 견적</h2>
					<p>정상해지 공기계</p>
				</div>
				<div class="col-md-6">
					<ul class="breadcrumbs">
						<li><a href="#">홈</a></li>
						<li>회원가입</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<div class="big-title text-center">
		<h1>중고폰 견적</h1>
		<p class="title-desc">아래의 내용에 따라 기입해 주시기 바랍니다.</p>
		<hr>
	</div>
     <div id="content">
<div class="container">
<div class="tit_1" style="text-align:left; position:relative;">
	<div class="page_name">
		<span style="background:none; padding:0;">헌폰 판매신청현황</span>
	</div>
	
	
	
	
</div>

<!-- ■ 글목록 TABLE -->
<table cellpadding=1 cellspacing=0 border=0 class="list_form">
	<colgroup>
		<col width="10%" />
		<col width="15%"/>
		<col/>
		<col width="15%"/>
		<col width="30%"/>
		<col width="10%"/>
		<col width="10%" />
	</colgroup>
	<tr id='mainindex_HeadTR' class="section">
		<th>No</th>
		<th>제조사</th>
		<th>기기명</th>
		<th>신청자</th>
		<th>신청일</th>
		<th>진행상태</th>
	</tr>

	<c:forEach items="${list }" var="vo">
	<tr align=center >
				<!-- 글번호 -->
		<td>
			${vo.no }
		</td>	

		<!-- 제조사 -->
		<td>
			${vo.manufacture }			
		</td>
		<!-- 모델명 -->
		<td>
			${vo.machine }
		<!--작성자-->
		<td>
			${vo.username }
		</td>

		<!--작성일-->
	
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.rdate }" /></td>

		<!--진행상태-->
		
		
			<c:choose>
									<c:when test="${vo.state eq '0'}">
										<td><button  type="button" class="btn btn-primary" onclick="popup(${vo.no})">대기</button></td>
									</c:when>
									<c:when test="${vo.state eq '1'}">
										<td><button  type="button" class="btn btn-primary" onclick="popup(${vo.no})">대기</button></td>
									</c:when>
									<c:when test="${vo.state eq '2'}">
										<td><button  type="button" class="btn btn-primary" onclick="popup(${vo.no})">진행중</button></td>
									</c:when>
									<c:when test="${vo.state eq '3'}">
										<td><button  type="button" class="btn btn-primary" onclick="popup(${vo.no})" >완료</button></td>
									</c:when>
									<c:otherwise>
										<td>거래완료</td>
									</c:otherwise>
			</c:choose>
	
	
	</tr>
	</c:forEach>
	</table>



</div>

</div>
</body>
</html>