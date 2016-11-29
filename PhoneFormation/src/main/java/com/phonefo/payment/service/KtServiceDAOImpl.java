package com.phonefo.payment.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.payment.domain.KtVO;
import com.phonefo.payment.persistence.KtDAO;

@Service
public class KtServiceDAOImpl implements KtServiceDAO {

	@Inject
	private KtDAO dao;

	@Override
	public List<KtVO> limited(String payment) throws Exception {
		return dao.limited(payment);
	}

	@Override
	public List<KtVO> limited99(String payment) throws Exception {
		return dao.limited99(payment);
	}

	@Override
	public List<KtVO> limited77(String payment) throws Exception {
		return dao.limited77(payment);
	}

	@Override
	public List<KtVO> limited67(String payment) throws Exception {
		return dao.limited67(payment);
	}

	@Override
	public List<KtVO> limited61(String payment) throws Exception {
		return dao.limited61(payment);
	}

	@Override
	public List<KtVO> limited51(String payment) throws Exception {
		return dao.limited51(payment);
	}

	@Override
	public List<KtVO> all(String payment) throws Exception {
		return dao.all(payment);
	}

	@Override
	public List<KtVO> all41(String payment) throws Exception {
		return dao.all41(payment);
	}

	@Override
	public List<KtVO> all34(String payment) throws Exception {
		return dao.all34(payment);
	}
	
	@Override
	public List<KtVO> all28(String payment) throws Exception {
		return dao.all28(payment);
	}

	@Override
	public List<KtVO> yTeen(String payment) throws Exception {
		return dao.yTeen(payment);
	}

	@Override
	public List<KtVO> yTeen38(String payment) throws Exception {
		return dao.yTeen38(payment);
	}

	@Override
	public List<KtVO> yTeen32(String payment) throws Exception {
		return dao.yTeen32(payment);
	}

	@Override
	public List<KtVO> yTeen27(String payment) throws Exception {
		return dao.yTeen27(payment);
	}

	@Override
	public List<KtVO> yTeen20(String payment) throws Exception {
		return dao.yTeen20(payment);
	}

	@Override
	public List<KtVO> y24(String payment) throws Exception {
		return dao.y24(payment);
	}

	@Override
	public List<KtVO> y24_658(String payment) throws Exception {
		return dao.y24_658(payment);
	}

	@Override
	public List<KtVO> y24_548(String payment) throws Exception {
		return dao.y24_548(payment);
	}

	@Override
	public List<KtVO> y24_493(String payment) throws Exception {
		return dao.y24_493(payment);
	}

	@Override
	public List<KtVO> y24_438(String payment) throws Exception {
		return dao.y24_438(payment);
	}

	@Override
	public List<KtVO> y24_383(String payment) throws Exception {
		return dao.y24_383(payment);
	}

	@Override
	public List<KtVO> y24_328(String payment) throws Exception {
		return dao.y24_328(payment);
	}

	@Override
	public List<KtVO> lteEgg(String payment) throws Exception {
		return dao.lteEgg(payment);
	}

	@Override
	public List<KtVO> lteEgg520(String payment) throws Exception {
		return dao.lteEgg520(payment);
	}

	@Override
	public List<KtVO> lteEgg420(String payment) throws Exception {
		return dao.lteEgg420(payment);
	}

	@Override
	public List<KtVO> lteEgg340(String payment) throws Exception {
		return dao.lteEgg340(payment);
	}

	@Override
	public List<KtVO> lteEgg240(String payment) throws Exception {
		return dao.lteEgg240(payment);
	}

	@Override
	public List<KtVO> lteEgg190(String payment) throws Exception {
		return dao.lteEgg190(payment);
	}
	
	
}
