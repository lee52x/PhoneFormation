package com.phonefo.quote.persistence;

import java.util.List;

import com.phonefo.quote.domain.PhoneVO;

public interface PhoneDAO {
	
	public List<PhoneVO> machine(String manufacture)throws Exception;

	public List<PhoneVO> capacity(String machine)throws Exception;

	public PhoneVO price(String machine, String capacity);

	
	
}
