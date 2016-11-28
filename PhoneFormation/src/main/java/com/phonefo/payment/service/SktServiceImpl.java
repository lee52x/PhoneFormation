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
	public List<SktVO> payment_band_yt(String payment) throws Exception {
		return dao.payment_band_yt(payment);
	}
	
	@Override
	public List<SktVO> payment_band_yt_perfect(String payment) throws Exception {
		return dao.payment_band_yt_perfect(payment);
	}

	@Override
	public List<SktVO> payment_band_yt_7g(String payment) throws Exception {
		return dao.payment_band_yt_7g(payment);
	}

	@Override
	public List<SktVO> payment_band_yt_3g(String payment) throws Exception {
		return dao.payment_band_yt_3g(payment);
	}

	@Override
	public List<SktVO> payment_band_yt_1g(String payment) throws Exception {
		return dao.payment_band_yt_1g(payment);
	}

	@Override
	public List<SktVO> payment_band_yt_save(String payment) throws Exception {
		return dao.payment_band_yt_save(payment);
	}
	
	@Override
	public List<SktVO> payment_band_yt_option1(String payment) throws Exception {
		return dao.payment_band_yt_option1(payment);
	}
	@Override
	public List<SktVO> payment_band_yt_option2(String payment) throws Exception {
		return dao.payment_band_yt_option2(payment);
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
