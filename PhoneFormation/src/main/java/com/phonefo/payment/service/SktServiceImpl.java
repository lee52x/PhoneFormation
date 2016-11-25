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
	public List<SktVO> payment_signiture(String payment) throws Exception {
		return dao.payment_signiture(payment);
	}

	@Override
	public List<SktVO> payment_signiture_master(String payment) throws Exception {
		return dao.payment_signiture_master(payment);
	}

	@Override
	public List<SktVO> payment_signiture_classic(String payment) throws Exception {
		return dao.payment_signiture_classic(payment);
	}

	@Override
	public List<SktVO> payment_band_yf(String payment) throws Exception {
		return dao.payment_band_yf(payment);
	}

	@Override
	public List<SktVO> payment_band_data(String payment) throws Exception {
		return dao.payment_band_data(payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited(String payment) throws Exception {
		return dao.payment_everyone_unlimited(payment);
	}

	@Override
	public List<SktVO> payment_t_together(String payment) throws Exception {
			return dao.payment_t_together(payment);
	}

}
