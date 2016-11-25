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

    <script> 
	$(document).ready(function(){
		$(".navtab").mouseover(function(){
				$(this).css("background-color", "black");
		});
		$(".navtab").mouseout(function(){
			$(this).css("background-color", "white");
		})
	});
    </script>
       
  </head>
  <body>
	
	<div class="container-fluid" style="margin-left: 20%; margin-right: auto;">
	  <ul class="nav nav-tabs" id="mynav">
	    <li role="presentation"><a href="/phonefo/mypageMain" id="nav1" class="navtab">내정보</a></li>
	    <li role="presentation"><a href="/phonefo/mypageUpdate" id="nav2" class="navtab">정보수정</a></li>
        <li role="presentation"><a href="/phonefo/mypageOno" id="nav3" class="navtab">1대1문의내역</a></li>
        <li role="presentation"><a href="/phonefo/mypageOut" id="nav4" class="navtab">회원탈퇴</a></li>

      </ul>
</div>
  </body>
</html>