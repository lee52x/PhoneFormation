<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내정보</title>
<style type="text/css">

</style>
</head>
<body>
<div class="container">
	<div id="content">
	<div>
<%@include file="mypageHeader.jsp"%>
	</div>


  <!-- Start Content -->
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
 
                   
                <div class="col-md-11 col-sm-offset-3" style="border: 1px solid black;">
                    
                    <!-- Classic Heading -->
                    <h4 class="classic-title"><span>내정보 보기</span></h4>
                    
                    <!-- Divider -->
                    <div class="hr1 mb-10"></div>

                    <!-- Info - Icons List -->
                    <div style="width: 20%; float: left;margin-bottom: 5%;">
                    <ul class="icons-list" style="font-size: 15px; margin-left: 15%; margin-top: 4%; text-align: center;">
                        <li> <strong>아이디</strong></li><br>
                        <li> <strong>이 름</strong></li><br>
                        <li> <strong>성 별</strong></li><br>
                        <li> <strong>생년월일</strong></li><br>
                    </ul>
                    </div>
                    <div style="width: 30%; float: left;margin-bottom: 5%;">
                    <ul class="icons-list" style="font-size: 15px; margin-left: 10%; margin-top: 4%;">
                        <li>${object.userid }</li><br>
                        <li>${object.username }</li><br>
                        <li>${object.gender }</li><br>
                        <li>${object.birth}</li><br>
                    </ul>
                    </div>
                    <div style="width: 20%; float: left; left;margin-bottom: 5%;"">
                    <ul class="icons-list" style="font-size: 15px; text-align: center;">
                    <br><br><br>
                        <li> <strong>휴대전화</strong></li><br>
                        <li> <strong>이메일</strong></li><br>
                        <li> <strong>가입일자</strong></li>
                    </ul>
                    </div>
                    <div style="width: 30%; float: left; left;margin-bottom: 5%;"">
                    <ul class="icons-list" style="font-size: 15px;">
                    <br><br><br>
                        <li>${object.tel }</li><br>
                        <li>${object.email }</li><br>
                        <li><fmt:formatDate pattern="yyyy-MM-dd"
										value="${object.rdate }" /></li>
                    </ul>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div></div>
</body>
</html>