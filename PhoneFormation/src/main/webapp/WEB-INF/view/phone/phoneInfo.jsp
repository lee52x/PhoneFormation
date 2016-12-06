<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.nav-tabs {
	border-color: #eee;
}

.nav-tabs>li>a {
	font-weight: 600;
	width: 200px;
	text-align: center;
	color: #666;
	padding: 14px;
	border-radius: 3px 3px 0 0;
	-webkit-border-radius: 3px 3px 0 0;
	-moz-border-radius: 3px 3px 0 0;
	-o-border-radius: 3px 3px 0 0;
	border: 1px solid #eee;
	border-bottom: none;
	transition: all 0.2s ease-in-out;
	-moz-transition: all 0.2s ease-in-out;
	-webkit-transition: all 0.2s ease-in-out;
	-o-transition: all 0.2s ease-in-out;
}

.nav-tabs>li>a i {
	margin-right: 1px;
	padding-right: 5px;
}

.nav-tabs>li>a:hover, .nav-tabs>li>a:focus {
	color: #333;
	background-color: #fff;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus
	{
	border-color: #eee;
	border-bottom-color: #fff;
}
.tab-image{
	height: 500px;
	width: 300px;
}

.tab-image img{
	height: 400px;
	width: 200px;
}

.tab-content {
	border: 1px solid #eee;
	border-top: none;
	padding: 12px 16px;
	z-index: 10;
}

.tab-content p {
	margin-bottom: 15px;
}

.tab-content p:last-child {
	margin-bottom: 0;
}

.ckbox{
	background-color:yellow;
	width:600px;
	height:100px;
	position: fixed;
	left: 400px;
	top: 550px;
}

.ckbox .ckboxContent{
	background-color:blue;
	width: 600px;
	height: 300px;
	position: fixed;
	left: 400px;
	top : 250px;
}

.ckbox .ckboxContent .ckPhone1{
	background-color: white;
	position: fixed;
	top : 300px;
	left: 450px;
	width: 200px;
	height: 200px;	
}

.ckbox .ckboxContent .ckPhone2{
	background-color: orange;
	position: fixed;
	top : 300px;
	left: 700px;
	width: 200px;
	height: 200px;	
}

.ckbox .ckboxContent .btn_allremove{
	background-color: green;
	position: fixed;
	width: 50px;
	height: 50px;
	top: 500px;
	left: 600px;
}

.ckbox .button{
	right: 10px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		//alert('sdsd');
		$('.ckbox').hide();
		$('.ckboxContent').hide();
		
		$('#samsung').click(function(){
			$("#tab_samsung").attr('class','active');	
			$("#tab_lg").attr('class','');	
			$("#tab_apple").attr('class','');				
		});
		$('#lg').click(function(){
			$("#tab_samsung").attr('class','');	
			$("#tab_lg").attr('class','active');			  
			$("#tab_apple").attr('class','');	
		});
		$('#apple').click(function(){
			$("#tab_samsung").attr('class','');	
			$("#tab_lg").attr('class','');	
			$("#tab_apple").attr('class','active');				
		}); 
	});
	var chkcnt=0;
	var chkMaxcnt=2;
		 
	function chk(chkObj){
		var chk = chkObj.checked; //체크박스 선택 true/false;
		var name = chkObj.name; //체크박스 이름 "box"
		var len = document.getElementsByName(name).length; //체크박스 총갯수
		//var items = new Array();
			 
		if(chk){//체크박스 선택시 chkcnt 1증가
			chkcnt=chkcnt+1;
			//alert("첫번째 클릭 : "+chkcnt);
			
			$(".ckb:checked").each(function(){
				//items.push($(this).val());
				var item = $(this).val();
				//alert(item);
				$.ajax({
					url:"/phonefo/phonechk",
					type:'post',
					data:{name:$(this).val()},
					success:function(result){
						for(var i=0; i<result.length; i++){
							alert('result['+i+'].name'+result[i].name);
						}
						//alert(result[0].name);
						//$('.ckPhone1').html(result);
						//alert(result); result==배열 [{name:갤럭시},{}]
						//alert(result[0].name);
						/* var options = '<option>기기명 선택</option>';
						for (var i = 0; i < result.length; i++) {
							/// alert(result[i].name);
							options += '<option>' + result[i].name + '</option>';
						}
						$('#machine').html(options); */
					}
				});
			});
/* 			$.ajax({
				url:"/phonefo/phonechk",
				type:'post',
				data:{'itemArray':items},
				success:function(){
					alert('완료!');
					//$('.ckPhone1').html(result);
				}
			}); */
			
			$('.ckbox').show();
			$('.ckboxContent').show();
			$('.btn_click').click(function(){ //보이기 클릭시
				$('.ckboxContent').show(); //내용 보이기
			});
			$('.btn_close').click(function(){ //숨기기 클릭시
				$('.ckboxContent').hide(); //내용 숨김		
			});
			if(chkcnt >= chkMaxcnt){ //2개 초과 시 더 이상 선택 안되게끔 disable시킴
				alert('비교하기는 최대 2개까지만 가능합니다.');
				for(var i=0; i<len; i++){
					if(document.getElementsByName(name)[i].checked == false){
						document.getElementsByName(name)[i].disabled=true;
					}//if
				}//for
				chkcnt = chkMaxcnt;
			}
		}else { //체크박스 해제시 chkcnt 1감소
			chkcnt = chkcnt-1;
			//alert('취소 클릭 :'+chkcnt);
			if(chkcnt==chkMaxcnt-1){
				for(var i=0; i<len; i++){
					if(document.getElementsByName(name)[i].disabled ==true){
						document.getElementsByName(name)[i].disabled=false;
					}//if
				}//for
			}//if
			if(chkcnt==0){
				$('.ckbox').hide();
			}
		}//else
	} //function
	
	//var arr = $('input[name=box]:checked').serializeArray().map(function(item) { return item.value });
	//alert(arr);

	
</script>
</head>
	<div id="content">
		<div class="container">
			<div class="row sidebar-page">
				<div class="tabs-section">
					<ul class="nav nav-tabs" id="manufacture-tab">
						<li class="active" id="tab_samsung"><a href="#tab-4" data-toggle="tab" class="samsung">삼성전자</a></li>
						<li class="" id="tab_lg"><a href="#tab-5" data-toggle="tab" class='lg'>LG전자</a></li>
						<li class="" id="tab_apple"><a href="#tab-6" data-toggle="tab" class='apple'>애플</a></li>
					</ul>

					<!-- Tab Panels -->
					<div class="tab-content">
						<!-- Tab Content 1 -->
						<div class="tab-pane fade in active" id="tab-4">
							<table border="1" bordercolor="#dcdcdc" cellspacing="100" class='tbl'>
								<c:forEach items="${list1 }" var="list1" varStatus="status">
									<c:if test="${status.index%3==0}">                                  
										<tr>
									</c:if>
									<td>
									<center>
										<div class="tab-image">
										<a href="/phonefo/phoneInfo_spec?no=${list1.no}">
											<img src="${list1.image }">
											<p>${list1.name }</p><br>
										</a>
											<input type="checkbox" class="ckb" name='box' value='${list1.name }' onclick="chk(this)">비교하기<br>
										</div>
									</center>
									</td>
									<c:if test="${status.index%3==2}">
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
						
						<div class="tab-pane fade in active" id="tab-5">
								<table align="center">
								<c:forEach items="${list2 }" var="list2" varStatus="status">
									<c:if test="${status.index%3==0}">                                  
										<tr>
									</c:if>
									<td>
									<div class="tab-image">
									<a href="/phonefo/phoneInfo_spec?no=${list2.no}">
										<center>
											<img src="${list2.image }">
											<p>${list2.name }</p>
										</center>
									</a>
									</div>
									</td>
									<c:if test="${status.index%3==2}">
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
						
						<div class="tab-pane fade in active" id="tab-6">
						 <table align="center">
								<c:forEach items="${list3 }" var="list3" varStatus="status">
									<c:if test="${status.index%3==0}">                                  
										<tr>
									</c:if>
									<td>
									<div class="tab-image">
									<a href="/phonefo/phoneInfo_spec?no=${list3.no}">
										<center>
											<img src="${list3.image }">
											<p>${list3.name }</p>
										</center>
									</a>
									</div>
									</td>
									<c:if test="${status.index%3==2}">
										</tr>
									</c:if>
								</c:forEach>
							</table> 
						
						</div>
					</div>                           
				</div>
			</div>
		</div>
	</div>
	<div class='ckbox'>
		비교하기
		<div class='ckboxContent'>
		내용이 나올 것이다!!
			<div class="ckPhone1">핸드폰1</div>
			<div class="ckPhone2">핸드폰2</div>
			<button class='btn_allremove'>모두 지우기</button>
		</div>
		<button class='btn_click'>보이기</button>
		<button class='btn_close'>숨기기</button>
	</div>
</body>
</html>