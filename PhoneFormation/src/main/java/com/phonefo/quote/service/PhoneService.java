package com.phonefo.quote.service;

import java.util.List;

import com.phonefo.quote.domain.PhoneVO;
import com.phonefo.quote.domain.QuoteVO;

public interface PhoneService {
	public List<PhoneVO> machine(String manufacture)throws Exception;
	public List<PhoneVO> capacity(String machine)throws Exception;
	public PhoneVO price(String machine, String capacity)throws Exception;
	public void insertBoard(QuoteVO vo)throws Exception;

}
