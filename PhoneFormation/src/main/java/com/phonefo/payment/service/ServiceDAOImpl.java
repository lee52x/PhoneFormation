package com.phonefo.payment.service;

import java.util.List;

import javax.inject.Inject;

import com.phonefo.payment.domain.SktVO;
import com.phonefo.payment.persistence.SktDAO;

public class ServiceDAOImpl implements ServiceDAO {
	
	@Inject
	private SktDAO dao;

	@Override
	public List<SktVO> payment(String payment) throws Exception {
		return dao.payment(payment);
	}

}
