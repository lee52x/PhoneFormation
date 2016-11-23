package com.phonefo.payment.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.payment.domain.SktVO;
import com.phonefo.payment.persistence.SktDAO;

@Service
public class SktServiceImpl implements SktService {
	
	@Inject
	private SktDAO dao;

	@Override
	public List<SktVO> payment(String payment) throws Exception {
		return dao.payment(payment);
	}

}
