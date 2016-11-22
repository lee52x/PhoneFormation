package com.phonefo.payment.persistence;

import java.util.List;

import com.phonefo.payment.domain.SktVO;

public interface SktDAO {
	public List<SktVO> payment(String payment)throws Exception;
}
