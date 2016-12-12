<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#admin_add{
	padding-left: 88%;
}


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
    height: 600px;
    width: 300px;
    padding-top: 10%;
    padding-bottom: 10%;
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
.phone_tbl{
	width: 100%;
}

.phone_tbl tr{
	width: 30%;
}

.phone_tbl td{
	padding-left: 3.5%;
	padding-right: 3.5%;
}

.phone_content_tbl{
	width: 100%;
	text-align: center;
	
}

#ckbox{
    background-color: seashell;
    width: 450px;
    bottom: 0px;
    height: 40px;
    position: fixed;
    left: 400px;
    border: 1px solid gray;
}

.ckboxContent1 img{
	height: 75%;
	margin-left: 13%;
    margin-top: 10%;
}

.ckboxContent1 p{
	font-style: italic;
	margin: 0;
}


#ckboxContent{
    background-color: white;
    width: 450px;
    height: 60%;
    position: fixed;
    left: 400px;
    bottom: 39px;
    border: 1px solid gray;
}

#ckPhone1{
    position: fixed;
    bottom: 92px;
    width: 200px;
    height: 50%;
    margin: auto;
    text-align: center;
    left: 417px;
    border: 1px solid gainsboro;
}

#ckPhone1del{
    background-color: white;
    border: 0px;
    float: right;
    color: gainsboro;
}

#ckPhone2{
    position: fixed;
    bottom: 92px;
    width: 200px;
    height: 50%;
    margin: auto;
    text-align: center;
    left: 635px;
    border: 1px solid gainsboro;
}

#ckPhone2del{
    background-color: white;
    border: 0px;
    float: right;
    color: gainsboro;
}

#btn_allremove{
    background-color: gainsboro;
    position: fixed;
    width: 100px;
    height: 30px;
    bottom: 50px;
    left: 635px;
    border: 0px;
}

#btn_vs{
	background-color: gainsboro;
    position: fixed;
    width: 100px;
    height: 30px;
    bottom: 50px;
    left: 515px;
    border: 0px;
}

#vs_Abtn{
	background-color: rgb(255, 59, 59);
    position: fixed;
    width: 100px;
    height: 30px;
    bottom: 50px;
    left: 515px;
    border: 0px;
}

#btn_click{
	background: url("/resources/images/up.png") no-repeat;
	border: none;
    width: 40px;
    height: 30px;
    left: 806px;
    down: 5px;
    position: fixed;
    bottom: 6px;
}

#btn_close{
	background: url("/resources/images/down.png") no-repeat;
	border: none;
    width: 40px;
    height: 30px;
    left: 806px;
    down: 5px;
    position: fixed;
    bottom: 4px;
}

#ck_text{
    border: 0px;
    background: none;
    font-size: 15pt;
    bottom: 6px;
    left: 430px;
    width: 100px;
    position: fixed;
}

#vs_Atag{
	display: none;
}

</style>
<script type="text/javascript">   
	var chkcnt=0;
	var chkMaxcnt=2;
	var no;
	
   $(document).ready(function() {
      $('#ckbox').hide();
      $('#ckboxContent').hide();
      
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
      $('#btn_allremove').click(function(){
    		$("input:checkbox[name='box']").prop("checked",false);
    		$(".ckboxContent1").children('div').first().remove();
    		$(".ckboxContent1").children('div').last().remove();
    		chkcnt=0;
    		$('.ckb').removeAttr("disabled");
    		$('#ckbox').hide();
      });
      $('#btn_add').click(function(){
    	   	$(location).attr('href','/phonefo/adminAdd');
      });
      $('#vs_Abtn').click(function(){
    	 var first_no = $('.ckboxContent1').children('div').first().attr('value'); 
    	 var last_no = $('.ckboxContent1').children('div').first().attr('value');
      });
   });
   
   var checkBox = function(list_no){
	   no = list_no; 
	   var len = document.getElementsByName('box').length;
	   var value = $('input:checkbox[id="'+no+'"]').val();
	   
	   chkcnt=chkcnt+1; 
	   $('#vs_Atag').hide(); //A태그가 안보이고
		$('#btn_vs').show(); //걍 버튼이 보인다.
	   
	   if(chkcnt==3){ 
			for(var i=0; i<len; i++){
				document.getElementsByName('box')[i].disabled=false; 
			}
			chkfalse(no);
			return;
			
		}else if($("input:checkbox[name='box']").is(":checked") == true ){ //chkcnt =1 인상황  //2인상황
		    $('#ckbox').show();
			$('#ckboxContent').show();
			$('#btn_click').click(function(){
				$('#ckboxContent').show();
				$('#btn_close').show();
				$('#btn_click').hide();
			});
			$('#btn_close').click(function(){
				$('#ckboxContent').hide();	
				$('#btn_click').show();
				$('#btn_close').hide();
			});
			
			$.ajax({
           			url:"/phonefo/phonechk1",
            		type:'POST',
            		data:{'no':no},
           			success:function(result){
            			
               			if(chkcnt==1){ 
               				checkPhone =
               					"<div id='ckPhone1' value='"+result.no+"'>"+
               					"<input type='button' id='ckPhone1del' value='X' onclick='del("+result.no+")'>"+
                       			"<img src="+result.image+">"+
                       			"<p>"+result.name+"</p>"+
                       			"<p>"+result.manufacture+"</p>"+
                       			"</div>";
               			}else if(chkcnt==2){
               				checkPhone =
                      			"<div id='ckPhone2' value='"+result.no+"'>"+
                      			"<input type='button' id='ckPhone2del' value='X' onclick='del("+result.no+")'>"+
                       			"<img src="+result.image+">"+
                       			"<p>"+result.name+"</p>"+
                       			"<p>"+result.manufacture+"</p>"+
                       			"</div>";
            			}
               			$('.ckboxContent1').append(checkPhone); 
            		}

	       	});
			if(chkcnt == chkMaxcnt){ //chkcnt==2일때
				alert('비교하기는 최대 2개까지 비교 가능합니다.');
				$('#vs_Atag').show(); //빨간버튼
				$('#btn_vs').hide(); //걍 버튼 숨기고.
					for(var i=0; i<len; i++){
						if(document.getElementsByName('box')[i].checked == false){ 
							document.getElementsByName('box')[i].disabled=true; 
						}
					}
				return;
			}
	   }else{
	 	   chkfalse(no);
			if(chkcnt<=chkMaxcnt-1){
				for(var i=0; i<len; i++){
					if(document.getElementsByName('box')[i].disabled ==true){
						document.getElementsByName('box')[i].disabled=false;
					}
				}
				$('#vs_Atag').hide();
				$('#btn_vs').show();
			}
		   if($(".ckb[name='box']:checked").length==0 ){
			   $(".ckboxContent1").children('div').remove();
			   chkcnt=0;
			   $('#ckbox').hide();
			   return;
			}
	   }
	   return;   
   }
   
   function chkfalse(no){
	   var len = document.getElementsByName('box').length;
		var parents = $(".ckboxContent1").children('div').attr('value');
		var first = $(".ckboxContent1").children('div').first().attr('value');
		var first_len =$(".ckboxContent1").children('div').first();
		var last = $(".ckboxContent1").children('div').last().attr('value');
		var last_len = $(".ckboxContent1").children('div').last();
		
		if(parents.length==1){
			if(no==first){ 
				if(first_len.length != 0){
					$(".ckboxContent1").children('div').first().remove();
					last_len.attr('id','ckPhone1'); 
					for(var i=0; i<len; i++){
						document.getElementsByName('box')[i].disabled=false;
				     }
					chkcnt=1;
					return; 
				}
				$(".ckboxContent1").children('div').first().remove();
			}else{
				$(".ckboxContent1").children('div').last().remove(); 
				for(var i=0; i<len; i++){
					document.getElementsByName('box')[i].disabled=false;
			    }
				chkcnt=1;
				return;
			}
		}
		return;
   }
   
   var del = function(result_no){
	   var len = document.getElementsByName('box').length;
	    var parent = $(".ckboxContent1").children('div').attr('value');
	   var first = $(".ckboxContent1").children('div').attr('value');
	   var first_len = $(".ckboxContent1").children('div').first();
	   var last = $(".ckboxContent1").children('div').attr('value');
	   var last_len = $(".ckboxContent1").children('div').last();
	   if(parent.length==1){ 
			if(result_no==first){ 
				$('.ckboxContent1').children('div').first().remove();
				last_len.attr('id','ckPhone1');
				chkcnt=1;
				$("input:checkbox[name='box']").each(function(){
						  this.checked=false;
						  for(var i=0; i<len; i++){
									document.getElementsByName('box')[i].disabled=false;
							}
				   });
				$('#ckbox').hide();	
				$('#ckboxContent').hide();	
				chkcnt=1;
				return;
				
			}else if(result_no==last){
				$(".ckboxContent1").children('div').last().remove();
				$("input:checkbox[name='box']").each(function(){
						  this.checked=false;
						  for(var i=0; i<len; i++){
									document.getElementsByName('box')[i].disabled=false;
							}
				  });	
				
				chkcnt=1;
				return;
			}
	   }
	   if($(".ckb[name='box']:checked").length==0 ){
		   $(".ckboxContent1").children('div').remove();
		   chkcnt=0;
		   $('#ckbox').hide();
		   return;
		} 
   }
   
</script>

</head>
 <div id="content">
   <div id="admin_add">
   	<button id='btn_add'>추가</button>
   </div>
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
                     <table class='phone_tbl'>
                        <c:forEach items="${list1 }" var="list1" varStatus="status">
                           <c:if test="${status.index%3==0}">                                  
                              <tr>
                           </c:if>
                           <td>
                           <center>
                              <div class="tab-image">
                              <a href="/phonefo/phoneInfo_spec?no=${list1.no}">
                                 <img src="${list1.image }">
                              	<table class="phone_content_tbl">
                              		<tr>
                              			<td>${list1.name }</td>
                              		</tr>
                              	</table>
                              </a>
                                 <input type="checkbox" class="ckb" name='box' onclick="checkBox('${list1.no }')" value="${list1.no }">비교하기<br>
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
                        <table cellspacing="100" class='phone_tbl'>
                        <c:forEach items="${list2 }" var="list2" varStatus="status">
                           <c:if test="${status.index%3==0}">                                  
                              <tr>
                           </c:if>
                           <td>
                           <center>
                           <div class="tab-image">
                           <a href="/phonefo/phoneInfo_spec?no=${list2.no}">
                                 <img src="${list2.image }">
                                 <table class="phone_content_tbl">
                              		<tr>
                              			<td>${list2.name }</td>
                              		</tr>
                              	</table>
                           </a>
                           <input type="checkbox" class="ckb" name='box' onclick="checkBox('${list2.no }')" value="${list2.no }">비교하기<br>
                           </div>
                           </center>
                           </td>
                           <c:if test="${status.index%3==2}">
                              </tr>
                           </c:if>
                        </c:forEach>
                     </table>
                  </div>
                  
                  <div class="tab-pane fade in active" id="tab-6">
                   <table cellspacing="100" class='phone_tbl'>
                        <c:forEach items="${list3 }" var="list3" varStatus="status">
                           <c:if test="${status.index%3==0}">                                  
                              <tr>
                           </c:if>
                           <td>
                              <center>
                           <div class="tab-image">
                           <a href="/phonefo/phoneInfo_spec?no=${list3.no}">
                                 <img src="${list3.image }">
                                 <table class="phone_content_tbl">
                              		<tr>
                              			<td>${list3.name }</td>
                              		</tr>
                              	</table>
                              
                           </a>
                           <input type="checkbox" class="ckb" name='box' onclick="checkBox('${list3.no }')" value="${list3.no }">비교하기<br>
                           </div>
                           </center>
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
      <a href="#" class="back-to-top"><i class="fa fa-arrow-up"></i></a>
   </div>
   <div id='ckbox'>
      <div id='ckboxContent'>
      		<div class='ckboxContent1'>
      		
      		</div>
      <div class="portfolio-thumb" id="vs_Atag"> 
      	<a class="lightbox" title="This is an image title" href="images/portfolio/portfolio_2_8@2x.jpg">
           <div class="thumb-overlay"><input type='button' id="vs_Abtn" value='비교하기'></div>
     	 </a>
    	</div>
    	<input type='button' id="btn_vs" value='비교하기'>
        <input type='button' id='btn_allremove' value='모두지우기'>
      </div>
      <input type='text' value='비교하기' id='ck_text'>
      <input type='button' id='btn_click' style="display: none;">
      <input type='button' id='btn_close'>
   </div>  
</body>
</html>