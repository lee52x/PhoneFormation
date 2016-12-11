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
		var capaidx=1;
		$('#coloradd').click(function(){	
			var str = 
 			"<div id='colordiv"+index+"'>"
 			+"<table><tr>"
			+"<th>색상</th><td><input type='text' name='colorname'><label for='imgcolor"+index+"'>&nbsp;&nbsp;&nbsp;&nbsp;이미지 첨부</label>&nbsp;"
			+"<input type='file' id='imgcolor"+index+"' name='file' accept='.gif, .jpg, .png' style='display:none'"
			+ "onchange="
			+'"'+'javascript: document.getElementById('+"'colorimg_path"+index+"').value = this.value"+'"'+'>'
			+"<input type='text' id='colorimg_path"+index+"' style='width:500px;' readonly='readonly'>"
			+"&nbsp;<input type='button' class='colordel' id='colordiv"+index+"' value='삭제' onclick='colordel("+index+")'></td></tr></table>"
			+"</div>"; 
			$('#colordivcontent').append(str);
			index = index+1;
		});
		$('#capaadd').click(function(){
			alert('여깄니?');
			var str2 = 
				"<tr id='capadiv"+capaidx+"'>"
				+"<th>용량</th><td><input type='text' name='capacity'>&nbsp;&nbsp;가격<input type='text' name='release_price'><input type='button' id='capaadd"+capaidx+"' value='삭제' onclick='capadel("+capaidx+")'></td>"
				+"</tr>";
			$('#capadiv').append(str2);
			capaidx = capaidx+1;
		});
		$('#listbtn').click(function(){
			$(location).attr('href','/phonefo/phoneInfo');
		});
	});
	function colordel(index){
		alert(index);
		$('#colordiv'+index).empty();
	}
	function capadel(capaidx){
		alert(capaidx);
		$('#capadiv'+capaidx).remove();
	}
	
</script>
</head>
<body>
	<form role="addform" method='post' enctype="multipart/form-data" action="adminAdd">
		<div class="container">
			<div class="spec_div">
			<h3>기본정보</h3><br>
			<table id="capadiv">	
				<tr>
					<th>핸드폰 기종</th><td><input type="text" name='name'></td>
				</tr>
				<tr>
					<th>핸드폰 대표 사진</th><td>
					<input type='file' id='listimage' name='file' accept='.gif, .jpg, .png' style='display:none'
					onchange="javascript: document.getElementById('listimage_path').value = this.value">
					<input type='text' id='listimage_path' style='width:500px;' readonly="readonly">&nbsp;&nbsp;<label for='listimage'>이미지 첨부</label></td>
				</tr>
				<tr>
					<th>제조사</th><td><select name='manufacture'>
			 		<option>samsung</option>
					<option>lg</option>
			 		<option>apple</option>
		   		   </select></td>
				</tr>
				<tr>
					<th>출고일</th><td><input type='text' name='release_date'></td>
				</tr>
				<tr>
					<th>용량</th><td><input type="text" name='capacity'>&nbsp;&nbsp;가격<input type="text" name='release_price'><input type='button' id='capaadd' value='추가'></td>
				</tr>
			</table>
			</div>
			
			<h3>프로세서</h3><br>
			<table>
				<tr>
					<th>CPU 속도</th><td><input type="text" name='cpu_Speed'></td>
				</tr>
				<tr>
					<th>CPU 종류</th><td><input type="text" name='cpu_type'></td>
				</tr>
			</table>
	
			<h3>디스플레이</h3><br>
			<table>
				<tr>
					<th>크기(Main)</th><td><input type='text' name='size_main'></td>
				</tr>
				<tr>
					<th>해상도(Main)</th><td><input type='text' name='resoluation_main'></td>
				</tr>
				<tr>
					<th>종류(Main)</th><td><input type='text' name='type_main'></td>
				</tr>
				<tr>
					<th>색심도(Main)</th><td><input type='text' name='color_depth_main'></td>
				</tr>
				<tr>
					<th>S펜 지원</th><td><select name='s_pen'>
										<option>예</option>
										<option>아니오</option>
		   								</select></td>
				</tr>
			</table>
	
			<h3>카메라</h3><br>
			<table>
				<tr>
					<th>동영상 녹화 해상도</th><td><input type='text' name='video_resoluation'></td>
				</tr>
				<tr>
					<th>메인 카메라 - 화소</th><td><input type='text' name='maincamera_pixel'></td>
				</tr>
				<tr>
					<th>전면 카메라 - 화소</th><td><input type='text' name='maincamera_aperture'></td>
				</tr>
				<tr>
					<th>메인 카메라 - 조리개 값</th><td><input type='text' name='frontcamera_pixel'></td>
				</tr>
				<tr>
					<th>전면 카메라 - 조리개 값</th><td><input type='text' name='frontcamera_aperture'></td>
				</tr>
				<tr>
					<th>메인 카메라 - 플래쉬</th><td><select name='maincamera_flash'>
													<option>예</option>
													<option>아니오</option>
		   			 								</select></td>
				</tr>
				<tr>
					<th>메인 카메라 - 오토 포커스</th><td><select name='maincamera_autofocus'>
														<option>예</option>
														<option>아니오</option>
		   				 								</select></td>
				</tr>
				<tr>
					<th style="padding-bottom: 40px;">카메라 자세 사항</th><td><textarea rows="4" cols="20" name='camera_detail'></textarea></td>
				</tr>
			</table>
	
			<h3>메모리</h3><br>
			<table>
				<tr>
					<th>Ram Size(GB)</th><td><input type='text' name='ramsize'></td>
				</tr>
				<tr>
					<th>Rom Size(GB)</th><td><input type='text' name='romsize'></td>
				</tr>
				<tr>
					<th>사용할 수 있는 메모리</th><td><input type='text' name='usable_memory'></td>
				</tr>
				<tr>
					<th>외장 메모리 지원</th><td><input type='text' name='outer_memory'></td>
				</tr>
			</table>
	
			<h3>네트워크</h3><br>
			<table>
				<tr>
					<th>Type Of SIM Slot</th><td><input type='text' name='type_of_sim_slot'></td>
				</tr>
				<tr>
					<th>2G GSM</th><td><input type='text' name='gsm_2g'></td>
				</tr>
				<tr>
					<th>3G UMTS</th><td><input type='text' name='umts_3g'></td>
				</tr>
				<tr>
					<th>3G TD-SCDMA</th><td><input type='text' name='td_scdma_3g'></td>
				</tr>
				<tr>
					<th>4G FDD LTE</th><td><input type='text' name='fdd_lte_4g'></td>
				</tr>
				<tr>
					<th>4G TDD LTE</th><td><input type='text' name='tdd_lte_4g'></td>
				</tr>
			</table>
	
			<h3>연결</h3><br>
			<table>
				<tr>
					<th>ANT+</th><td><select name='ant'>
										<option>예</option>
										<option>아니오</option>
		    						</select></td>
				</tr>
				<tr>
					<th>USB 버전</th><td><input type='text' name='usb_version'></td>
				</tr>
				<tr>
					<th>위치 기술</th><td><input type='text' name='location'></td>
				</tr>
				<tr>
					<th>이어잭</th><td><input type='text' name='ear_adapter'></td>
				</tr>
				<tr>
					<th>MHL</th><td><select name='mhl'>
										<option>예</option>
										<option>아니오</option>
		   							</select></td>
				</tr>
				<tr>
					<th>Wi-Fi Direct</th><td><input type='text' name='wifi_direct'></td>
				</tr>
				<tr>
					<th>wi-Fi</th><td><select name='wifi'>
										<option>예</option>
										<option>아니오</option>
		    						  </select></td>
				</tr>
				<tr>
					<th>블루투스 버전</th><td><input type='text' name='bluetooth_version'></td>
				</tr>
				<tr>
					<th>NFC</th><td><select name='nfc'>
										<option>예</option>
										<option>아니오</option>
		    						</select></td>
				</tr>
				<tr>
					<th>블루투스 프로 파일</th><td><input type='text' name='bluetooth_profile'></td>
				</tr>
				<tr>
					<th>PC싱크</th><td><input type='text' name='pcsynk'></td>
				</tr>
			</table>
	
			<h3>운영체제, 기본사양, 센서, 외관사양</h3><br>
			<table>
				<tr>
					<th>운영체제</th><td><input type='text' name='os'></td>
				</tr>
				<tr>
					<th>색상</th><td><input type='text' name='color'></td>
				</tr>
				<tr>
					<th>형태</th><td><input type='text' name='form'></td>
				</tr>
				<tr>
					<th>크기(세로X가로X두께, mm)</th><td><input type='text' name='phone_size'></td>
				</tr>
				<tr>
					<th>무게(g)</th><td><input type='text' name='weight'></td>
				</tr>
				<tr>
					<th>센서</th><td><textarea rows="2" cols="20" name='sensor'></textarea></td>
				</tr>
				<tr>
					<th></th><td></td>
				</tr>
			</table>
	
			<h3>배터리</h3><br>
			<table>
				<tr>
					<th>인터넷 사용 시간(3G)(Hours)</th><td><input type='text' name='internet_use_3g'></td>
				</tr>
				<tr>
					<th>인터넷 사용 시간(LTE)(Hours)</th><td><input type='text' name='internet_use_lte'></td>
				</tr>
				<tr>
					<th>인터넷 사용시간(Wi-Fi)(Hours)</th><td><input type='text' name='internet_use_wifi'></td>
				</tr>
				<tr>
					<th>비디오 재생 시간(Hours)</th><td><input type='text' name='video_play'></td>
				</tr>
				<tr>
					<th>표준 배터리 용량(mAh)</th><td><input type='text' name='battery_capacity'></td>
				</tr>
				<tr>
					<th>교체 가능</th><td><input type='text' name='audio_play'></td>
				</tr>
				<tr>
					<th>오디오 재생 시간(Hours)</th><td><select name='change_possible'>
													<option>예</option>
													<option>아니오</option>
		    										</select></td>
				</tr>
				<tr>
					<th>오디오 재생 시간(Hours, Always OnDisplay Off)</th><td><input type='text' name='audio_play_ondisplay'></td>
				</tr>
				<tr>
					<th>연속 통화시간(3G WCDMA)(Hours)</th><td><input type='text' name='continuous_call'></td>
				</tr>
			</table>
	
			<h3>오디오/비디오</h3><br>
			<table>
				<tr>
					<th>동영상 지원 포맷</th><td><textarea rows="5" cols="40" name='video_format'></textarea></td>
				</tr>
				<tr>
					<th>동영상 지원 해상도</th><td><textarea rows="5" cols="40" name='video_resoluation'></textarea></td>
				</tr>
				<tr>
					<th>오디오 지원 포맷</th><td><input type='text' name='audio_format'></td>
				</tr>
				<tr>
					<th>동영상 자세 사항</th><td><textarea rows="5" cols="40" name='video_detail'></textarea></td>
				</tr>
				<tr>
					<th>FaceTime HD카메라</th><td><textarea rows="5" cols="40" name='facetime'></textarea></td>
				</tr>
			</table>
	
			<h3>서비스</h3><br>
			<table>
				<tr>
					<th>Gear 서포트</th><td><input type='text' name='gear_support'></td>
				</tr>
				<tr>
					<th>S보이스</th><td><select name='svoice'>
											<option>예</option>
											<option>아니오</option>
		    							</select></td>
				</tr>
				<tr>
					<th>모바일TV</th><td><select name='mobiletv'>
											<option>예</option>
											<option>아니오</option>
		    							</select></td>
				</tr>
				<tr>
					<th>Siri</th><td><textarea rows="2" cols="40" name='siri'></textarea></td>
				</tr>
				<tr>
					<th>생활 방수 및 방진</th><td><input type='text' name='waterproof'></td>
				</tr>
			</table>
	
			<h3>핸드폰 이미지</h3><br>
			
			
			<div id='colordivcontent'>
				<div id='colordiv1'>
					<table>
						<tr>
							<th>색상명</th><td><input type='text' name="colorname"><label for='imgcolor1'>&nbsp;&nbsp;&nbsp;&nbsp;이미지 첨부</label>
											<input type='file' id='imgcolor1' name='file' accept='.gif, .jpg, .png' style='display:none'
											onchange="javascript: document.getElementById('colorimg_path1').value = this.value">
											<input type='text' id='colorimg_path1' style='width:500px;' readonly="readonly">
											<input type='button' id='coloradd' value='추가'>
											</td>
						</tr>
					</table>
					
				</div>
			</div>
			<input type='button' id='listbtn' value='돌아가기'>
			<input type='submit' id='addbtn' value='등록하기'>
		</div>
	</form>
</body>
</html>