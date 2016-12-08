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
/* $(function(){
      $('.ckb').click(function(){
         alert("value"+$(this).val());
      });
}); */
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
	var no;
	var no2;
   
   var checkBox = function(list_no){
	   no = list_no;
	   var len = document.getElementsByName('box').length; //체크박스 총갯수
	   var value = $('input:checkbox[id="'+no+'"]').val();
	   
	   if($("input:checkbox[name='box']").is(":checked") == true ){
		    chkcnt=chkcnt+1;
		    
		    $('.ckbox').show();
			$('.ckboxContent').show();
			$('.btn_click').click(function(){ //보이기 클릭시
				$('.ckboxContent').show(); //내용 보이기
			});
			$('.btn_close').click(function(){ //숨기기 클릭시
				$('.ckboxContent').hide(); //내용 숨김		
			});
			
			$.ajax({
           			url:"/phonefo/phonechk1",
            		type:'POST',
            		data:{'no':no},
           			success:function(result){
           			for(var i=0; i<result.length; i++){              			
               			if(chkcnt==1){ //chkcnt가 1이면 ckPhone0 div에 뿌려줌
               				checkPhone =
               					"<div class='ckPhone"+(i+1)+"' value='"+result[i].no+"'>"+
                       			"<img src="+result[i].image+" width='10px' height='10px'>"+
                       			"<p>"+result[i].name+"</p>"+
                       			"<p>"+result[i].manufacture+"</p>"+
                       			"</div>";
               			}else if(chkcnt==2){//chkcnt가 2이면 ckPhone1 div에 뿌려줌
               				checkPhone =
                      			"<div class='ckPhone"+(i+2)+"' value='"+result[i].no+"'>"+
                       			"<img src="+result[i].image+" width='10px' height='10px'>"+
                       			"<p>"+result[i].name+"</p>"+
                       			"<p>"+result[i].manufacture+"</p>"+
                       			"</div>";
            			}else{
            				chkfalse(no);
            			}
               			$('.ckboxContent').append(checkPhone);
            		}
           			}
	       	});
			if(chkcnt==3){ //두번째꺼 다클릭하고 한개 해제하려고할때 cnt값이 3으로 된다.
				for(var i=0; i<len; i++){
					document.getElementsByName('box')[i].disabled=false;
				}
				chkcnt = chkMaxcnt-1;
				chkfalse(no);
			}
			if(chkcnt == chkMaxcnt){
					alert('비교하기는 최대 2개까지만 가능합니다.');
					for(var i=0; i<len; i++){
						if(document.getElementsByName('box')[i].checked == false){
							document.getElementsByName('box')[i].disabled=true;
						}
					}//for
				chkcnt = chkMaxcnt;
			}
	   }else{
		   chkcnt = chkcnt-1;
	 	   chkfalse(no);
	 	   
			if(chkcnt<=chkMaxcnt-1){
				for(var i=0; i<len; i++){
					if(document.getElementsByName('box')[i].disabled ==true){
						document.getElementsByName('box')[i].disabled=false;
					}//if
				}//for
			}//if
		   if($(".ckb[name='box']:checked").length==0 ){
				$('.ckbox').hide();
			}
	   }
   }
   
   function chkfalse(no){
	   //var div_id = document.getElementById(no.getAttribute('id'));
		//alert(div_id);
		//var test = $(".ckboxContent").children('div').getElementById(no).text();
		//var test = $(".ckboxContent").children('div').text();
		var parents = $(".ckboxContent").children('div').attr('value');
		var first = $(".ckboxContent").children('div').first().attr('value');
		var last = $(".ckboxContent").children('div').last().attr('value');
		//alert(test.length);
		//alert(test);
		/* if(no == test){
			$(this).remove();
		} */
		//alert(parents.length);
		alert('1 )first : '+first +' / last : '+last);
		if(parents.length==2){
			alert('2)no : '+no+' / first : '+first+' / last : '+last);
			if(no==first){
				alert('첫번째꺼삭제');
				$(".ckboxContent").children('div').first().remove();
				//$(".ckboxContent").children('div').last().remove();
			}else if(no==last){//no==last
				alert('두번째꺼 삭제');
				//$(".ckboxContent").children('div').first().remove();
				//$(".ckboxContent").children('div').last().remove(); 
			}
		}
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
         <button class='btn_allremove'>모두 지우기</button>
      </div>
      <button class='btn_click'>보이기</button>
      <button class='btn_close'>숨기기</button>
   </div>
</body>
</html>