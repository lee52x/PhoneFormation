<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#phoneimage_add{
	height: 30px;
    width: 73px;
    line-height: 22px;
    display: inline-block;
    zoom: 1;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 2px;
    background-color: #fff;
    margin-left: 4px;
    border: 1px solid #ccc;
    position: absolute;
    left: 7.6%;
    top: 170px;
}

.spec_div{
	width: 60%;
	padding-left: 10%;
	padding-bottom: 5%;
}

.spec_div h3{
	width: 800px;
}

.spec_div table {
	width: 800px;
	line-height: 2;
}
.spec_div table tr{
	padding-bottom: 3%;
	   border-top: 1px solid #bcbcbc;
    border-bottom: 1px solid #bcbcbc;
}
.spec_div table tr th{
	width: 30%;
}

.img {
	width: 80%;
	height: 80%;
}

.spec_mod{
	display: none;
}



</style>
<script type="text/javascript">
function capadel(capa_len){
	alert(capa_len);
	$('#capadiv'+capa_len).remove();
}
function imagedel(image_len){
	alert(image_len);
	$('#div_image'+image_len).empty();
}
function readURL(input,no) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          $('#color_image'+no).attr('src', e.target.result);
         }                   
        reader.readAsDataURL(input.files[0]);
    }
$(document).ready(function(){
		var capa_len = document.getElementsByName('release_price').length;
		var image_len = document.getElementsByName('release_price').length;
		$('#capaadd').click(function(){	//가격,용량 추가
			alert('여깄니?');
			var str = 
				"<tr id='capadiv"+capa_len+"'>"
				+"<th>가격 (용량)</th><td><input type='text' name='release_price'> (<input type='text' name='capacity'>) <input type='button' class='del_price' onclick='capadel("+capa_len+")' value='삭제'></td>"
				+"</tr>";
			$('#basic_info').append(str);
			capa_len = capa_len+1;
		});

		$('#btn_update').click(function(){
    	   	$('#phoneimage_add').attr('style','display:block;');
    	   	$("input:button[name='btnimg']").attr('style', 'display:block;');
    	   	$("input:text[name='color']").attr('style', 'display:block;');
    	   	$(".p_color").attr('style','display:none;');
    	   	$('.spec_show').attr('style','display:none;');
    	   	$('.spec_mod').attr('style','display:block;');
    	   	$('#btn_update').attr('style','display:none;');
    	   	$('#btn_ok').attr('style','display:block;');
      });
		
		$('#btn_ok').click(function(){
			var formObj = $("form[role='specform']");
			$('.spec_mod').attr('style','display:none;');
			$('.spec_show').attr('style','display:block;');
			formObj.submit();
		});
	});
</script>
</head>
<body>

  <form role='specform' method="post" action='adminUpdate'>
    <!-- Start Latest Projects Carousel -->
    <input type='button' id='phoneimage_add' value='사진 추가' style='display: none;'>
	<center>
		<h1 class="clasic-title"><span>${spec_Info.name }</span></h1>
			<div class="projects-carousel touch-carousel"> <!-- 4개씩 보이기 -->
				<c:forEach items="${list_color }" var="list_color" varStatus="status">
					<div class="portfolio-item item" id="div_image${status.index }">
						<div class="portfolio-border">
							<div class="portfolio-thumb">
								<a class="lightbox" title="${list_color.color }" data-lightbox-type="ajax"
									href="${list_color.image }">
									<div class="thumb-overlay"> <i class="fa fa-arrows-alt"></i></div>
									<img class="img" id="color_image${status.index}" src="${list_color.image }">
								</a>
							</div>
							<div class="portfolio-details">
									<p class="p_color" >${list_color.color}</p>
									<input type='text' name="color" value='${list_color.color}' style='display:none;'>
									<input type='button' name='btnimg' id='imgmod${status.index }' value='수정' style='display:none;'>
									<label for="imgInp${status.index }">
									<input type="file" id="imgInp${status.index }" name="file" accept=".gif, .jpg, .png" style="display: none"
										value="${status.index}"></label>
									<input type='button' name='btnimg' id='imgdel${status.index }' value='삭제' onclick="imagedel(${status.index})" style='display:none;'>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
	</center>
	
	<hr width="84%">
		
	<div class="container">
		<div class="spec_div">
		<h3>기본정보</h3>
			<table id="basic_info">
				<tr>
					<th>핸드폰 기종</th><td class='spec_show'>${spec_Info.name }</td>
							<td class='spec_mod'><input type="text" name='name' value='${spec_Info.name }'></td>
				</tr>
					<tr>
						<th><div class='spec_mod'>핸드폰 대표 사진</div></th>
						<td><div class='spec_mod'>
						<input type='file' id='listimage' name='file' accept='.gif, .jpg, .png' style='display:none'
						onchange="javascript: document.getElementById('listimage_path').value = this.value">
						<input type='text' id='listimage_path' style='width:500px;' value="${image}"readonly="readonly">&nbsp;&nbsp;<label for='listimage'>이미지 첨부</label></div></td>
					</tr>
					<tr>
						<th>제조사</th><td  class='spec_show'>${spec_Info.manufacture }</td>
								<td  class='spec_mod'><select name='manufacture'>
			 						<option>samsung</option>
									<option>lg</option>
			 						<option>apple</option>
		   		  					</select></td>
					</tr>
							<tr>
								<th>출고일</th><td  class='spec_show'>${spec_Info.release_date }</td>
											<td  class='spec_mod'><input type='text' name='release_date' value='${spec_Info.release_date }'></td>
							</tr>
					<c:forEach items="${list_capacity }" var="list_capacity" varStatus="status">
							<tr id="capadiv${status.index}">
								<th>가격 (용량)</th>
								<td class='spec_show'> ${list_capacity.release_price } (${list_capacity.capacity })</td>
								<td class='spec_mod'>
									<input type="text" name='release_price' value='${list_capacity.release_price }'>
								 	(<input type="text" name='capacity' value='${list_capacity.capacity }'>)
									<c:if test="${status.index==0}"> 
										<input type="button" id="capaadd" value="추가">
									</c:if>
									<c:if test="${status.index!=0}">
										<input type="button" class="del_price" value="삭제" onclick="capadel(${status.index})">
									</c:if>
									</td>
							</tr>
					</c:forEach>
			</table>
		</div>
			
		<div class="spec_div">
			<h3>프로세서</h3>
			<table>
				<c:if test="${!empty spec_processor.cpu_Speed}">
					<tr>
						<th>CPU 속도</th><td class='spec_show'>${spec_processor.cpu_Speed }</td>
										<td class='spec_mod'><input type="text" name='cpu_Speed' value='${spec_processor.cpu_Speed }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_processor.cpu_type}">
					<tr>
						<th>CPU 종류</th><td class='spec_show'>${spec_processor.cpu_type }</td>
										<td class='spec_mod'><input type="text" name='cpu_type' value='${spec_processor.cpu_type }'></td>
					</tr>
				</c:if>
			</table>
		</div>
		
		<div class="spec_div">
			<h3>디스플레이</h3>
			<table>	
				<c:if test="${!empty spec_display.size_main}">
					<tr>
						<th>크기(Main)</th><td class='spec_show'> ${spec_display.size_main }</td>
											<td class='spec_mod'><input type='text' name='size_main' value='${spec_display.size_main }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_display.resoluation_main}">
					<tr>
						<th>해상도(Main)</th><td class='spec_show'>${spec_display.resoluation_main }</td>
											<td class='spec_mod'><input type='text' name='resoluation_main' value='${spec_display.resoluation_main }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_display.type_main}">
					<tr>
						<th>종류(Main)</th><td class='spec_show'>${spec_display.type_main }</td>
											<td class='spec_mod'><input type='text' name='type_main' value='${spec_display.type_main }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_display.color_depth_main}">
					<tr>
						<th>색심도(Main)</th><td class='spec_show'>${spec_display.color_depth_main }</td>
											<td class='spec_mod'><input type='text' name='color_depth_main' value='${spec_display.color_depth_main }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_display.s_pen}">
					<tr>
						<th>S펜 지원</th><td class='spec_show'>${spec_display.s_pen }</td>
										<td class='spec_mod'><select name='s_pen'>
																<option>예</option>
																<option>아니오</option>
		   													</select></td>
					</tr>
				</c:if>
			</table>
		</div>
		
		<div class="spec_div">
			<h3>카메라</h3>
			<table>
				<c:if test="${!empty spec_camera.video_resoluation}">
					<tr>
						<th>동영상 녹화 해상도</th><td class='spec_show'>${spec_camera.video_resoluation }</td>
												<td class='spec_mod'><input type='text' name='video_resoluation' value='${spec_camera.video_resoluation }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.maincamera_pixel}">
					<tr>
						<th>메인 카메라 - 화소</th><td class='spec_show'>${spec_camera.maincamera_pixel }</td>
												<td class='spec_mod'><input type='text' name='maincamera_pixel' value='${spec_camera.maincamera_pixel }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.maincamera_aperture}">
					<tr>
						<th>메인 카메라 - 조리개 값</th><td class='spec_show'>${spec_camera.maincamera_aperture }</td>
													<td class='spec_mod'><input type='text' name='maincamera_aperture' value='${spec_camera.maincamera_aperture }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.frontcamera_pixel}">
					<tr>
						<th>전면 카메라 - 화소</th><td class='spec_show'>${spec_camera.frontcamera_pixel }</td>
												<td class='spec_mod'><input type='text' name='frontcamera_pixel' value='${spec_camera.frontcamera_pixel }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.frontcamera_aperture}">
					<tr>
						<th>전면 카메라 - 조리개 값</th><td class='spec_show'>${spec_camera.frontcamera_aperture }</td>
													<td class='spec_mod'><input type='text' name='frontcamera_aperture' value='${spec_camera.frontcamera_aperture }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.maincamera_flash}">
					<tr>
						<th>메인 카메라 - 플래쉬</th><td class='spec_show'>${spec_camera.maincamera_flash }</td>
												<td class='spec_mod'><select name='maincamera_flash'>
													<option>예</option>
													<option>아니오</option>
		   			 								</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.maincamera_autofocus}">
					<tr>
						<th>메인 카메라 - 오토 포커스</th><td class='spec_show'>${spec_camera.maincamera_autofocus }</td>
													<td class='spec_mod'><select name='maincamera_autofocus'>
														<option>예</option>
														<option>아니오</option>
		   				 								</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_camera.camera_detail}">
					<tr>
						<th>카메라 자세 사항</th><td class='spec_show'>${spec_camera.camera_detail }</td>
											<td class='spec_mod'><textarea rows="4" cols="20" name='camera_detail'>${spec_camera.camera_detail }</textarea></td>
					</tr>
				</c:if>
			</table>
		</div>
		
		<div class="spec_div">
			<h3>메모리</h3>
			<table>
				<c:if test="${!empty spec_memory.ramsize}">
					<tr>
						<th>Ram Size(GB)</th><td class='spec_show'>${spec_memory.ramsize }</td>
											<td class='spec_mod'><input type='text' name='ramsize' value='${spec_memory.ramsize }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_memory.romsize}">
					<tr>
						<th>ROM Size(GB)</th><td class='spec_show'>${spec_memory.romsize }</td>
											<td class='spec_mod'><input type='text' name='romsize' value='${spec_memory.romsize }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_memory.usable_memory}">
					<tr>
						<th>사용할 수 있는 메모리</th><td class='spec_show'>${spec_memory.usable_memory }</td>
												<td class='spec_mod'><input type='text' name='usable_memory' value='${spec_memory.usable_memory }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_memory.outer_memory}">
					<tr>
						<th>외장 메모리 지원</th><td class='spec_show'>${spec_memory.outer_memory }</td>
											<td class='spec_mod'><input type='text' name='outer_memory' value='${spec_memory.outer_memory }'></td>
					</tr>
				</c:if>
			</table>
		</div>

		<div class="spec_div">
			<h3>네트워크</h3>
			<table>
				<c:if test="${!empty spec_network.type_of_sim_slot}">
					<tr>
						<th>Type of SIM Slot</th><td class='spec_show'>${spec_network.type_of_sim_slot }</td>
												<td class='spec_mod'><input type='text' name='type_of_sim_slot' value='${spec_network.type_of_sim_slot }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_network.gsm_2g}">
					<tr>
						<th>2G GSM</th><td class='spec_show'>${spec_network.gsm_2g }</td>
										<td class='spec_mod'><input type='text' name='gsm_2g' value='${spec_network.gsm_2g }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_network.umts_3g}">
					<tr>
						<th>3G UMTS</th><td class='spec_show'>${spec_network.umts_3g }</td>
										<td class='spec_mod'><input type='text' name='umts_3g' value='${spec_network.umts_3g }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_network.td_scdma_3g}">
					<tr>
						<th>3G TD-SCDMA</th><td class='spec_show'>${spec_network.td_scdma_3g }</td>
											<td class='spec_mod'><input type='text' name='td_scdma_3g' value='${spec_network.td_scdma_3g }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_network.fdd_lte_4g}">
					<tr>
						<th>4G FDD LTE</th><td class='spec_show'>${spec_network.fdd_lte_4g }</td>
											<td class='spec_mod'><input type='text' name='fdd_lte_4g' value='${spec_network.fdd_lte_4g }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_network.tdd_lte_4g}">
					<tr>
						<th>4G TDD LTE</th><td class='spec_show'>${spec_network.tdd_lte_4g }</td>
											<td class='spec_mod'><input type='text' name='tdd_lte_4g' value='${spec_network.tdd_lte_4g }'></td>
					</tr>
				</c:if>
			</table>
		</div>

		<div class="spec_div">
			<h3>연결</h3>
			<table>
				<c:if test="${!empty spec_connect.ant }">
					<tr>
						<th>ANT+</th><td class='spec_show'>${spec_connect.ant }</td>
										<td class='spec_mod'><select name='ant'>
										<option>예</option>
										<option>아니오</option>
		    						</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.usb_version }">
					<tr>
						<th>USB 버전</th><td class='spec_show'>${spec_connect.usb_version }</td>
										<td class='spec_mod'><input type='text' name='usb_version' value='${spec_connect.usb_version }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.location }">
					<tr>
						<th>위치 기술</th><td class='spec_show'>${spec_connect.location }</td>
										<td class='spec_mod'><input type='text' name='location' value='${spec_connect.location }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.ear_adapter }">
					<tr>
						<th>이어잭</th><td class='spec_show'>${spec_connect.ear_adapter }</td>
										<td class='spec_mod'><input type='text' name='ear_adapter' value='${spec_connect.ear_adapter }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.mhl }">
					<tr>
						<th>MHL</th><td class='spec_show'>${spec_connect.mhl }</td>
									<td class='spec_mod'><select name='mhl'>
										<option>예</option>
										<option>아니오</option>
		   							</select></td>
					</tr>
				</c:if>
				<c:if test=">${!empty spec_connect.wifi_direct }">
					<tr>
						<th>Wi-Fi Direct</th><td class='spec_show'>${spec_connect.wifi_direct }</td>
											<td class='spec_mod'><input type='text' name='wifi_direct' value='${spec_connect.wifi_direct }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.wifi }">
					<tr>
						<th>Wi-Fi</th><td class='spec_show'>${spec_connect.wifi }</td>
										<td class='spec_mod'><select name='wifi'>
										<option>예</option>
										<option>아니오</option>
		    						  </select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.bluetooth_version }">
					<tr>
						<th>블루투스 버전</th><td class='spec_show'>${spec_connect.bluetooth_version }</td>
											<td class='spec_mod'><input type='text' name='bluetooth_version' value='${spec_connect.bluetooth_version }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.nfc }">
					<tr>
						<th>NFC</th><td class='spec_show'>${spec_connect.nfc }</td>
									<td class='spec_mod'><select name='nfc'>
										<option>예</option>
										<option>아니오</option>
		    						</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.bluetooth_profile }">
					<tr>
						<th>블루투스 프로파일</th><td class='spec_show'>${spec_connect.bluetooth_profile }</td>
												<td class='spec_mod'><input type='text' name='bluetooth_profile' value='${spec_connect.bluetooth_profile }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_connect.pcsynk }">
					<tr>
						<th>PC싱크</th><td class='spec_show'>${spec_connect.pcsynk }</td>
										<td class='spec_mod'><input type='text' name='pcsynk' value='${spec_connect.pcsynk }'></td>
					</tr>
				</c:if>
			</table>
		</div>

		<div class="spec_div">
			<h3>운영체제, 기본사양, 센서, 외관사양</h3>
			<table>
				<c:if test="${!empty spec_specifications.os }">
					<tr>
						<th>운영체제</th><td class='spec_show'>${spec_specifications.os }</td>
										<td class='spec_mod'><input type='text' name='os' value='${spec_specifications.os }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_specifications.color }">
					<tr>
						<th>색상</th><td class='spec_show'>${spec_specifications.color }</td>
										<td class='spec_mod'><input type='text' name='color' value='${spec_specifications.color }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_specifications.form }">
					<tr>
						<th>형태</th><td class='spec_show'>${spec_specifications.form }</td>
										<td class='spec_show'><input type='text' name='form' value='${spec_specifications.form }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_specifications.phone_size }">
					<tr>
						<th>크기(세로X가로X두께, mm)</th><td class='spec_show'>${spec_specifications.phone_size }</td>
													<td class='spec_mod'><input type='text' name='phone_size' value='${spec_specifications.phone_size }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_specifications.weight }">
					<tr>
						<th>무게(g)</th><td class='spec_show'>${spec_specifications.weight }</td>
										<td class='spec_mod'><input type='text' name='weight' value='${spec_specifications.weight }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_specifications.sensor }">
					<tr>
						<th>센서</th><td class='spec_show'>${spec_specifications.sensor }</td>
										<td class='spec_mod'><textarea rows="2" cols="20" name='sensor'>${spec_specifications.sensor }</textarea></td>
					</tr>
				</c:if>
			</table>
		</div>

		<div class="spec_div">
			<h3>배터리</h3>
			<table>
				<c:if test="${!empty spec_battery.internet_use_3g }">
					<tr>
						<th>인터넷 사용 시간(3G)(Hours)</th><td class='spec_show'>${spec_battery.internet_use_3g }</td>
														<td class='spec_mod'><input type='text' name='internet_use_3g' value='${spec_battery.internet_use_3g }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.internet_use_lte }">
					<tr>
						<th>인터넷 사용 시간(LTE)(Hours)</th><td class='spec_show'>${spec_battery.internet_use_lte }</td>
														<td class='spec_mod'><input type='text' name='internet_use_lte' value='${spec_battery.internet_use_lte }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.internet_use_wifi }">
					<tr>
						<th>인터넷 사용시간(Wi-Fi)(Hours)</th><td class='spec_show'>${spec_battery.internet_use_wifi }</td>
															<td class='spec_mod'><input type='text' name='internet_use_wifi' value='${spec_battery.internet_use_wifi }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.video_play }">
					<tr>
						<th>비디오 재생 시간(Hours)</th><td class='spec_show'>${spec_battery.video_play }</td>
													<td class='spec_mod'><input type='text' name='video_play' value='${spec_battery.video_play }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.battery_capacity }">
					<tr>
						<th>표준 배터리 용량(mAh)</th><td class='spec_show'>${spec_battery.battery_capacity }</td>
													<td class='spec_mod'><input type='text' name='battery_capacity'${spec_battery.battery_capacity }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.change_possible }">
					<tr>
						<th>교체 가능</th><td class='spec_show'>${spec_battery.change_possible }</td>
										<td class='spec_mod'><select name='change_possible'>
													<option>예</option>
													<option>아니오</option>
		    										</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.audio_play }">
					<tr>
						<th>오디오 재생 시간(Hours)</th><td class='spec_show'>${spec_battery.audio_play }</td>
													<td class='spec_mod'><select name='change_possible'>
													<option>예</option>
													<option>아니오</option>
		    										</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.audio_play_ondisplay }">
					<tr>
						<th>오디오 재생 시간(Hours, Always OnDisplay Off)</th><td class='spec_show'>${spec_battery.audio_play_ondisplay }</td>
																			<td class='spec_mod'><input type='text' name='audio_play_ondisplay' value='${spec_battery.audio_play_ondisplay }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_battery.continuous_call }">
					<tr>
						<th>연속 통화시간(3G WCDMA)(Hours)</th><td class='spec_show'> ${spec_battery.continuous_call }</td>
															<td class='spec_mod'><input type='text' name='continuous_call' value='${spec_battery.continuous_call }'></td>
					</tr>
				</c:if>
			</table>
		</div>

		<div class="spec_div">
			<h3>오디오/비디오</h3>
			<table>
				<c:if test="${!empty spec_audio.video_format }">
					<tr>
						<th>동영상 지원 포맷</th><td class='spec_show'>${spec_audio.video_format }</td>
											<td class='spec_mod'><textarea rows="5" cols="40" name='video_format'>${spec_audio.video_format }</textarea></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_audio.video_resoluation }">
					<tr>
						<th>동영상 지원 해상도</th><td class='spec_show'> ${spec_audio.video_resoluation }</td>
												<td class='spec_mod'><textarea rows="5" cols="40" name='video_resoluation'> ${spec_audio.video_resoluation }</textarea></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_audio.audio_format }">
					<tr>
						<th>오디오 지원 포맷</th><td class='spec_show'>${spec_audio.audio_format }</td>
											<td class='spec_mod'><input type='text' name='audio_format' value='${spec_audio.audio_format }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_audio.video_detail }">
					<tr>
						<th>동영상 자세 사항</th><td class='spec_show'>${spec_audio.video_detail }</td>
											<td class='spec_mod'><textarea rows="5" cols="40" name='video_detail'>${spec_audio.video_detail }</textarea></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_audio.facetime }">
					<tr>
						<th>FaceTime HD카메라</th><td class='spec_show'>${spec_audio.facetime }</td>
												<td class='spec_mod'><textarea rows="5" cols="40" name='facetime'>${spec_audio.facetime }</textarea></td>
					</tr>
				</c:if>
			</table>
		</div>

		<div class="spec_div">
			<h3>서비스</h3>
			<table>
				<c:if test="${!empty spec_service.gear_support }">
					<tr>
						<th>Gear 서포트</th><td class='spec_show'>${spec_service.gear_support }</td>
											<td class='spec_mod'><input type='text' name='gear_support' value='${spec_service.gear_support }'></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_service.svoice }">
					<tr>
						<th>S보이스</th><td class='spec_show'>${spec_service.svoice }</td>
										<td class='spec_mod'><select name='svoice'>
											<option>예</option>
											<option>아니오</option>
		    							</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_service.mobiletv }">
					<tr>
						<th>모바일TV</th><td class='spec_show'>${spec_service.mobiletv }</td>
										<td class='spec_mod'><select name='mobiletv'>
											<option>예</option>
											<option>아니오</option>
		    							</select></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_service.siri }">
					<tr>
						<th>Siri</th><td class='spec_show'>${spec_service.siri }</td>
										<td class='spec_mod'><textarea rows="2" cols="40" name='siri'>${spec_service.siri }</textarea></td>
					</tr>
				</c:if>
				<c:if test="${!empty spec_service.waterproof }">
					<tr>
						<th>생활 방수 및 방진</th><td class='spec_show'>${spec_service.waterproof }</td>
											<td class='spec_mod'><input type='text' name='waterproof' value='${spec_service.waterproof }'></td>
					</tr>
				</c:if>
			</table>
		</div>
		<input type='button' id='btn_update' value='수정'>
		<input type='button' id='btn_ok' value='완료' style='display:none;'>
		<input type='button' id='btn_del' value='삭제'>
	</div>
</form>
</body>
</html>