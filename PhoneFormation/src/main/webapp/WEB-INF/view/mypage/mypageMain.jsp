<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div id="content">
	<div>
<%@include file="mypageHeader.jsp"%>
	</div>
<a href="/phonefo/mypageUpdate">정보수정</a>
<a href="/phonefo/mypageOno">1대1문의보기</a>

${object.userid }
${object.userpwd }
${object.username }
${object.birth }
${object.rdate }
${object.gender }
${object.email }
${object.tel }
${object.root }
${object.status }

</div></div>
</body>
</html>