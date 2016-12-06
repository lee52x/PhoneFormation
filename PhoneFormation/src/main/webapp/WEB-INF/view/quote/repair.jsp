<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>




<script type="text/javascript">
	$(document).ready(function() {
		var myArray =new Array();
		/*셀렉트박스*/
		$('#quote').hide(); //견적서 숨기기
		$('#information').hide();
		$('#repairRequest').hide();
		
		$('#userpwd').keyup(function(){
			$.ajax({
				url:"/phonefo/quotePwd",
				data:{userpwd:$('#userpwd').val()},
				success:function(result){
					$('#checkPwd').html(result);
				}
			});
		});

		var manufacture = $("select#manufacture");

		manufacture.change(function() {
			var select_name = $(this).children("option:selected").text();
			$(this).siblings("label").text(select_name);

		});
		var machine = $("select#machine");

		machine.change(function() {
			var select_name = $(this).children("option:selected").text();
			$(this).siblings("label").text(select_name);

		});
		var capacity = $("select#capacity");

		capacity.change(function() {
			var select_name = $(this).children("option:selected").text();
			$(this).siblings("label").text(select_name);

		});

		var purchaseYear = $("select#purchaseYear");

		purchaseYear.change(function() {
			var select_name = $(this).children("option:selected").text();
			$(this).siblings("label").text(select_name);

		});
		var purchaseMonth = $("select#purchaseMonth");

		purchaseMonth.change(function() {
			var select_name = $(this).children("option:selected").text();
			$(this).siblings("label").text(select_name);

		});

		$('#manufacture').change(function() {


			$.ajax({
				url : "/phonefo/machine",
				data : {
					manufacture : $('#manufacture').val()
				},
				success : function(result) {
					//alert(result); result==배열 [{name:갤럭시},{}]
					//alert(result[0].name);
					var options = '<option>기기명 선택</option>';
					for (var i = 0; i < result.length; i++) {
						/// alert(result[i].name);
						options += '<option>' + result[i].name + '</option>';
					}
					$('#machine').html(options);
				}
			});

		});

		$('#machine').change(function() {

			$.ajax({
				url : "/phonefo/capacity",
				data : {
					machine : $('#machine').val()
				},
				success : function(result) {
					var options = '<option>용량선택</option>';
					for (var i = 0; i < result.length; i++) {
						//alert(result[i].capacity);
						options += '<option>' + result[i].capacity + '</option>';

					}
					$('#capacity').html(options);
					

				}
			});

		});
		
		
		$('#calculator').click(function(){
			//$('#glass').prop('checked')

			$('#quote').show();
			$('#information').show();
			$('#repairRequest').show();
			$.ajax({
				url:"/phonefo/repairPrice",
				data:{machine:$('#machine').val()},
				success:function(result){
					
					
					//alert(result.glass);
					var repairPrice=0;
	
					if($('#glass').prop('checked')){
						repairPrice += result.glass;
						myArray.push('액정파손');
					
					} if($('#backcover').prop('checked')){
						repairPrice += result.backcover;
						myArray.push('뒤커버파손');
					
					} if($('#crome').prop('checked')){
						repairPrice += result.crome;
						myArray.push('크롬 및 외관손상');
					
					} if($('#pan').prop('checked')){
						repairPrice += result.pan;
						myArray.push('펜소실');
					
					} if($('#scratch').prop('checked')){
						repairPrice += result.scratch;
						myArray.push('액정잔기스');
						
					} if($('#powerbutton').prop('checked')){
						repairPrice += result.powerbutton;
						myArray.push('전원버튼');
					
					} if($('#homebutton').prop('checked')){
						repairPrice += result.homebutton;
						myArray.push('홈버튼');
				
					} if($('#sound').prop('checked')){
						repairPrice += result.sound;
						myArray.push('소리 및 진동불량');
					
					} if($('#camera').prop('checked')){
						repairPrice += result.camera;
						myArray.push('카메라불량');
					
					} if($('#wifi').prop('checked')){
						repairPrice += result.wifi;
						myArray.push('WIFI불량');
					
					} if($('#charge').prop('checked')){
						repairPrice += result.charge;
						myArray.push('충전불량');
					
					} if($('#battery').prop('checked')){
						repairPrice += result.battery;
						myArray.push('배터리 불량');
						
					} if($('#sensor').prop('checked')){
						repairPrice += result.sensor;
						myArray.push('근접센서불량');
					
					} if($('#afterimage').prop('checked')){
						repairPrice += result.afterimage;
						myArray.push('잔상불량');
			
					} if($('#lcd').prop('checked')){
						repairPrice += result.lcd;
						myArray.push('LCD불량');
						
					}
					for(var i=0;i<myArray.length;i++){
						if(i==0){
							var str=myArray[i];
						}else{
							var str=str+','+myArray[i];
						}
					}
					$('#machineState').val(str);					
					$('#quote_price').val(repairPrice);
					
					
				}
				
			});

			
		
		});
		
	
		$('#repairRequest').click(function(){
			var result = confirm('핸드폰:'+$('#machine').val()+'   수리예상가격:'+$('#quote_price').val()+'입니다.판매신청 하시겠습니까?');
			if(result==true)
				document.frm.submit();
		});




	});
	function check() {
		
		
		
		
	}

	function sellPhone() {
		var f = document.frm;
		f.submit();



	}
</script>
<style type="text/css">
.tit_1{margin-top:30px; border-bottom:1px solid #eee; height:30px;}
.tit_1 .page_name{display:block; background:url(/img/ico_nowpage.gif) no-repeat 0 2px; padding-left:20px; margin-bottom:10px; height:20px; text-align:left;}
.tit_1 .page_name span{display:inline-block; background:url(http://www.hunphone.co.kr//img/aw_nowpage.gif) no-repeat right 3px; height:20px; vertical-align:middle; padding-right:15px; margin-right:5px; font-size:16px; color:#e54c47;}
.tit_1 .page_name span a{display:block; font-size:16px; color:#e54c47;}
.write_form{width:100%;}
.write_form th, td{padding:0; height:30px; line-height:30px; background:url('http://www.hunphone.co.kr//img/dotted.gif') repeat-x bottom;}
.write_form .last{border-bottom:1px solid #e5e5e5; background:none;}
.write_form th{width:190px; text-align:left;}
.write_form th span{display:inline-block; background:url(http://www.hunphone.co.kr//img/aw_none.png) no-repeat 20px 50%; padding-left:30px; font-size:14px; color:#e54c47;}
.write_form td label{margin-left:5px; margin-right:15px;}

.write_form2{width:100%; background:none;}
.write_form2 th, td{position:relative; padding:0; height:20px; line-height:20px; background:url('http://www.hunphone.co.kr//img/dotted.gif') repeat-x bottom;}
.write_form2 .last{border-bottom:1px solid #e5e5e5; background:none;}
.write_form2 th{width:150px; text-align:left; }
.write_form2 th span{display:inline-block; background:url(http://www.hunphone.co.kr//img/aw_none.png) no-repeat 20px 50%; padding-left:30px; font-size:12px; color:#e54c47;}
.write_form2 td label{margin-left:5px; margin-right:15px; border:1px solid #000;}
.write_form2 th, td input[type=text]{height:20px;}
.write_form2 td.price{font-weight:bold;}
.write_form2 td.price input[type=text]{width:150px; position:absolute; left:155px; top:7px;}
.write_form2 td.price .won{position:absolute; left:330px; }
.deliveryopt {display:none}
#tbl_deli {border-collapse: collapse;border-spacing: 0px;border:1px solid #000}
#tbl_deli td, #tbl_deli th {line-height:16px;border-collapse: collapse;border-spacing: 0px;border:1px solid #000}
.btn_counsel {
	background: #FF7B05;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #F0582A;
	cursor: pointer;
	color: #fff;
	font-size: 23px;
	padding: 20px;
	font-weight: 700;
	width: 50%;
}

.btn_counsel:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#8B8B8B),
		to(#8B8B8B));
	background-image: -webkit-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -moz-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -ms-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -o-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: linear-gradient(to bottom, #8B8B8B, #8B8B8B);
	border: 1px solid #777777;
	color: #fff;
}

[class*="entypo-"] {
	font-family: "entypo", sans-serif;
	text-decoration: none;
}

/* 로딩바&스피너 **************************************************************************/
.fade {
	transition: all 300ms linear 700ms;
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	-ms-transform: translate3d(0, 0, 0);
	-o-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
	opacity: 1;
}

.fade.out {
	opacity: 0;
}

#nprogress {
	pointer-events: none;
}

#nprogress .bar {
	background: #F0582A;
	position: fixed;
	z-index: 1000;
	top: 0;
	left: 0;
	width: 100%;
	height: 2px;
}
/* 블러 이펙트 */
#nprogress .peg {
	display: block;
	position: absolute;
	right: 0px;
	width: 100px;
	height: 100%;
	box-shadow: 0 0 10px #F0582A, 0 0 5px #F0582A;
	opacity: 1.0;
	-webkit-transform: rotate(3deg) translate(0px, -4px);
	-ms-transform: rotate(3deg) translate(0px, -4px);
	transform: rotate(3deg) translate(0px, -4px);
}

#nprogress .spinner {
	display: block;
	position: fixed;
	z-index: 1000;
	top: 15px;
	right: 15px;
}

#nprogress .spinner-icon {
	width: 18px;
	height: 18px;
	box-sizing: border-box;
	border: solid 2px transparent;
	border-top-color: #F0582A;
	border-left-color: #F0582A;
	border-radius: 50%;
	-webkit-animation: nprogress-spinner 400ms linear infinite;
	animation: nprogress-spinner 400ms linear infinite;
}

.nprogress-custom-parent {
	overflow: hidden;
	position: relative;
}

.nprogress-custom-parent #nprogress .spinner, .nprogress-custom-parent #nprogress .bar
	{
	position: absolute;
}

@
-webkit-keyframes nprogress-spinner { 0% {
	-webkit-transform: rotate(0deg);
}

100%
{
-webkit-transform






:



 



rotate






(360
deg




);
}
}
@
keyframes nprogress-spinner { 0% {
	transform: rotate(0deg);
}

100%
{
transform






:



 



rotate






(360
deg




);
}
}

/* 상단 메뉴 **************************************************************************/
.top_banner {
	float: left;
	position: relative;
	width: 100%;
	height: 115px;
	background:
		url(http://phonesada.co.kr/service/img/main/top_banner_bg.png) center;
}

.top_banner_box {
	position: relative;
	width: 100%;
	height: 0px;
}

.top_banner_img {
	position: absolute;
	width: 100%;
	text-align: center;
}

.top_banner_close {
	position: absolute;
	width: 100%;
	top: -115px;
}

.top_banner ul {
	width: 100%;
}

.top_banner ul li:first-child {
	float: left;
	position: relative;
	width: 50%;
	background: #FBE300;
	height: 115px;
}

.top_banner ul li {
	float: left;
	position: relative;
	width: 50%;
	background: #FF7B05;
	height: 115px;
}

.btn_top_banner_close {
	position: relative;
	width: 1200px;
	margin: 0 auto;
}

.btn_top_banner_close .test {
	position: absolute;
	right: 30px;
	top: 30px;
}

.logo_wrap {
	float: left;
	position: relative;
	width: 100%;
	background: url(http://phonesada.co.kr/service/img/main/top_logo_bg.png);
	border-bottom: 1px solid #000;
	padding: 20px;
}

.logo_box {
	position: relative;
	width: 1200px;
	margin: 0 auto;
}

.logo {
	text-align: center;
}

.logo_left_menu {
	position: absolute;
	top: 15px;
	left: 20px;
}

.logo_left_right_menu_01 {
	position: absolute;
	top: 15px;
	right: 20px;
}

.logo_left_right_menu_02 {
	position: absolute;
	top: 15px;
	right: 220px;
}

.top_menu_wrap {
	float: left;
	position: relative;
	width: 100%;
	background: url(http://phonesada.co.kr/service/img/main/menu_bg.png);
	border-top: 1px solid #555555;
}

.menu_wrap {
	position: relative;
	width: 1200px;
	margin: 0 auto;
}

.menu_wrap .menu {
	float: left;
	position: relative;
	width: 800px;
}

.menu_wrap .menu li {
	float: left;
	display: inline-block;
	padding: 20px 0;
	color: #fff;
	font-size: 19px;
	font-weight: 600;
	width: 160px;
	text-align: center;
	cursor: pointer;
}

.menu_wrap .menu_etc {
	float: left;
	position: relative;
	width: 400px;
}

.menu_wrap .menu_etc li {
	float: right;
	display: inline-block;
	padding: 20px 0;
	color: #fff;
	font-size: 19px;
	font-weight: 600;
	width: 160px;
	text-align: center;
}

/*.menu_any_box_default						{ width:70%; position: absolute; right:175px; -webkit-transition:all 0.45s ease-in-out; -moz-transition:all 0.45s ease-in-out; -o-transition:all 0.45s ease-in-out; -ms-transition:all 0.45s ease-in-out; transition:all 0.45s; }
.menu_any_box								{ width:70%; position: absolute; right:0; -webkit-transition:all 0.45s ease-in-out; -moz-transition:all 0.45s ease-in-out; -o-transition:all 0.45s ease-in-out; -ms-transition:all 0.45s ease-in-out; transition:all 0.45s; }*/

/* 컨텐츠 *****************************************************************************/
.container {
	width: 100%;
	overflow: hidden;
}

.visual_wrap {
	float: left;
	position: relative;
	width: 100%;
	background: url(http://phonesada.co.kr/service/img/main/v_bg.png);
	height: 383px;
}

.visual_box {
	width: 1200px;
	margin: 0 auto;
	text-align: center;
}

.visual_box	img {
	padding-top: 47px;
}

.content_wrap {
	float: left;
	position: relative;
	width: 100%;
	padding: 140px 0 0 0;
}

.content_box {
	position: relative;
	width: 1200px;
	margin: 0 auto;
}

.step_box {
	text-align: center;
}

.step_box li {
	padding-top: 50px;
}

.local_map {
	width: 1160px;
	height: 400px;
	margin: 0 auto;
	border: 3px solid #FF7B05;
	border-radius: 5px 5px 0 0;
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
}

.service_center {
	position: relative;
	top: 0;
	left: 0;
	z-index: 100;
}

.service_center ul {
	position: absolute;
	top: 200px;
	left: -220px;
	z-index: 100;
}

.service_center ul li {
	padding-bottom: 10px;
}

.fade_view {
	display: none;
	width: 100%;
	overflow: hidden;
}

/* 버튼 스타일 */
.button_type_01 {
	display: block;
	margin: 0 auto;
	border: none;
	background: none;
	color: #fff;
	vertical-align: middle;
	position: relative;
	z-index: 1;
	border: 1px solid;
	border-radius: 5px;
	margin-top: 20px;
}

.button_type_02 {
	display: block;
	margin: 20px 0;
	border: none;
	background: none;
	color: inherit;
	vertical-align: middle;
	position: relative;
	z-index: 1;
	border: 1px solid;
	border-radius: 5px;
	-webkit-backface-visibility: hidden;
	-moz-osx-font-smoothing: grayscale;
}

.button {
	float: left;
	display: block;
	margin: 20px 0;
	border: none;
	background: none;
	color: inherit;
	vertical-align: middle;
	position: relative;
	z-index: 1;
	border: 1px solid;
	border-radius: 5px;
	-webkit-backface-visibility: hidden;
	-moz-osx-font-smoothing: grayscale;
}

.button--winona {
	overflow: hidden;
	padding: 0;
	-webkit-transition: border-color 0.3s, background-color 0.3s;
	transition: border-color 0.3s, background-color 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.button--winona::after {
	content: attr(data-text);
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	opacity: 0;
	color: ##000;
	font-weight: 700;
	letter-spacing: -1px;
	-webkit-transform: translate3d(0, 25%, 0);
	transform: translate3d(0, 25%, 0);
}

.button--winona>span {
	display: block;
	font-weight: 700;
	letter-spacing: -1px;
}

.button--winona::after, .button--winona>span {
	padding: 15px 30px;
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
	transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);
}

.button--winona:hover {
	border-color: #000;
	background-color: rgba(0, 0, 0, 0.1);
}

.button--winona:hover::after {
	opacity: 1;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.button--winona:hover>span {
	opacity: 0;
	-webkit-transform: translate3d(0, -25%, 0);
	transform: translate3d(0, -25%, 0);
}

.qna {
	margin-left: 10px;
}

.contact_wrap {
	float: left;
	position: relative;
	width: 100%;
}

.contact_wrap .contact_box {
	width: 1200px;
	margin: 0 auto;
}

.contact_wrap .contact_box .main_title {
	text-align: center;
	background: url(http://phonesada.co.kr/service/img/main/title_line.png)
		center;
	margin-top: 80px;
}

.main_title span {
	background: #fff;
	font-size: 35px;
	padding: 20px;
	font-weight: 600;
}

.main_title_ment {
	font-size: 18px;
	color: #9DA3A9;
	padding-top: 20px;
	text-align: center;
}

/* 하단 사업자 */
.copyright {
	float: left;
	position: relative;
	width: 100%;
	padding: 30px 0;
	background: #373737;
	color: #CECECE;
	font-size: 13px;
	margin-top: 50px;
}

.copyright ul {
	width: 1200px;
	margin: 0 auto;
}

.copyright ul li:first-child {
	float: left;
	position: relative;
	width: 340px;
	text-align: center;
}

.copyright ul li {
	float: left;
	position: relative;
	width: 860px;
}

.scrollup {
	position: fixed;
	bottom: 8px;
	right: 8px;
	width: 40px;
	background: url( http://phonesada.co.kr/service/img/main/icon_top.png )
		no-repeat center top;
	padding: 8px 13px;
	height: 40px;
	background-color: rgba(0, 0, 0, 0.5);
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	display: none;
	-webkit-transition: all 0.45s ease-in-out;
	-moz-transition: all 0.45s ease-in-out;
	-o-transition: all 0.45s ease-in-out;
	-ms-transition: all 0.45s ease-in-out;
	transition: all 0.45s ease-in-out;
	cursor: pointer;
}

.scrollup:hover {
	background-color: rgba(240, 88, 42, 1);
	background-position: center -40px;
}

.btn_counsel {
	background: #FF7B05;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	border: 1px solid #F0582A;
	cursor: pointer;
	color: #fff;
	font-size: 23px;
	padding: 20px;
	font-weight: 700;
	width: 50%;
}

.btn_counsel:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#8B8B8B),
		to(#8B8B8B));
	background-image: -webkit-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -moz-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -ms-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: -o-linear-gradient(top, #8B8B8B, #8B8B8B);
	background-image: linear-gradient(to bottom, #8B8B8B, #8B8B8B);
	border: 1px solid #777777;
	color: #fff;
}

.btn_address {
	position: relative;
	height: 38px;
	background: #676D74;
	padding: 0 10px;
	color: #fff;
	border: 0px;
}

/******셀렉트 박스 *******/
td div {
	margin: 0 auto;
	width: 0px;
}

div#select_box {
	float: left;
	position: relative;
	width: 250px;
	height: 38px;
	background:
		url(http://phonesada.co.kr/service/img/main/select_arrow.png) #F8F8F8
		230px center no-repeat;
	border: 1px solid #E3E3E3;
}

div#select_box label {
	position: absolute;
	color: #666666;
	top: 7px;
	left: 12px;
	letter-spacing: 1px;
}

div#select_box select#color {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

div#select_box select#manufacture {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

div#select_box select#machine {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

div#select_box select#capacity {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

div#select_box select#purchaseYear {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

div#select_box select#purchaseMonth {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

label.label_text {
	color: #727272;
	padding: 0 5px;
}

div#select_box_01 {
	float: left;
	position: relative;
	width: 150px;
	height: 38px;
	background:
		url(http://phonesada.co.kr/service/img/main/select_arrow.png) #F8F8F8
		130px center no-repeat;
	border: 1px solid #E3E3E3;
}

div#select_box_01 label {
	position: absolute;
	color: #666666;
	top: 7px;
	left: 12px;
	letter-spacing: 1px;
}

div#select_box_01 select#color {
	width: 100%;
	height: 30px;
	min-height: 30px;
	line-height: 30px;
	padding: 0 10px;
	opacity: 0;
	filter: alpha(opacity = 0);
}

input {
	position: relative;
	height: 38px;
	border: 1px solid #E3E3E3;
	background: #F8F8F8;
	padding: 0 10px;
}

textarea {
	position: relative;
	height: 100px;
	border: 1px solid #E3E3E3;
	background: #F8F8F8;
	padding: 10px;
}
/* 테이블 css */
table {
	text-align: left;
	margin-bottom: 20px;
}

.t_b_title {
	background: #FF7B05;
	color: #fff;
	font-weight: 600;
	font-size: 18px;
	text-align: center;
}

.t_b_title_01 {
	background: #676D74;
	color: #fff;
	font-weight: 600;
	font-size: 18px;
	text-align: center;
}

.t_s_title {
	background: #F3F3F3;
	color: #000;
	font-weight: 600;
	font-size: 15px;
}

/*라디오버튼*/
input[type=radio].css-checkbox {
	position: absolute;
	z-index: -1000;
	left: -1000px; overflow;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	margin: -1px;
	padding: 0;
	border: 0;
}

input[type=radio].css-checkbox+label.radio-label {
	padding-left: 50px;
	height: 38px;
	display: inline-block;
	line-height: 36px;
	background-repeat: no-repeat;
	background-position: 0 0;
	vertical-align: middle;
	cursor: pointer;
}

label.radio-label1 {
	padding-left: 50px;
	height: 38px;
	display: inline-block;
	line-height: 36px;
	background-repeat: no-repeat;
	background-position: 0 0;
	vertical-align: middle;
	cursor: pointer;
}

input[type=radio].css-checkbox:checked+label.radio-label {
	background-position: 0 -38px;
}

label.radio-label {
	background-image:
		url(http://phonesada.co.kr/service/img/main/icon_radio.png);
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/*체크박스*/
input[type=checkbox].css-checkbox {
	position: absolute;
	z-index: -1000;
	left: -1000px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	height: 1px;
	width: 1px;
	margin: -1px;
	padding: 0;
	border: 0;
}

input[type=checkbox].css-checkbox+label.checkbox-label {
	padding-left: 50px;
	height: 38px;
	display: inline-block;
	line-height: 38px;
	background-repeat: no-repeat;
	background-position: 0 0;
	vertical-align: middle;
	cursor: pointer;
}

input[type=checkbox].css-checkbox:checked+label.checkbox-label {
	background-position: 0 -38px;
}

label.checkbox-label {
	background-image:
		url(http://phonesada.co.kr/service/img/main/icon_checkbox.png);
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

/** 주소검색 박스 ***/
#mask {
	display: none;
	background: #000;
	position: fixed;
	left: 0;
	top: 0;
	z-index: 10;
	width: 100%;
	height: 100%;
	opacity: 0.9;
	z-index: 999;
}

.popup {
	display: none;
	background: #fff;
	width: 500px;
	padding: 5px;
	border: 1px solid #000;
	float: left;
	font-size: 12px;
	position: fixed;
	top: 50%;
	left: 50%;
	z-index: 99999;
	box-shadow: 0px 0px 20px #000;
	-moz-box-shadow: 0px 0px 20px #000; /* Firefox */
	-webkit-box-shadow: 0px 0px 20px #000; /* Safari, Chrome */
	border-radius: 3px 3px 3px 3px;
	-moz-border-radius: 3px; /* Firefox */
	-webkit-border-radius: 3px; /* Safari, Chrome */
}

.pop_title {
	font-size: 17px;
	font-weight: 700;
	color: #FF7B05;
	padding: 10px;
	border-bottom: 1px solid #E3E3E3;
}

.btn_pop_close {
	position: absolute;
	margin: -27px 0 0 450px;
}

.pop_contact {
	width: 100%;
	padding: 15px 10px;
}

.pop_contact li {
	text-align: center;
}

.pop_contact span {
	font-size: 13px;
	font-weight: 600;
}

.add_input_box {
	padding: 20px 0;
	border-bottom: 1px solid #E3E3E3;
}

.pop_add_list {
	width: 100%;
	height: 180px;
	overflow-y: scroll;
	overflow-x: hidden;
	padding: 0 20px;
	margin-bottom: 20px;
}

.pop_add_list li {
	border-bottom: 1px solid #E3E3E3;
	padding: 10px 0;
}
.container2{
	padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;

}
</style>
</head>

<body>
	<form name="frm" action="/phonefo/insertRepair" method="post">
	<input type="hidden" id="machineState" name="machineState" value="">
		<div class="page-banner">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h2>수리견적</h2>
						<p>예상 수리비용</p>
					</div>
					<div class="col-md-6">
						<ul class="breadcrumbs">
							<li><a href="#">홈</a></li>
							<li>수리견적</li>
						</ul>
					</div>
				</div>
			</div>
		</div>


		<div class="big-title text-center">
			<h1>수리견적</h1>
			<p class="title-desc">아래의 내용에 따라 기입해 주시기 바랍니다.</p>
			<hr>
		</div>
		<div align="center">
			<img alt="" src="/resources/images/quote/tel..JPG">
		</div>
		<br> <br>
		<!-- 폼 양식 시작 -->


		<table width="1160px" border="0" cellspacing="1" cellpadding="10"
			bgcolor="#DADBDB" align="center">
			<tr>
				<td width="310px" height="60px" class="t_b_title">매각 선택</td>
				<td bgcolor="#FFFFFF"><input type="radio" name="radid_01"
					id="radio1" class="css-checkbox" value="방문" checked="checked" />
					<label for="radio1" class="radio-label">방문</label>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="radio" value="택배"
					name="radid_01" id="radio2" class="css-checkbox" /> <label
					for="radio2" class="radio-label">택배</label></td>
			</tr>
		</table>

		<table width="1160px" border="0" cellspacing="1" cellpadding="10"
			bgcolor="#DADBDB" align="center">
			<tr>
				<td width="150" rowspan="7" valign="middle" class="t_b_title">휴대폰<br />정보
					입력
				</td>
				<td width="160" height="60" class="t_s_title">제조사</td>
				<td bgcolor="#FFFFFF">
					<div id="select_box">
						<label for="color" id="selec">제조사 선택</label> <select
							id="manufacture" name="manufacture">
							<option value="">제조사 선택</option>
							<option value="삼성전자">삼성</option>
							<option value="LG전자">LG</option>
							<option value="애플">애플</option>
						</select>
					</div> &nbsp&nbsp&nbsp
				</td>
			</tr>
			<tr>
				<td height="60" class="t_s_title">기기명</td>
				<td bgcolor="#FFFFFF">
					<div id="select_box">
						<label for="color">기기명 선택</label> <select id="machine"
							name="machine">
						</select>
					</div> &nbsp&nbsp&nbsp
					</td>
			</tr>
			<tr>

				<td height="60" class="t_s_title">핸드폰 상태</td>
				<td>

					<ul style="float: left;" id="chk">
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="glass" value="glass"  style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">액정파손 </label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="backcover" value="backcover" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">뒤커버파손 </label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="crome" value="crome" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">크롬 및 외관손상 </label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="pan" value="pan" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">펜소실</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="scratch" value="scratch" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">액정잔기스</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="powerbutton" value="powerbutton" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">전원버튼</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="homebutton" value="homebutton" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">홈버튼</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="sound" value="sound" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">소리 및 진동 불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="camera" value="camera" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">카메라불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="wifi" value="wifi" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">WIFI불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="charge" value="charge" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">충전불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="battery" value="battery" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">배터리소실불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="sensor" value="sensor" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">근접센서불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="afterimage" value="afterimage" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">잔상불량</label></li>
						<li style="display: inline-block; width: 150px"><input type="checkbox" id="lcd" value="lcd" style="display: inline-block;vertical-align: middle; margin: 10px;"><label style="vertical-align: middle;">LCD</label></li>
					</ul>

					
				</td>
			</tr>


		</table>
		<table width="1160px" border="0" align="center" cellpadding="10"
			cellspacing="1">
			<br>
			<tr>
				<td height="60" align="center"><button type="button"
						class="btn_counsel" id="calculator" onclick="check()">견적보기</button></td>
			</tr>

			<tr>
				<td><br>
				<br>
					<div style="margin-top: 5px; width: 80%; background: #eee"
						align="center" id="quote">
						<table>
					<tr>
						<td width="100" style="text-align: right">견적가격</td>
						<td><input type="text" id="quote_price" name="quote_price"
							value="" readonly style="text-align: center;" />원</td>
					</tr>


						</table>
						<font color="red">※견적금액은 예상금액이며 실제 거래 금액과 차이가 있을 수 있습니다.</font> <br>
						<br>
					</div></td>

			</tr>
		</table>

		<br>
		<br>
		<br>
	
	    
	
	
<div class="container" style="width: 1170px;" id="information">
	<div class="tit_1">
	<div class="page_name">
		<span style="background:none; padding:0;" class="glyphicon glyphicon-certificate">고객정보입력</span>
	</div>
</div>
<table class="write_form" cellspacing="0" cellpadding="0">
	<tr>
		<th><span><h4>이름</h4></span></th>
		<td>
			<input type=text id="id_name" style="height: 30px;" name=username1 size=20  maxlength=15 value="${vo.username}" onkeyup="$('#user_add7').val(this.value);" onblur="$('#user_add7').val(this.value);" disabled="disabled">
		</td>
	</tr>
	<tr>
		<th class="last"><span><h4>비밀번호</h4></span></td>
		<td class="last">
							<input type=password id="userpwd" name=userpwd maxlength=20 style="height: 30px;">
								<div id="checkPwd"></div>					
			
		</td>
		
	</tr>
	<tr>
		<th><span><h4>휴대폰번호</h4></span></td>
		<td><input type=text id="tel" name="tel" disabled  style="height: 30px;" value="${vo.tel}"></td>
				<input type="hidden" name="tel" value="${vo.tel}">
	</tr>
	<tr>
		<th><span><h4>주소</h4></span></td>
		<td><input type=text id="address" style="height: 30px;" name=address ></td>
	</tr>
	`
	
	<tr>
		<th class="last"><span><h4>기타 요청사항</h4></span></td>
		<td class="last" style="line-height:42px; padding:5px 0;">
			<textarea name='request_message' style="width:90%; height:80px;"></textarea>
		</td>
	</tr>
	<tr>
		<th><span><h4>입금받을 계좌번호</h4></span></td>
		<td style="line-height:42px; padding:5px 0;">
			<span style="margin-right:20px;">은행명</span>
								<select name=bank_name>
					<option value="">선택해주세요</option>
					<option value="농협" >농협</option>
					<option value="국민" >국민</option>
					<option value="우리" >우리</option>
					<option value="신한" >신한</option>
					<option value="하나" >하나</option>
					<option value="기업" >기업</option>
					<option value="씨티" >씨티</option>
					<option value="외환" >외환</option>
					<option value="새마을" >새마을</option>
					<option value="우체국" >우체국</option>
					<option value="신협" >신협</option>
					<option value="수협" >수협</option>
					<option value="산업" >산업</option>
					<option value="부산" >부산</option>
					<option value="제일" >제일</option>
					<option value="대구" >대구</option>
					<option value="광주" >광주</option>
					<option value="경남" >경남</option>
					<option value="전북" >전북</option>
					<option value="제주" >제주</option>
				</select>
			<span style="margin:0 17px;">예금주</span>
			<input type=text id="username" name="username" value="${vo.username }" readonly="readonly">
			<br>
			<span style="margin-right:9px;">계좌번호</span>			
			<input type=text name=account_number style="width:297px;" value="" onkeydown="this.value=this.value.replace(/[^0-9]/g,'')" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onblur="this.value=this.value.replace(/[^0-9]/g,'')"> (숫자만 입력해주세요.)
		</td>
	</tr>
			

</table>
	</div>
</form>
	<center>
	<button type="button"
						class="btn_counsel" id="repairRequest" style="width: 580px;" onclick="check()">수리요청하기</button></td>
	</center>
	

</body>
</html>