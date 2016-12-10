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

.ckPhone1{
   background-color: white;
   position: fixed;
   top : 300px;
   left: 450px;
   width: 200px;
   height: 200px;   
}

.ckPhone2{
   background-color: orange;
   position: fixed;
   top : 300px;
   left: 700px;
   width: 200px;
   height: 200px;   
}

.ckbox .ckboxContent .btn_allremove{
   background-color: green;
   position: absolute;
   width: 50px;
   height: 50px;
   top: 1px;
   right: 1px;
}

.ckbox .button{
   right: 10px;
}
</style>
<script type="text/javascript">   
	var chkcnt=0;
	var chkMaxcnt=2;
	var no;
	
   $(document).ready(function() {
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
      $('.btn_allremove').click(function(){
    		$("input:checkbox[name='box']").prop("checked",false);
    		$(".ckboxContent1").children('div').first().remove();
    		$(".ckboxContent1").children('div').last().remove();
    		chkcnt=0;
    		$('.ckb').removeAttr("disabled");
    		$('.ckbox').hide();
      });
   });
   
   var checkBox = function(list_no){
	   no = list_no;
	   var len = document.getElementsByName('box').length;
	   var value = $('input:checkbox[id="'+no+'"]').val();
	   
	   chkcnt=chkcnt+1;
	   if(chkcnt==3){
			for(var i=0; i<len; i++){
				document.getElementsByName('box')[i].disabled=false;
			}
			chkfalse(no);
			chkcnt=1;
			return;
		}else if($("input:checkbox[name='box']").is(":checked") == true ){
		    $('.ckbox').show();
			$('.ckboxContent').show();
			$('.btn_click').click(function(){
				$('.ckboxContent').show();
			});
			$('.btn_close').click(function(){
				$('.ckboxContent').hide();	
			});
			
			$.ajax({
           			url:"/phonefo/phonechk1",
            		type:'POST',
            		data:{'no':no},
           			success:function(result){
           			for(var i=0; i<result.length; i++){              			
               			if(chkcnt==1){
               				checkPhone =
               					"<div class='ckPhone"+(i+1)+"' value='"+result[i].no+"'>"+
                       			"<img src="+result[i].image+" width='10px' height='10px'>"+
                       			"<p>"+result[i].name+"</p>"+
                       			"<p>"+result[i].manufacture+"</p>"+
                       			"</div>";
               			}else if(chkcnt==2){
               				checkPhone =
                      			"<div class='ckPhone"+(i+2)+"' value='"+result[i].no+"'>"+
                       			"<img src="+result[i].image+" width='10px' height='10px'>"+
                       			"<p>"+result[i].name+"</p>"+
                       			"<p>"+result[i].manufacture+"</p>"+
                       			"</div>";
            			}
               			$('.ckboxContent1').append(checkPhone);
            		}
           			}
	       	});
			if(chkcnt == chkMaxcnt){
					alert('비교하기는 최대 2개까지만 가능합니다.');
					for(var i=0; i<len; i++){
						if(document.getElementsByName('box')[i].checked == false){
							document.getElementsByName('box')[i].disabled=true;
						}
					}
				chkcnt = chkMaxcnt;
			}
			return;
	   }else{
		   chkcnt = chkcnt-1;
	 	   chkfalse(no);
			if(chkcnt<=chkMaxcnt-1){
				for(var i=0; i<len; i++){
					if(document.getElementsByName('box')[i].disabled ==true){
						document.getElementsByName('box')[i].disabled=false;
					}
				}
			}
		   if($(".ckb[name='box']:checked").length==0 ){
				$('.ckbox').hide();
			}
			return;
	   }
   }
   
   function chkfalse(no){
		var parents = $(".ckboxContent1").children('div').attr('value');
		var first = $(".ckboxContent1").children('div').first().attr('value');
		var first_len = $(".ckboxContent1").children('div').first();
		var last = $(".ckboxContent1").children('div').last().attr('value');
		var last_len = $(".ckboxContent1").children('div').last();
		if(parents.length==2){
			if(no==first){
				if(first_len.length != 0){
					$(".ckboxContent1").children('div').first().remove();
					last_len.attr('class','ckPhone1');
					return;
				}
				$(".ckboxContent1").children('div').first().remove();
			}else{
				$(".ckboxContent1").children('div').last().remove();
			}
		}
		return;
   }
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
                              	<table>
                              		<tr>
                              			<td>나와줘...</td>
                              		</tr>
                              	</table>
                                 <p>${list1.name }</p><br>
                              </a>
                                 <input type="checkbox" class="ckb" name='box' onclick="checkBox('${list1.no }')" value="${list1.no }">비교하기<br>
                                 ${list1.no }
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
      		<div class='ckboxContent1'>
      		
      		</div>
         <button class='btn_allremove'>모두 지우기</button>
      </div>
      <button class='btn_click'>보이기</button>
      <button class='btn_close'>숨기기</button>
   </div>
</body>
</html>