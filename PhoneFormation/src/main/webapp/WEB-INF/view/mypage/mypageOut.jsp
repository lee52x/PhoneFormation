<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("userid") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/phonefo/login');" + "</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Do!bid</title>
</head>


<body>
<div class="container">
	<div id="content">
	<div>
<%@include file="mypageHeader.jsp"%>
	</div>
	<br>
	<br>
	<br>
		<div class="titleText"  style="margin-left: 22%; margin-right: auto;">
		<font size="80" color="black">회원탈퇴</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>

	<center>
		<font size="8" color="black">정말로<br> 탈퇴하시겠어요? </font><br><br>
	</center>
	<br><br><br><br>
	<form class="form-horizontal" style="margin-left: 33%" role="form" action="myprofile_withdrawalOK.do">


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default"
					style="margin-right: 5%">Yes</button>
				<button type="reset" class="btn btn-default"
					style="margin-right: 5%">No</button>
			</div>
		</div>


		<br>
		<br>
		<br>
	</form>
</div></div>
</body>
</html>