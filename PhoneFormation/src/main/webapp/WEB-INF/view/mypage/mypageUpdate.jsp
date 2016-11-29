<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">

$(document).ready(function(){

	$("#pageback").click(function(){//돌아가기
		
		location.href="/phonefo/mypageMain";
		
	});
	
});


</script>
</head>

<div class="container">
	<div id="content">
	<div>
<%@include file="mypageHeader.jsp"%>
	</div>
	
            <div class="row">
                <div class="col-md-12">
                    
                    <!-- Classic Heading -->
                    <h4 class="classic-title"><span>회원정보 수정</span></h4>
                   
                    <!-- Start Contact Form -->
                    <div id="contact-form" class="contatct-form">
                        <div class="loader"></div>
                        <form name="update" method="post">
                    
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="userid">아이디<span class="required"></span></label>
                                    <input id="userid" name="userid" type="text" value="${object.userid }" readonly="readonly" />                   
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="name">이름<span class="required"></span></label>
                                    <input id="name" name="name" type="text" value="${object.username }" readonly="readonly"/>                   
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="gender">성별<span class="required"></span></label>
                                    <input id="gender" name="gender" type="text" value="${object.gender }" readonly="readonly"/>                   
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="pswd1">비밀번호<span class="required">*</span></label>
                                    <input id="pswd1" name="pswd1" type="text" maxlength="20"  />
                                </div>
                                </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="pswd2">비밀번호 확인<span class="required">*</span></label>
                                    <input id="pswd2" name="pswd2" type="text"  maxlength="20"  />
                                </div>
                                </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="e-mail">휴대폰번호<span class="required"></span></label>
                                    <input id="e-mail" name="email" type="text" value="${object.tel }" maxlength="20"  />
                                </div>
                                </div>
                                
                                
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="e-mail">이메일<span class="required"></span></label>
                                    <input id="e-mail" name="email" type="text" value="${object.email }" readonly="readonly" />
                                </div>
                                </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="e-mail">이메일<span class="required"></span></label>
                                    <input id="e-mail" name="email" type="text" value="${object.email }" readonly="readonly" />
                                </div>
                                </div>
                               

                            <div class="row">
                     
                                    <input type="submit" name="submit" class="btn btn-primary btn-md" value="수정하기" />
                                    <input type="button" name="reset" class="btn btn-danger btn-sm" id="pageback"  value="취소" />
                                </div>
                        
                        </form>    </div>
                    
                        
                    </div>
             
	

                </div>

            </div>
        </div>

    <!-- End content -->


</body>
</html>