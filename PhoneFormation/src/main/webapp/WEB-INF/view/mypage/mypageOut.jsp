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
<title>회원탈퇴</title>
<script type="text/javascript">

$(document).ready(function(){
	$("#pageback").click(function(){
		location.href="/phonefo/mypageMain";
	});
	
	
});

</script>

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

	<center>
		<font size="8" color="black">정말로<br></font>
		<font size="8" color="red"> 탈퇴</font><font size="8" color="black">하시겠어요? </font><br><br>
	</center>
	<br><br><br><br>
	<form method="post"class="form-horizontal" style="margin-left: 33%">


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				 <input type="submit" name="submit" class="btn btn-primary btn-md" value="탈퇴하기" />
                 <input type="button" name="reset" class="btn btn-danger btn-sm" id="pageback"  value="취소" />
			</div>
		</div>


		<br>
		<br>
		<br>
	</form>
</div></div>
</body>
</html>