package com.phonefo.payment.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.phonefo.payment.domain.LgVO;
import com.phonefo.payment.persistence.LgDAO;

@Service
public class LgServiceImpl implements LgServiceDAO {

	@Inject
	private LgDAO dao;
	
	
	@Override
	public List<LgVO> payment_data(String payment) throws Exception {
		return dao.payment_data(payment);
	}

	@Override
	public List<LgVO> payment_dataNomal(String payment) throws Exception {
		return dao.payment_dataNomal(payment);
	}

	@Override
	public List<LgVO> payment_data13(String payment) throws Exception {
		return dao.payment_data13(payment);
	}

	@Override
	public List<LgVO> payment_data23(String payment) throws Exception {
		return dao.payment_data23(payment);
	}

	@Override
	public List<LgVO> payment_data36(String payment) throws Exception {
		return dao.payment_data36(payment);
	}

	@Override
	public List<LgVO> payment_data66(String payment) throws Exception {
		return dao.payment_data66(payment);
	}

	@Override
	public List<LgVO> payment_special(String payment) throws Exception {
		return dao.payment_special(payment);
	}
	
	@Override
	public List<LgVO> payment_specialA(String payment) throws Exception {
		return dao.payment_specialA(payment);
	}

	@Override
	public List<LgVO> payment_specialB(String payment) throws Exception {
		return dao.payment_specialB(payment);
	}

	@Override
	public List<LgVO> payment_specialC(String payment) throws Exception {
		return dao.payment_specialC(payment);
	}

	@Override
	public List<LgVO> payment_specialD(String payment) throws Exception {
		return dao.payment_specialD(payment);
	}
	
	@Override
	public List<LgVO> payment_netInside(String payment) throws Exception {
		return dao.payment_netInside(payment);
	}

	@Override
	public List<LgVO> payment_netInside34(String payment) throws Exception {
		return dao.payment_netInside34(payment);
	}

	@Override
	public List<LgVO> payment_netInside42(String payment) throws Exception {
		return dao.payment_netInside42(payment);
	}

	@Override
	public List<LgVO> payment_netInside52(String payment) throws Exception {
		return dao.payment_netInside52(payment);
	}

	@Override
	public List<LgVO> payment_lte(String payment) throws Exception {
		return dao.payment_lte(payment);
	}

	@Override
	public List<LgVO> payment_lteSinier(String payment) throws Exception {
		return dao.payment_lteSinier(payment);
	}

	@Override
	public List<LgVO> payment_lte34(String payment) throws Exception {
		return dao.payment_lte34(payment);
	}

	@Override
	public List<LgVO> payment_lte42(String payment) throws Exception {
		return dao.payment_lte42(payment);
	}

	@Override
	public List<LgVO> payment_lte52(String payment) throws Exception {
		return dao.payment_lte52(payment);
	}

	@Override
	public List<LgVO> payment_lte62(String payment) throws Exception {
		return dao.payment_lte62(payment);
	}

	@Override
	public List<LgVO> payment_lte72(String payment) throws Exception {
		return dao.payment_lte72(payment);
	}

	@Override
	public List<LgVO> payment_lte85(String payment) throws Exception {
		return dao.payment_lte85(payment);
	}

	@Override
	public List<LgVO> payment_lte100(String payment) throws Exception {
		return dao.payment_lte100(payment);
	}

	@Override
	public List<LgVO> payment_lte120(String payment) throws Exception {
		return dao.payment_lte120(payment);
	}

}
