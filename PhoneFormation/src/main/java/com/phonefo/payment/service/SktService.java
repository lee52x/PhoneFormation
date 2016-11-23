package com.phonefo.payment.service;

import java.util.List;

import com.phonefo.payment.domain.SktVO;

public interface SktService {
	
	public List<SktVO> payment(String payment) throws Exception;

}
