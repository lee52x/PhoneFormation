package com.phonefo.phone.service;

import java.util.List;

import com.phonefo.phone.domain.PhoneInfoVO;

public interface PhoneInfoService {
	public List<PhoneInfoVO> selectInfo(String manufacture)throws Exception;
}
