package com.phonefo.phone.service;

import java.util.List;

import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.Sspec_audioVO;
import com.phonefo.phone.domain.Sspec_batteryVO;
import com.phonefo.phone.domain.Sspec_cameraVO;
import com.phonefo.phone.domain.Sspec_connectVO;
import com.phonefo.phone.domain.Sspec_displayVO;
import com.phonefo.phone.domain.Sspec_memoryVO;
import com.phonefo.phone.domain.Sspec_networkVO;
import com.phonefo.phone.domain.Sspec_processorVO;
import com.phonefo.phone.domain.Sspec_serviceVO;
import com.phonefo.phone.domain.Sspec_specificationsVO;

public interface PhoneInfoService {
	public List<PhoneInfoVO> selectInfo(String manufacture)throws Exception;
	public List<PhoneColorVO> select_color(int no)throws Exception;
	public List<PhoneCapaVO> select_capacity(int no)throws Exception;
	public List<PhoneInfoVO> select_spec_Info(int no)throws Exception;
	public List<Sspec_processorVO> select_Sspec_processor(int no)throws Exception;
	public List<Sspec_displayVO> select_Sspec_display(int no)throws Exception;
	public List<Sspec_cameraVO> select_Sspec_camera(int no)throws Exception;
	public List<Sspec_memoryVO> select_Sspec_memory(int no)throws Exception;
	public List<Sspec_networkVO> select_Sspec_network(int no)throws Exception;
	public List<Sspec_connectVO> select_Sspec_connect(int no)throws Exception;
	public List<Sspec_specificationsVO> select_Sspec_specifications(int no)throws Exception;
	public List<Sspec_batteryVO> select_Sspec_battery(int no)throws Exception;
	public List<Sspec_audioVO> select_Sspec_audio(int no)throws Exception;
	public List<Sspec_serviceVO> select_Sspec_service(int no)throws Exception;
}
