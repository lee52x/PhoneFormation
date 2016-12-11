<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
/* h3{
 text-align: center;
}
hr{
	width:35%;
}
table{
 margin-left: 20%;
 width:60%;
} */


</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn_update').click(function(){
    	   	$(location).attr('href','/phonefo/adminUpdate');
      });
	});
</script>
</head>
<body>
  <form method="post">
    <!-- Start Latest Projects Carousel -->
	<center>
		<c:forEach items="${list_spec_Info }" var="list_spec_Info">
			<h1 class="clasic-title"><span>${list_spec_Info.name }</span></h1>
			<div class="projects-carousel touch-carousel"> <!-- 4개씩 보이기 -->
				<c:forEach items="${list_color }" var="list_color" varStatus="status">
					<div class="portfolio-item item">
						<div class="portfolio-border">
							<div class="portfolio-thumb">
								<a class="lightbox" title="${list_color.color }" data-lightbox-type="ajax"
									href="${list_color.image }">
									<div class="thumb-overlay"> <i class="fa fa-arrows-alt"></i></div>
									<img class="img" src="${list_color.image }">
								</a>
							</div>
							<div class="portfolio-details">
									<p>${list_color.color }</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:forEach>
	</center>
	
	<hr width="84%">
		
	<div class="container">
		<div class="spec_div">
		<h3>기본정보</h3>
			<table>
				<c:forEach items="${list_capacity }" var="list_capacity">
					<c:if test="${!empty list_capacity.capacity}">
						<tr>
							<th>가격 (용량)</th>
							<td> ${list_capacity.release_price } (${list_capacity.capacity })</td>
					</c:if>
<%-- 					<c:if test="${!empty list_capacity.release_price}">
							<td>${list_capacity.release_price }</td>
						</tr>
					</c:if> --%>
				</c:forEach>
			</table>
		</div>
			
		<div class="spec_div">
		<c:forEach items="${list_spec_processor }" var="list_spec_processor" varStatus="status">
			<h3>프로세서</h3>
			<table>
				<c:if test="${!empty list_spec_processor.cpu_Speed}">
					<tr>
						<th>CPU 속도</th><td>${list_spec_processor.cpu_Speed }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_processor.cpu_type}">
					<tr>
						<th>CPU 종류</th><td>${list_spec_processor.cpu_type }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>
		
		<div class="spec_div">
		<c:forEach items="${list_spec_display }" var="list_spec_display">
			<h3>디스플레이</h3>
			<table>	
				<c:if test="${!empty list_spec_display.size_main}">
					<tr>
						<th>크기(Main)</th><td> ${list_spec_display.size_main }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_display.resoluation_main}">
					<tr>
						<th>해상도(Main)</th><td>${list_spec_display.resoluation_main }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_display.type_main}">
					<tr>
						<th>종류(Main)</th><td>${list_spec_display.type_main }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_display.color_depth_main}">
					<tr>
						<th>색심도(Main)</th><td>${list_spec_display.color_depth_main }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_display.s_pen}">
					<tr>
						<th>S펜 지원</th><td>${list_spec_display.s_pen }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>
		
		<div class="spec_div">
		<c:forEach items="${list_spec_camera }" var="list_spec_camera">
			<h3>카메라</h3>
			<table>
				<c:if test="${!empty list_spec_camera.video_resoluation}">
					<tr>
						<th>동영상 녹화 해상도</th><td>${list_spec_camera.video_resoluation }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.maincamera_pixel}">
					<tr>
						<th>메인 카메라 - 화소</th><td>${list_spec_camera.maincamera_pixel }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.maincamera_aperture}">
					<tr>
						<th>메인 카메라 - 조리개 값</th><td>${list_spec_camera.maincamera_aperture }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.frontcamera_pixel}">
					<tr>
						<th>전면 카메라 - 화소</th><td>${list_spec_camera.frontcamera_pixel }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.frontcamera_aperture}">
					<tr>
						<th>전면 카메라 - 조리개 값</th><td>${list_spec_camera.frontcamera_aperture }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.maincamera_flash}">
					<tr>
						<th>메인 카메라 - 플래쉬</th><td>${list_spec_camera.maincamera_flash }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.maincamera_autofocus}">
					<tr>
						<th>메인 카메라 - 오토 포커스</th><td>${list_spec_camera.maincamera_autofocus }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_camera.camera_detail}">
					<tr>
						<th>카메라 자세 사항</th><td>${list_spec_camera.camera_detail }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>
		
		<div class="spec_div">
		<c:forEach items="${list_spec_memory }" var="list_spec_memory">
			<h3>메모리</h3>
			<table>
				<c:if test="${!empty list_spec_memory.ramsize}">
					<tr>
						<th>Ram Size(GB)</th><td>${list_spec_memory.ramsize }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_memory.romsize}">
					<tr>
						<th>ROM Size(GB)</th><td>${list_spec_memory.romsize }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_memory.usable_memory}">
					<tr>
						<th>사용할 수 있는 메모리</th><td>${list_spec_memory.usable_memory }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_memory.outer_memory}">
					<tr>
						<th>외장 메모리 지원</th><td>${list_spec_memory.outer_memory }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>

		<div class="spec_div">
		<c:forEach items="${list_spec_network }" var="list_spec_network">
			<h3>네트워크</h3>
			<table>
				<c:if test="${!empty list_spec_network.type_of_sim_slot}">
					<tr>
						<th>Type of SIM Slot</th><td>${list_spec_network.type_of_sim_slot }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_network.gsm_2g}">
					<tr>
						<th>2G GSM</th><td>${list_spec_network.gsm_2g }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_network.umts_3g}">
					<tr>
						<th>3G UMTS</th><td>${list_spec_network.umts_3g }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_network.td_scdma_3g}">
					<tr>
						<th>3G TD-SCDMA</th><td>${list_spec_network.td_scdma_3g }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_network.fdd_lte_4g}">
					<tr>
						<th>4G FDD LTE</th><td>${list_spec_network.fdd_lte_4g }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_network.tdd_lte_4g}">
					<tr>
						<th>4G TDD LTE</th><td>${list_spec_network.tdd_lte_4g }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>

		<div class="spec_div">
		<c:forEach items="${list_spec_connect }" var="list_spec_connect">
			<h3>연결</h3>
			<table>
				<c:if test="${!empty list_spec_connect.ant }">
					<tr>
						<th>ANT+</th><td>${list_spec_connect.ant }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.usb_version }">
					<tr>
						<th>USB 버전</th><td>${list_spec_connect.usb_version }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.location }">
					<tr>
						<th>위치 기술</th><td>${list_spec_connect.location }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.ear_adapter }">
					<tr>
						<th>이어잭</th><td>${list_spec_connect.ear_adapter }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.mhl }">
					<tr>
						<th>MHL</th><td>${list_spec_connect.mhl }</td>
					</tr>
				</c:if>
				<c:if test=">${!empty list_spec_connect.wifi_direct }">
					<tr>
						<th>Wi-Fi Direct</th><td>${list_spec_connect.wifi_direct }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.wifi }">
					<tr>
						<th>Wi-Fi</th><td>${list_spec_connect.wifi }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.bluetooth_version }">
					<tr>
						<th>블루투스 버전</th><td>${list_spec_connect.bluetooth_version }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.nfc }">
					<tr>
						<th>NFC</th><td>${list_spec_connect.nfc }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.bluetooth_profile }">
					<tr>
						<th>블루투스 프로파일</th><td>${list_spec_connect.bluetooth_profile }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_connect.pcsynk }">
					<tr>
						<th>PC싱크</th><td>${list_spec_connect.pcsynk }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>

		<div class="spec_div">
		<c:forEach items="${list_spec_specifications }" var="list_spec_specifications">
			<h3>운영체제, 기본사양, 센서, 외관사양</h3>
			<table>
				<c:if test="${!empty list_spec_specifications.os }">
					<tr>
						<th>운영체제</th><td>${list_spec_specifications.os }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_specifications.color }">
					<tr>
						<th>색상</th><td>${list_spec_specifications.color }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_specifications.form }">
					<tr>
						<th>형태</th><td>${list_spec_specifications.form }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_specifications.phone_size }">
					<tr>
						<th>크기(세로X가로X두께, mm)</th><td>${list_spec_specifications.phone_size }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_specifications.weight }">
					<tr>
						<th>무게(g)</th><td>${list_spec_specifications.weight }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_specifications.sensor }">
					<tr>
						<th>센서</th><td>${list_spec_specifications.sensor }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>

		<div class="spec_div">
		<c:forEach items="${list_spec_battery }" var="list_spec_battery">
			<h3>배터리</h3>
			<table>
				<c:if test="${!empty list_spec_battery.internet_use_3g }">
					<tr>
						<th>인터넷 사용 시간(3G)(Hours)</th><td>${list_spec_battery.internet_use_3g }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.internet_use_lte }">
					<tr>
						<th>인터넷 사용 시간(LTE)(Hours)</th><td>${list_spec_battery.internet_use_lte }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.internet_use_wifi }">
					<tr>
						<th>인터넷 사용시간(Wi-Fi)(Hours)</th><td>${list_spec_battery.internet_use_wifi }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.video_play }">
					<tr>
						<th>비디오 재생 시간(Hours)</th><td>${list_spec_battery.video_play }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.battery_capacity }">
					<tr>
						<th>표준 배터리 용량(mAh)</th><td>${list_spec_battery.battery_capacity }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.change_possible }">
					<tr>
						<th>교체 가능</th><td>${list_spec_battery.change_possible }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.audio_play }">
					<tr>
						<th>오디오 재생 시간(Hours)</th><td>${list_spec_battery.audio_play }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.audio_play_ondisplay }">
					<tr>
						<th>오디오 재생 시간(Hours, Always OnDisplay Off)</th><td>${list_spec_battery.audio_play_ondisplay }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_battery.continuous_call }">
					<tr>
						<th>연속 통화시간(3G WCDMA)(Hours)</th><td> ${list_spec_battery.continuous_call }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>

		<div class="spec_div">
		<c:forEach items="${list_spec_audio }" var="list_spec_audio">
			<h3>오디오/비디오</h3>
			<table>
				<c:if test="${!empty list_spec_audio.video_format }">
					<tr>
						<th>동영상 지원 포맷</th><td>${list_spec_audio.video_format }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_audio.video_resoluation }">
					<tr>
						<th>동영상 지원 해상도</th><td> ${list_spec_audio.video_resoluation }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_audio.audio_format }">
					<tr>
						<th>오디오 지원 포맷</th><td>${list_spec_audio.audio_format }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_audio.video_detail }">
					<tr>
						<th>동영상 자세 사항</th><td>${list_spec_audio.video_detail }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_audio.facetime }">
					<tr>
						<th>FaceTime HD카메라</th><td>${list_spec_audio.facetime }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>

		<div class="spec_div">
		<c:forEach items="${list_spec_service }" var="list_spec_service">
			<h3>서비스</h3>
			<table>
				<c:if test="${!empty list_spec_service.gear_support }">
					<tr>
						<th>Gear 서포트</th><td>${list_spec_service.gear_support }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_service.svoice }">
					<tr>
						<th>S보이스</th><td>${list_spec_service.svoice }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_service.mobiletv }">
					<tr>
						<th>모바일TV</th><td>${list_spec_service.mobiletv }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_service.siri }">
					<tr>
						<th>Siri</th><td>${list_spec_service.siri }</td>
					</tr>
				</c:if>
				<c:if test="${!empty list_spec_service.waterproof }">
					<tr>
						<th>생활 방수 및 방진</th><td>${list_spec_service.waterproof }</td>
					</tr>
				</c:if>
			</table>
		</c:forEach>
		</div>
		<input type='submit' id='btn_update' value='수정'>
		<input type='button' id='btn_del' value='삭제'>
	</div>
</form>
</body>
</html>