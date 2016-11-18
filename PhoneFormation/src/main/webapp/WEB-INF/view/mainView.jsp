<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="./head.jsp"></jsp:include>
<jsp:include page="./jquery.jsp"></jsp:include>
</head>
<body>
<div id="container">
		<table>
		<tr>
			<td><!-- nav 메뉴/로그인바 -->
				<jsp:include page="./header.jsp" flush="true"/>
			</td>
		</tr>
		<tr>
			<td><!-- body -->
				<jsp:include page="./body.jsp" flush="true"/>
			</td>
		</tr>
		<tr>
			<td><!-- footer -->
			<hr><jsp:include page="./footer.jsp" flush="true"/><hr>
			</td>
		</tr>
	</table>
	</div>


</body>
</html>