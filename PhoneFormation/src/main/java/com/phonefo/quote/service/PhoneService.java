package com.phonefo.quote.service;

import java.util.List;

import com.phonefo.quote.domain.PhoneVO;

public interface PhoneService {
	public List<PhoneVO> machine(String manufacture)throws Exception;

}
