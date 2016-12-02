<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*검색결과*/
.resultTop .infoBox{overflow:hidden}
.resultTop .infoBox .filtering{width:1000px;margin:0 auto;text-align:center}
.resultTop .infoBox .filtering li{display:inline-block;*display:inline;*zoom:1;padding-bottom:20px}
.resultTop .infoBox .filtering li a{display:block;padding:0 10px 0 15px;font-size:16px;line-height:20px}
.resultTop .infoBox .filtering li+li a{border-left:1px solid #e4e4e4}
.resultTop .infoBox .filtering li.on a{color:#ea002c;font-weight:bold}
.resultTop .infoBox .guide{text-align:right}
.resultTop .infoBox .guide span{padding-left: 22px;font-size:16px}
.resultTop .infoBox .guide span+span{margin-left:15px}

#monthly{color:#fb6400}
#stipulation{color:#00a49a}
/*table*/
.infoBox{position:relative;margin:0;padding-bottom:17px}/*테이블 상단*/
.infoBox .addInfo{position:absolute;bottom:17px;right:0}
.infoBox .titDep1,.infoBox .titDep2,.infoBox .titDep3,.infoBox .titDep4,.infoBox .titDep5,.infoBox .titDep6{padding:0}
.infoBox .title{padding-right:16px;font-size:20px;line-height:20px;color:#111;letter-spacing:-2px}
.infoBox .btnS{margin-left:6px}
.infoBox.pd0{padding-bottom:0}

.popCon .infoBox{padding-bottom:12px}
.popCon .infoBox .titDep1,.popCon .infoBox .titDep2,.popCon .infoBox .titDep3,.popCon .infoBox .titDep4,.popCon .infoBox .titDep5,.popCon .infoBox .titDep6{padding:0}
.popCon .infoBox .addInfo{bottom:12px}



.fareList>ul{border-bottom:1px solid #ccc}
.fareList>ul>li{padding:29px;*zoom:1;border:1px solid #fff;border-top:1px solid #ccc;vertical-align:top}
.fareList>ul>li+li{margin-top:-1px;border-top:1px solid #e4e4e4}
.fareList>ul>li:after{content:'';display:block;clear:both}
.fareList>ul>li .blank{display:inline-block !important;height:108px;margin-left:-5px;vertical-align:middle}
.fareList>ul>li .title{float:left;width:415px;min-height:108px}
.fareList>ul>li .title>div{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}
.fareList>ul>li .title strong{display:block;color:#333;font-weight:normal;font-size:28px;line-height:36px;letter-spacing:-1px}
.fareList>ul>li .title strong sup{font-size:16px;vertical-align:10px}
.fareList>ul>li .title span{display:block;color:#666;font-size:16px;line-height:22px;letter-spacing:-1px}
.fareList>ul>li .title .checkbox{width:410px}
.fareList>ul>li .title .checkbox label{min-height:40px;padding-left:70px;}
.fareList>ul>li .title .checkbox label span{margin-top:7px}
.fareList>ul>li .title .checkbox.checked label{background-position:-1180px 50%}
.fareList>ul>li .title .fareTit{width:340px;min-height:40px;padding-left:70px;}
.fareList>ul>li .title .fareTit span{margin-top:7px}
.fareList>ul>li .infoArea{float:right;width:701px;min-height:108px;text-align:right}
.fareList>ul>li .infoArea>*{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}
.fareList>ul>li .infoArea>*:after{content:'';display:block;clear:both}
.fareList>ul>li .infoArea .list1{height:auto}
.fareList>ul>li .infoArea .list2{margin-left:15px}
.fareList>ul>li .infoArea .list2 li{float:left;width:108px;height:71px;padding-top:37px;stext-align:center;font-size:15px;font-weight:bold;vertical-align:top}
.fareList>ul>li .infoArea .list2 li+li{margin-left:10px}
.fareList>ul>li .infoArea .list2 li strong{position:absolute;left:-9999px;font-size:0;line-height:0;text-indent:-9999px}
.fareList>ul>li .infoArea .list2 li span{display:block;font-size:14px}
.fareList>ul>li .infoArea .list2 li.monthly{background-position:0 0;color:#fb6400}
.fareList>ul>li .infoArea .list2 li.stipulation{background-position:0 -108px;color:#00a49a}
.fareList>ul>li .infoArea .list2 li.noData{background:none;text-indent:-9999px;font-size:0;line-height:0}
.fareList>ul>li .infoArea .list2 li span.free{font-weight:bold;font-size:18px;line-height:32px}
.fareList>ul>li .infoArea .list3{height:auto}
.fareList>ul>li .infoArea>.btnBox{width:100px;padding:0;margin-left:20px}
.fareList>ul>li .infoArea>.btnBox>a{float:left;width:100px;min-width:auto;padding:0}
.fareList>ul>li .infoArea>.btnBox>a~a{float:left;width:45px;margin:5px 0 0}
.fareList>ul>li .infoArea>.btnBox>a~a~a{float:right}
.fareList>ul>li .infoArea>.btnBox>a img{display:inline-block;margin-top:9px}
.fareList>ul>li.mbRouter .title{width:755px}
.fareList>ul>li.mbRouter .title .checkbox{width:750px}
.fareList>ul>li.mbRouter .title .fareTit{width:680px}
.fareList>ul>li.mbRouter .infoArea{width:320px}
.fareList>ul>li.mbRouter .infoArea .list1 li{width:50px}
.fareList .btnMore{margin-top:-1px}


infoArea .list1{overflow:hidden;height:120px}
.infoArea .list1 li{float:left;width:107px;text-align:center}
.infoArea .list1 li+li+li{background:none}
.infoArea .list1 li img{vertical-align:top}
.infoArea .list1 li strong{display:block;padding-top:7px;color:#333;font-size:16px;line-height:24px;letter-spacing:-2px;word-break:break-all}
.infoArea .list1 li:first-child strong{letter-spacing:-1px}
.infoArea .list1 li span{display:block;font-size:12px;line-height:14px}
.infoArea .list3{overflow:hidden;height:120px}
.infoArea .list3 li{float:left;min-width:60px;padding-right:10px;color:#333;text-align:center}
.infoArea .list3 li+li{margin-left:-10px;padding-left:20px;background:url(/poc/img/product/ico_cb_plus.gif) no-repeat 1px 7px}
.infoArea .list3 li strong{display:block;margin-top:10px;font-size:16px;line-height:22px;letter-spacing:-1px}
.infoArea .list3 li.cp4{padding-left:40px}
</style>
</head>
<body>
			<div class="resultTop" style="margin-top: -2%">
                  <div class="infoBox">
                     <ul class="filtering" style="text-align: left;margin-left: -1.2%">                                                         
                         <li><a href="/phonefo/mypageMain" title="내정보">내정보</a></li>
	 					 <li><a href="/phonefo/mypageUpdate" title="정보수정">정보수정</a></li>
       					<li><a href="/phonefo/mypageOno" title="1대1문의 내역">1대1문의내역</a></li>
       					<li><a href="/phonefo/mypageQuote" title="내가올린중고견적">중고견적내역</a></li>
       					 <li><a href="/phonefo/mypageOut" title="회원탈퇴">회원탈퇴</a></li>    
                                                
                     </ul>
     			   	<hr style="margin-top: -0.5%">
                  </div>
               </div>
</body>
</html>