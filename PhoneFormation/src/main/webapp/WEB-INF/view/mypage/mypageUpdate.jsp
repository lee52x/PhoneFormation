<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
$(function(){
	$('#tel1').val('${object.tel1}');	
});

var pwdStatus=0;
var pwd2Status=0;
var tel2Status=0;
var tel3Status=0;
$(document).ready(function(){

	$("#pageback").click(function(){//돌아가기
		
		location.href="/phonefo/mypageMain";
		
	});
	$('#userpwd').keyup(function() {
		$.ajax({
			url : "/phonefo/checkPwd",
			data : {
				userpwd : $('#userpwd').val()
			},
			success : function(result) {
				$('#checkPwd').html(result);
				if(result.indexOf('비밀번호')==-1)//가입불가
					pwdStatus=-1;
				else
					pwdStatus=1;
	
			}
		});
	});

	$('#userpwd2').keyup(
					function() {
						var userpwd = $('#userpwd').val();
						var userpwd2 = $('#userpwd2').val();

						if (userpwd != userpwd2){
							$('#checkPwd2')
									.html(
											'<font color="red">비밀번호가 일치하지 않습니다.</font>');
							pwd2Status=-1;
						}else{
							$('#checkPwd2')
									.html(
											'<font color="blue">비밀번호가 일치합니다.</font>');
							pwd2Status=1;
						}
					});
	
	$('#tel2').keyup(function(){
		var reg=/^[0-9]{3,4}$/;
		if(!reg.test($('#tel2').val())){
			$('#telCheck').html('<font color="red">번호 형식이 올바르지 않습니다. </font>');
			tel2Status=-1;
		}else{
			$('#telCheck').html('');
			tel2Status=1;
		}
	});
	$('#tel3').keyup(function(){
		var reg=/^[0-9]{4}$/;
		if(!reg.test($('#tel3').val())){
			$('#telCheck').html('<font color="red">번호 형식이 올바르지 않습니다.</font>');
			tel3Status=-1;
		}else{
			$('#telCheck').html('');
			tel3Status=1;
		}
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
                                    <label for="userpwd">비밀번호<span class="required">*</span></label>
                                    <input id="userpwd" name="userpwd" type="password" maxlength="20"  />
                                </div>
                                </div>
                                  <div id="checkPwd"></div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="userpwd2">비밀번호 확인<span class="required">*</span></label>
                                    <input id="userpwd2" name="userpwd2" type="password"  maxlength="20"  />
                                </div>
                                </div>
                                 <div id="checkPwd2"></div>
                            <div class="row">
                                <div class="col-md-2" class="column">
                                    <label for="tel2">휴대폰번호<span class="required"></span></label>
                                    <select id="tel1" name="tel1">                                  
                                    <option>010</option>                                 
                                    <option>011</option>                                 
                                    <option>016</option>                                 
                                    <option>017</option>                                 
                                    <option>018</option>                                 
                                    <option>019</option>                                 
                                    </select>
                                    <input id="tel2" name="tel2" type="text"  maxlength="4" value="${object.tel2 }" />
                                    <input id="tel3" name="tel3" type="text" maxlength="4" value="${object.tel3 }" />
                                    <div id="telCheck"></div>
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