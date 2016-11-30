<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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


  <!-- Start Content -->
    <div id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
 
                   
                <div class="col-md-4">
                    
                    <!-- Classic Heading -->
                    <h4 class="classic-title"><span>${object.userid }님</span></h4>
                    
                    <!-- Divider -->
                    <div class="hr1 mb-10"></div>

                    <!-- Info - Icons List -->
                    <ul class="icons-list">
                        <li> <strong>이름 :</strong>${object.username }</li>
                        <li> <strong>이메일 :</strong>${object.email }</li>
                        <li> <strong>휴대전화 :</strong>${object.tel }</li>
                        <li> <strong>성별 :</strong>${object.gender }</li>
                        <li> <strong>가입일자 :</strong><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${object.rdate }" /></li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div></div>
</body>
</html>