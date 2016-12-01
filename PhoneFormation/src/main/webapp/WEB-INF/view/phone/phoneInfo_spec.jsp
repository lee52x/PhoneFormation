<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.img {
	width: 80%;
	height: 80%;
}
</style>
</head>
<body>
    <!-- Start Latest Projects Carousel -->
	<center>
		<c:forEach items="${list_spec_Info }" var="list_spec_Info">
			<h1 class="classic-title"><span>${list_spec_Info.name }</span></h1>
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
		<hr>
		<h3>용량</h3>
		<table>
			<c:forEach items="${list_capacity }" var="list_capacity">
				<tr>
					<th>${list_capacity.capacity }</th><td>${list_capacity.release_price }</td>
				</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>프로세서</h3>
		<table>
			<c:forEach items="${list_Sspec_processor }" var="list_Sspec_processor" varStatus="status">
 					<tr>
						<th>CPU 속도</th><td>${list_Sspec_processor.cpu_Speed }</td>
					</tr>
					<tr>
						<th>CPU 종류</th><td>${list_Sspec_processor.cpu_type }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>디스플레이</h3>
		<table>								
			<c:forEach items="${list_Sspec_display }" var="list_Sspec_display">
					<tr>
						<th>크기(Main)</th><td> ${list_Sspec_display.size_main }</td>
					</tr>
					<tr>
						<th>해상도(Main)</th><td>${list_Sspec_display.resoluation_main }</td>
					</tr>
					<tr>
						<th>종류(Main)</th><td>${list_Sspec_display.type_main }</td>
					</tr>
					<tr>
						<th>색심도(Main)</th><td>${list_Sspec_display.color_depth_main }</td>
					</tr>
					<tr>
						<th>S펜 지원</th><td>${list_Sspec_display.s_pen }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>카메라</h3>
		<table>
			<c:forEach items="${list_Sspec_camera }" var="list_Sspec_camera">
					<tr>
						<th>동영상 녹화 해상도</th><td>${list_Sspec_camera.video_resoluation }</td>
					</tr>
					<tr>
						<th>메인 카메라 - 화소</th><td>${list_Sspec_camera.maincamera_pixel }</td>
					</tr>
					<tr>
						<th>메인 카메라 - 조리개 값</th><td>${list_Sspec_camera.maincamera_aperture }</td>
					</tr>
					<tr>
						<th>전면 카메라 - 화소</th><td>${list_Sspec_camera.frontcamera_pixel }</td>
					</tr>
					<tr>
						<th>전면 카메라 - 조리개 값</th><td>${list_Sspec_camera.frontcamera_aperture }</td>
					</tr>
					<tr>
						<th>메인 카메라 - 플래쉬</th><td>${list_Sspec_camera.maincamera_flash }</td>
					</tr>
					<tr>
						<th>메인 카메라 - 오토 포커스</th><td>${list_Sspec_camera.maincamera_autofocus }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>메모리</h3>
		<table>
			<c:forEach items="${list_Sspec_memory }" var="list_Sspec_memory">
					<tr>
						<th>Ram Size(GB)</th><td>${list_Sspec_memory.ramsize }</td>
					</tr>
					<tr>
						<th>ROM Size(GB)</th><td>${list_Sspec_memory.romsize }</td>
					</tr>
					<tr>
						<th>사용할 수 있는 메모리</th><td>${list_Sspec_memory.usable_memory }</td>
					</tr>
					<tr>
						<th>외장 메모리 지원</th><td>${list_Sspec_memory.outer_memory }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>네트워크</h3>
		<table>
			<c:forEach items="${list_Sspec_network }" var="list_Sspec_network">
					<tr>
						<th>Type of SIM Slot</th><td>${list_Sspec_network.type_of_sim_slot }</td>
					</tr>
					<tr>
						<th>2G GSM</th><td>${list_Sspec_network.gsm_2g }</td>
					</tr>
					<tr>
						<th>3G UMTS</th><td>${list_Sspec_network.umts_3g }</td>
					</tr>
					<tr>
						<th>3G TD-SCDMA</th><td>${list_Sspec_network.td_scdma_3g }</td>
					</tr>
					<tr>
						<th>4G FDD LTE</th><td>${list_Sspec_network.fdd_lte_4g }</td>
					</tr>
					<tr>
						<th>4G TDD LTE</th><td>${list_Sspec_network.tdd_lte_4g }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>연결</h3>
		<table>
			<c:forEach items="${list_Sspec_connect }" var="list_Sspec_connect">
					<tr>
						<th>ANT+</th><td>${list_Sspec_connect.ant }</td>
					</tr>
					<tr>
						<th>USB 버전</th><td>${list_Sspec_connect.usb_version }</td>
					</tr>
					<tr>
						<th>위치 기술</th><td>${list_Sspec_connect.location }</td>
					</tr>
					<tr>
						<th>이어잭</th><td>${list_Sspec_connect.ear_adapter }</td>
					</tr>
					<tr>
						<th>MHL</th><td> ${list_Sspec_connect.mhl }</td>
					</tr>
					<tr>
						<th>Wi-Fi</th><td>${list_Sspec_connect.wifi }</td>
					</tr>
					<tr>
						<th>Wi-Fi Direct</th><td>${list_Sspec_connect.wifi_direct }</td>
					</tr>
					<tr>
						<th>블루투스 버전</th><td>${list_Sspec_connect.bluetooth_version }</td>
					</tr>
					<tr>
						<th>NFC</th><td>${list_Sspec_connect.nfc }</td>
					</tr>
					<tr>
						<th>블루투스 프로파일</th><td>${list_Sspec_connect.bluetooth_profile }</td>
					</tr>
					<tr>
						<th>PC싱크</th><td> ${list_Sspec_connect.pcsynk }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>운영체제, 기본사양, 센서, 외관사양</h3>
		<table>
			<c:forEach items="${list_Sspec_specifications }" var="list_Sspec_specifications">
					<tr>
						<th>ANT+</th><td>${list_Sspec_specifications.ant }</td>
					</tr>
					<tr>
						<th>운영체제</th><td>${list_Sspec_specifications.os }</td>
					</tr>
					<tr>
						<th>색상</th><td>${list_Sspec_specifications.color }</td>
					</tr>
					<tr>
						<th>형태</th><td>${list_Sspec_specifications.form }</td>
					</tr>
					<tr>
						<th>크기(세로X가로X두께, mm)</th><td>${list_Sspec_specifications.phone_size }</td>
					</tr>
					<tr>
						<th>무게(g)</th><td>${list_Sspec_specifications.weight }</td>
					</tr>
					<tr>
						<th>센서</th><td>${list_Sspec_specifications.sensor }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>배터리</h3>
		<table>
			<c:forEach items="${list_Sspec_battery }" var="list_Sspec_battery">
					<tr>
						<th>인터넷 사용 시간(3G)(Hours)</th><td>${list_Sspec_battery.internet_use_3g }</td>
					</tr>
					<tr>
						<th>인터넷 사용 시간(LTE)(Hours)</th><td>${list_Sspec_battery.internet_use_lte }</td>
					</tr>
					<tr>
						<th>인터넷 사용시간(Wi-Fi)(Hours)</th><td>${list_Sspec_battery.internet_use_wifi }</td>
					</tr>
					<tr>
						<th>비디오 재생 시간(Hours)</th><td>${list_Sspec_battery.video_play }</td>
					</tr>
					<tr>
						<th>표준 배터리 용량(mAh)</th><td>${list_Sspec_battery.battery_capacity }</td>
					</tr>
					<tr>
						<th>교체 가능</th><td>${list_Sspec_battery.change_possible }</td>
					</tr>
					<tr>
						<th>오디오 재생 시간(Hours)</th><td>${list_Sspec_battery.audio_play }</td>
					</tr>
					<tr>
						<th>오디오 재생 시간(Hours, Always OnDisplay Off)</th><td>${list_Sspec_battery.audio_play_ondisplay }</td>
					</tr>
					<tr>
						<th>연속 통화시간(3G WCDMA)(Hours)</th><td> ${list_Sspec_battery.continuous_call }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>오디오/비디오</h3>
		<table>
			<c:forEach items="${list_Sspec_audio }" var="list_Sspec_audio">
					<tr>
						<th>동영상 지원 포맷</th><td>${list_Sspec_audio.video_format }</td>
					</tr>
					<tr>
						<th>동영상 지원 해상도</th><td> ${list_Sspec_audio.video_resoluation }</td>
					</tr>
					<tr>
						<th>오디오 지원 포맷</th><td>${list_Sspec_audio.audio_format }</td>
					</tr>
			</c:forEach>
		</table>
		<hr>
		<h3>서비스</h3>
		<table>
			<c:forEach items="${list_Sspec_service }" var="list_Sspec_service">
					<tr>
						<th>Gear 서포트</th><td>${list_Sspec_service.gear_support }</td>
					</tr>
					<tr>
						<th>S보이스</th><td>${list_Sspec_service.svoice }</td>
					</tr>
					<tr>
						<th>모바일TV</th><td>${list_Sspec_service.mobiletv }</td>
					</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>