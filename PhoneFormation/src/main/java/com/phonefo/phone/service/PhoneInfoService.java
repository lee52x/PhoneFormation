package com.phonefo.phone.service;

import java.util.List;

import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.Sspec_displayVO;
import com.phonefo.phone.domain.Sspec_display_valueVO;
import com.phonefo.phone.domain.Sspec_processorVO;
import com.phonefo.phone.domain.Sspec_processor_valueVO;

public interface PhoneInfoService {
	public List<PhoneInfoVO> selectInfo(String manufacture)throws Exception;
	public List<PhoneColorVO> select_color(int no)throws Exception;
	public List<PhoneCapaVO> select_capacity(int no)throws Exception;
	public List<Sspec_processorVO> select_Sspec_processor(int no)throws Exception;
	public List<Sspec_processor_valueVO> select_Sspec_processor_value(int no)throws Exception;
	public List<Sspec_displayVO> select_Sspec_display(int no)throws Exception;
	public List<Sspec_display_valueVO> select_Sspec_display_value(int no)throws Exception;
}
