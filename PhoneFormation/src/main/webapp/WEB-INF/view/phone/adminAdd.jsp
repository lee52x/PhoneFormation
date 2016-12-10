<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		var index=2;	
		$('#coloradd').click(function(){			
			var str = 
 			"<div id='colordiv"+index+"'>"
			+"색상 : <input type='text'>&nbsp;&nbsp;<label for='imgcolor"+index+"'>이미지 첨부</label>"
			+"<input type='file' id='imgcolor"+index+"' name='file' accept='.gif, .jpg, .png' style='display:none'"
			+ "onchange="
			+'"'+'javascript: document.getElementById('+"'colorimg_path"+index+"').value = this.value"+'"'+'>'
			+"<input type='text' id='colorimg_path"+index+"' style='width:500px;'>"
			+"<input type='button' class='colordel' id='colordiv"+index+"' value='삭제' onclick='colordel("+index+")'>"
			+"</div>"; 
			$('#colordivcontent').append(str);
			index = index+1;
		});
	});
	function colordel(index){
		alert(index);
		$('#colordiv'+index).empty();
	}
</script>
</head>
<body>
	<form role="addform" method='post' action="adminAdd">
		<div class="container">
	
			핸드폰 기종 : <input type="text" name='name'><br>
			핸드폰 대표 사진 : <input type='text' name='image'><br>
			제조사 : <select name='manufacture'>
			 		<option>samsung</option>
					<option>lg</option>
			 		<option>apple</option>
		   		   </select><br>
			출고일 : <input type='text' name='release_date'><br>
			용량 : <input type="text" name='capacity'> 가격 : <input type="text" name='release_price'><br>
			
			<h3>프로세서</h3><br>
			CPU 속도 : <input type="text" name='cpu_Speed'><br>
			CPU 종류 : <input type="text" name='cpu_type'><br>
	
			<h3>디스플레이</h3><br>
			크기(Main) : <input type='text' name='size_main'><br>
			해상도(Main) : <input type='text' name='resoluation_main'><br>
			종류(Main) : <input type='text' name='type_main'><br>
			색심도(Main) : <input type='text' name='color_depth_main'><br>
			S펜 지원 : <select name='s_pen'>
						<option>예</option>
						<option>아니오</option>
		   			</select><br>
	
			<h3>카메라</h3><br>
			동영상 녹화 해상도 : <input type='text' name='video_resoluation'><br>
			메인 카메라 - 화소  : <input type='text' name='maincamera_pixel'><br>
			전면 카메라 - 화소 : <input type='text' name='maincamera_aperture'><br>
			메인 카메라 - 조리개 값 : <input type='text' name='frontcamera_pixel'><br>
			전면 카메라 - 조리개 값 : <input type='text' name='frontcamera_aperture'><br>
			메인 카메라 - 플래쉬 : <select name='maincamera_flash'>
								<option>예</option>
								<option>아니오</option>
		   			 		</select><br>
			메인 카메라 - 오토 포커스 : <select name='maincamera_autofocus'>
									<option>예</option>
									<option>아니오</option>
		   				 		</select><br>
			카메라 자세 사항 : <textarea rows="4" cols="20" name='camera_detail'></textarea><br>
	
			<h3>메모리</h3><br>
			Ram Size(GB) : <input type='text' name='ramsize'><br>
			Rom Size(GB) : <input type='text' name='romsize'><br>
			사용할 수 있는 메모리 : <input type='text' name='usable_memory'><br>
			외장 메모리 지원  : <input type='text' name='outer_memory'><br>
	
			<h3>네트워크</h3><br>
			Type Of SIM Slot : <input type='text' name='type_of_sim_slot'><br>
			2G GSM : <input type='text' name='gsm_2g'><br>
			3G UMTS : <input type='text' name='umts_3g'><br>
			3G TD-SCDMA : <input type='text' name='td_scdma_3g'><br>
			4G FDD LTE : <input type='text' name='fdd_lte_4g'><br>
			4G TDD LTE : <input type='text' name='tdd_lte_4g'><br>
	
			<h3>연결</h3><br>
			ANT+ : <select name='ant'>
						<option>예</option>
						<option>아니오</option>
		    		</select><br>
			USB 버전  : <input type='text' name='usb_version'><br>
			위치 기술 : <input type='text' name='location'><br>
			이어잭  : <input type='text' name='ear_adapter'><br>
			MHL : <select name='mhl'>
						<option>예</option>
						<option>아니오</option>
		   			</select><br>
			Wi-Fi Direct : <input type='text' name='wifi_direct'><br>
			wi-Fi <select name='wifi'>
						<option>예</option>
						<option>아니오</option>
		    		</select><br>
			블루투스 버전 : <input type='text' name='bluetooth_version'><br>
			NFC : <select name='nfc'>
					<option>예</option>
					<option>아니오</option>
		    		</select><br>
			블루투스 프로 파일 : <input type='text' name='bluetooth_profile'><br>
			PC싱크  : <input type='text' name='pcsynk'><br>
	
			<h3>운영체제, 기본사양, 센서, 외관사양</h3><br>
			운영체제  : <input type='text' name='os'><br>
			색상 : <input type='text' name='color'><br>
			형태 : <input type='text' name='form'><br>
			크기(세로X가로X두께, mm) : <input type='text' name='phone_size'><br>
			무게(g) : <input type='text' name='weight'><br>
			센서 : <textarea rows="2" cols="20" name='sensor'></textarea><br>
	
			<h3>배터리</h3><br>
			인터넷 사용 시간(3G)(Hours) : <input type='text' name='internet_use_3g'><br>
			인터넷 사용 시간(LTE)(Hours) : <input type='text' name='internet_use_lte'><br>
			인터넷 사용시간(Wi-Fi)(Hours) : <input type='text' name='internet_use_wifi'><br>
			비디오 재생 시간(Hours) : <input type='text' name='video_play'><br>
			표준 배터리 용량(mAh) : <input type='text' name='battery_capacity'><br>
			교체 가능 : <select name='battery_capacity'>
						<option>예</option>
						<option>아니오</option>
		    		</select><br>
			오디오 재생 시간(Hours) : <input type='text' name='audio_play'><br>
			오디오 재생 시간(Hours, Always OnDisplay Off) : <input type='text' name='audio_play_ondisplay'><br>
			연속 통화시간(3G WCDMA)(Hours) : <input type='text' name='continuous_call'><br>
	
			<h3>오디오/비디오</h3><br>
			동영상 지원 포맷 : <textarea rows="5" cols="40" name='video_format'></textarea><br>
			동영상 지원 해상도 : <textarea rows="5" cols="40" name='video_resoluation'></textarea><br>
			오디오 지원 포맷 : <input type='text' name='audio_format'><br>
			동영상 자세 사항 : <textarea rows="5" cols="40" name='video_detail'></textarea><br>
			FaceTime HD카메라 : <textarea rows="5" cols="40" name='facetime'></textarea><br>
	
			<h3>서비스</h3><br>
			Gear 서포트 : <input type='text' name='gear_support'><br>
			S보이스 : <select name='svoice'>
						<option>예</option>
						<option>아니오</option>
		    		</select><br>
			모바일TV : <select name='mobiletv'>
						<option>예</option>
						<option>아니오</option>
		    		</select><br>
			Siri : <textarea rows="2" cols="40" name='siri'></textarea><br>
			생활 방수 및 방진 : <input type='text' name='waterproof'><br>
	
			<h3>핸드폰 이미지</h3><br>
			<input type='button' id='coloradd' value='색상추가'>
			<div id='colordivcontent'>
				<div id='colordiv1'>
					색상 : <input type='text'>&nbsp;&nbsp;<label for='imgcolor1'>이미지 첨부</label>
					<input type='file' id='imgcolor1' name='file' accept='.gif, .jpg, .png' style='display:none'
					onchange="javascript: document.getElementById('colorimg_path1').value = this.value">
					<input type='text' id='colorimg_path1' style='width:500px;'>
					<input type='button' class='colordel' id='colordiv' value='삭제' onclick='colordel(1)'>
				</div>
			</div>
			<button>취소</button>
			<button type='submit' id='addbtn'>등록</button>
		</div>
	</form>
</body>
</html>