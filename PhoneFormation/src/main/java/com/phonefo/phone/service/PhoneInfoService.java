package com.phonefo.phone.service;

import java.util.List;

import com.phonefo.phone.domain.PhoneCapaVO;
import com.phonefo.phone.domain.PhoneColorVO;
import com.phonefo.phone.domain.PhoneInfoVO;
import com.phonefo.phone.domain.Sspec_processorVO;

public interface PhoneInfoService {
	public List<PhoneInfoVO> selectInfo(String manufacture)throws Exception;
	public List<PhoneColorVO> select_color(int no)throws Exception;
	public List<PhoneCapaVO> select_capacity(int no)throws Exception;
	public List<Sspec_processorVO> select_Sspec_processor(int no)throws Exception;
}
