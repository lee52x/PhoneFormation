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
				<c:forEach items="${list_Sspec_processor_value }" var="list_Sspec_processor_value">
 					<tr>
						<th>${list_Sspec_processor.func1 }</th><td>${list_Sspec_processor_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_processor.func2 }</th><td>${list_Sspec_processor_value.value2 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>디스플레이</h3>
		<table>								
			<c:forEach items="${list_Sspec_display }" var="list_Sspec_display">
				<c:forEach items="${list_Sspec_display_value }" var="list_Sspec_display_value">
					<tr>
						<th>${list_Sspec_display.func1 }</th><td> ${list_Sspec_display_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_display.func2 }</th><td>${list_Sspec_display_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_display.func3 }</th><td>${list_Sspec_display_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_display.func4 }</th><td>${list_Sspec_display_value.value4 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_display.func5 }</th><td>${list_Sspec_display_value.value5 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>카메라</h3>
		<table>
			<c:forEach items="${list_Sspec_camera }" var="list_Sspec_camera">
				<c:forEach items="${list_Sspec_camera_value }" var="list_Sspec_camera_value">
					<tr>
						<th>${list_Sspec_camera.func1 }</th><td>${list_Sspec_camera_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_camera.func2 }</th><td>${list_Sspec_camera_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_camera.func3 }</th><td>${list_Sspec_camera_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_camera.func4 }</th><td>${list_Sspec_camera_value.value4 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_camera.func5 }</th><td>${list_Sspec_camera_value.value5 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_camera.func6 }</th><td>${list_Sspec_camera_value.value6 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_camera.func7 }</th><td>${list_Sspec_camera_value.value7 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>메모리</h3>
		<table>
			<c:forEach items="${list_Sspec_memory }" var="list_Sspec_memory">
				<c:forEach items="${list_Sspec_memory_value }" var="list_Sspec_memory_value">
					<tr>
						<th>${list_Sspec_memory.func1 }</th><td>${list_Sspec_memory_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_memory.func2 }</th><td>${list_Sspec_memory_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_memory.func3 }</th><td>${list_Sspec_memory_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_memory.func4 }</th><td>${list_Sspec_memory_value.value4 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>네트워크</h3>
		<table>
			<c:forEach items="${list_Sspec_network }" var="list_Sspec_network">
				<c:forEach items="${list_Sspec_network_value }" var="list_Sspec_network_value">
					<tr>
						<th>${list_Sspec_network.func1 }</th><td>${list_Sspec_network_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_network.func2 }</th><td>${list_Sspec_network_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_network.func3 }</th><td>${list_Sspec_network_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_network.func4 }</th><td>${list_Sspec_network_value.value4 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_network.func5 }</th><td>${list_Sspec_network_value.value5 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_network.func6 }</th><td>${list_Sspec_network_value.value6 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>연결</h3>
		<table>
			<c:forEach items="${list_Sspec_connect }" var="list_Sspec_connect">
				<c:forEach items="${list_Sspec_connect_value }" var="list_Sspec_connect_value">
					<tr>
						<th>${list_Sspec_connect.func1 }</th><td>${list_Sspec_connect_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func2 }</th><td>${list_Sspec_connect_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func3 }</th><td>${list_Sspec_connect_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func4 }</th><td>${list_Sspec_connect_value.value4 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func5 }</th><td> ${list_Sspec_connect_value.value5 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func6 }</th><td>${list_Sspec_connect_value.value6 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func7 }</th><td>${list_Sspec_connect_value.value7 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func8 }</th><td>${list_Sspec_connect_value.value8 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func9 }</th><td>${list_Sspec_connect_value.value9 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func10 }</th><td>${list_Sspec_connect_value.value11 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_connect.func11 }</th><td> ${list_Sspec_connect_value.value11 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>운영체제, 기본사양, 센서, 외관사양</h3>
		<table>
			<c:forEach items="${list_Sspec_specifications }" var="list_Sspec_specifications">
				<c:forEach items="${list_Sspec_specifications_value }" var="list_Sspec_specifications_value">
					<tr>
						<th>${list_Sspec_specifications.func1 }</th><td>${list_Sspec_specifications_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_specifications.func2 }</th><td>${list_Sspec_specifications_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_specifications.func3 }</th><td>${list_Sspec_specifications_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_specifications.func4 }</th><td>${list_Sspec_specifications_value.value4 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_specifications.func5 }</th><td>${list_Sspec_specifications_value.value5 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_specifications.func6 }</th><td>${list_Sspec_specifications_value.value6 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_specifications.func7 }</th><td>${list_Sspec_specifications_value.value7 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>배터리</h3>
		<table>
			<c:forEach items="${list_Sspec_battery }" var="list_Sspec_battery">
				<c:forEach items="${list_Sspec_battery_value }" var="list_Sspec_battery_value">
					<tr>
						<th>${list_Sspec_battery.func1 }</th><td>${list_Sspec_battery_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func2 }</th><td>${list_Sspec_battery_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func3 }</th><td>${list_Sspec_battery_value.value3 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func4 }</th><td>${list_Sspec_battery_value.value4 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func5 }</th><td>${list_Sspec_battery_value.value5 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func6 }</th><td>${list_Sspec_battery_value.value6 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func7 }</th><td>${list_Sspec_battery_value.value7 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func8 }</th><td>${list_Sspec_battery_value.value8 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_battery.func9 }</th><td> ${list_Sspec_battery_value.value9 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>오디오/비디오</h3>
		<table>
			<c:forEach items="${list_Sspec_audio }" var="list_Sspec_audio">
				<c:forEach items="${list_Sspec_audio_value }" var="list_Sspec_audio_value">
					<tr>
						<th>${list_Sspec_audio.func1 }</th><td>${list_Sspec_audio_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_audio.func2 }</th><td> ${list_Sspec_audio_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_audio.func3 }</th><td>${list_Sspec_audio_value.value3 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
		<hr>
		<h3>서비스</h3>
		<table>
			<c:forEach items="${list_Sspec_service }" var="list_Sspec_service">
				<c:forEach items="${list_Sspec_service_value }" var="list_Sspec_service_value">
					<tr>
						<th>${list_Sspec_service.func1 }</th><td>${list_Sspec_service_value.value1 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_service.func2 }</th><td>${list_Sspec_service_value.value2 }</td>
					</tr>
					<tr>
						<th>${list_Sspec_service.func3 }</th><td>${list_Sspec_service_value.value3 }</td>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
	</center>
</body>
</html>