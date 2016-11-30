<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center">
		<c:forEach items="${list_color }" var="list_color" varStatus="status">
			<c:if test="${status.index%3==0}">
				<tr>
			</c:if>
			<td>
				<div >
						<center>
							<img src="${list_color.image }">
							<p>${list_color.color }</p>
							<c:forEach items="${list_capacity }" var="list_capacity">
							<p>${list_capacity.capacity } ${list_capacity.release_price }</p>
							</c:forEach>
							<c:forEach items="${list_Sspec_processor }" var="list_Sspec_processor">
							<c:forEach items="${list_Sspec_processor_value }" var="list_Sspec_processor_value">
							<c:forEach items="${list_Sspec_display }" var="list_Sspec_display">
							<c:forEach items="${list_Sspec_display_value }" var="list_Sspec_display_value">
							<c:forEach items="${list_Sspec_camera }" var="list_Sspec_camera">
							<c:forEach items="${list_Sspec_camera_value }" var="list_Sspec_camera_value">
							<c:forEach items="${list_Sspec_memory }" var="list_Sspec_memory">
							<c:forEach items="${list_Sspec_memory_value }" var="list_Sspec_memory_value">
							<c:forEach items="${list_Sspec_network }" var="list_Sspec_network">
							<c:forEach items="${list_Sspec_network_value }" var="list_Sspec_network_value">
							<c:forEach items="${list_Sspec_connect }" var="list_Sspec_connect">
							<c:forEach items="${list_Sspec_connect_value }" var="list_Sspec_connect_value">
							<c:forEach items="${list_Sspec_specifications }" var="list_Sspec_specifications">
							<c:forEach items="${list_Sspec_specifications_value }" var="list_Sspec_specifications_value">
							<c:forEach items="${list_Sspec_battery }" var="list_Sspec_battery">
							<c:forEach items="${list_Sspec_battery_value }" var="list_Sspec_battery_value">
							<c:forEach items="${list_Sspec_audio }" var="list_Sspec_audio">
							<c:forEach items="${list_Sspec_audio_value }" var="list_Sspec_audio_value">
							<c:forEach items="${list_Sspec_service }" var="list_Sspec_service">
							<c:forEach items="${list_Sspec_service_value }" var="list_Sspec_service_value">
									<p>${list_Sspec_processor.func1 } ${list_Sspec_processor_value.value1 }</p>
									<p>${list_Sspec_processor.func2 } ${list_Sspec_processor_value.value2 }</p>
									<p>${list_Sspec_display.func1 } ${list_Sspec_display_value.value1 }</p>
									<p>${list_Sspec_display.func2 } ${list_Sspec_display_value.value2 }</p>
									<p>${list_Sspec_display.func3 } ${list_Sspec_display_value.value3 }</p>
									<p>${list_Sspec_display.func4 } ${list_Sspec_display_value.value4 }</p>
									<p>${list_Sspec_display.func5 } ${list_Sspec_display_value.value5 }</p>
									<p>${list_Sspec_camera.func1 } ${list_Sspec_camera_value.value1 }</p>
									<p>${list_Sspec_camera.func2 } ${list_Sspec_camera_value.value2 }</p>
									<p>${list_Sspec_camera.func3 } ${list_Sspec_camera_value.value3 }</p>
									<p>${list_Sspec_camera.func4 } ${list_Sspec_camera_value.value4 }</p>
									<p>${list_Sspec_camera.func5 } ${list_Sspec_camera_value.value5 }</p>
									<p>${list_Sspec_camera.func6 } ${list_Sspec_camera_value.value6 }</p>
									<p>${list_Sspec_camera.func7 } ${list_Sspec_camera_value.value7 }</p>
									<p>${list_Sspec_memory.func1 } ${list_Sspec_memory_value.value1 }</p>
									<p>${list_Sspec_memory.func2 } ${list_Sspec_memory_value.value2 }</p>
									<p>${list_Sspec_memory.func3 } ${list_Sspec_memory_value.value3 }</p>
									<p>${list_Sspec_memory.func4 } ${list_Sspec_memory_value.value4 }</p>
									<p>${list_Sspec_network.func1 } ${list_Sspec_network_value.value1 }</p>
									<p>${list_Sspec_network.func2 } ${list_Sspec_network_value.value2 }</p>
									<p>${list_Sspec_network.func3 } ${list_Sspec_network_value.value3 }</p>
									<p>${list_Sspec_network.func4 } ${list_Sspec_network_value.value4 }</p>
									<p>${list_Sspec_network.func5 } ${list_Sspec_network_value.value5 }</p>
									<p>${list_Sspec_network.func6 } ${list_Sspec_network_value.value6 }</p>
									<p>${list_Sspec_connect.func1 } ${list_Sspec_connect_value.value1 }</p>
									<p>${list_Sspec_connect.func2 } ${list_Sspec_connect_value.value2 }</p>
									<p>${list_Sspec_connect.func3 } ${list_Sspec_connect_value.value3 }</p>
									<p>${list_Sspec_connect.func4 } ${list_Sspec_connect_value.value4 }</p>
									<p>${list_Sspec_connect.func5 } ${list_Sspec_connect_value.value5 }</p>
									<p>${list_Sspec_connect.func6 } ${list_Sspec_connect_value.value6 }</p>
									<p>${list_Sspec_connect.func7 } ${list_Sspec_connect_value.value7 }</p>
									<p>${list_Sspec_connect.func8 } ${list_Sspec_connect_value.value8 }</p>
									<p>${list_Sspec_connect.func9 } ${list_Sspec_connect_value.value9 }</p>
									<p>${list_Sspec_connect.func10 } ${list_Sspec_connect_value.value11 }</p>
									<p>${list_Sspec_connect.func11 } ${list_Sspec_connect_value.value11 }</p>
									<p>${list_Sspec_specifications.func1 } ${list_Sspec_specifications_value.value1 }</p>
									<p>${list_Sspec_specifications.func2 } ${list_Sspec_specifications_value.value2 }</p>
									<p>${list_Sspec_specifications.func3 } ${list_Sspec_specifications_value.value3 }</p>
									<p>${list_Sspec_specifications.func4 } ${list_Sspec_specifications_value.value4 }</p>
									<p>${list_Sspec_specifications.func5 } ${list_Sspec_specifications_value.value5 }</p>
									<p>${list_Sspec_specifications.func6 } ${list_Sspec_specifications_value.value6 }</p>
									<p>${list_Sspec_specifications.func7 } ${list_Sspec_specifications_value.value7 }</p>
									<p>${list_Sspec_battery.func1 } ${list_Sspec_battery_value.value1 }</p>
									<p>${list_Sspec_battery.func2 } ${list_Sspec_battery_value.value2 }</p>
									<p>${list_Sspec_battery.func3 } ${list_Sspec_battery_value.value3 }</p>
									<p>${list_Sspec_battery.func4 } ${list_Sspec_battery_value.value4 }</p>
									<p>${list_Sspec_battery.func5 } ${list_Sspec_battery_value.value5 }</p>
									<p>${list_Sspec_battery.func6 } ${list_Sspec_battery_value.value6 }</p>
									<p>${list_Sspec_battery.func7 } ${list_Sspec_battery_value.value7 }</p>
									<p>${list_Sspec_battery.func8 } ${list_Sspec_battery_value.value8 }</p>
									<p>${list_Sspec_battery.func9 } ${list_Sspec_battery_value.value9 }</p>
									<p>${list_Sspec_audio.func1 } ${list_Sspec_audio_value.value1 }</p>
									<p>${list_Sspec_audio.func2 } ${list_Sspec_audio_value.value2 }</p>
									<p>${list_Sspec_audio.func3 } ${list_Sspec_audio_value.value3 }</p>
									<p>${list_Sspec_service.func1 } ${list_Sspec_service_value.value1 }</p>
									<p>${list_Sspec_service.func2 } ${list_Sspec_service_value.value2 }</p>
									<p>${list_Sspec_service.func3 } ${list_Sspec_service_value.value3 }</p>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
								</c:forEach>
							</c:forEach>
						</c:forEach>
					</center>
				</div>
			</td>
			<c:if test="${status.index%3==2}">
				</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>