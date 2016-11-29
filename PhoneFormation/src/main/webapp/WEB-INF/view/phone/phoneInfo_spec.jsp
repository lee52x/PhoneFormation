<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center">
		<c:forEach items="${list_color }" var="list_color" varStatus="status">
			<c:if test="${status.index%3==0}">
				<tr>
			</c:if>
			<td>
				<div >
						<center>
							<img src="${list_color.image }">
							<p>${list_color.color }</p>
							<c:forEach items="${list_capacity }" var="list_capacity">
							<p>${list_capacity.capacity }</p>
							<p>${list_capacity.release_price }</p>
							</c:forEach>
							<c:forEach items="${list_Sspec_processor }" var="list_Sspec_processor">
							<p>${list_Sspec_processor.func1 }</p>
							<p>${list_Sspec_processor.func2 }</p>
							</c:forEach>
						</center>
				</div>
			</td>
			<c:if test="${status.index%3==2}">
				</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>