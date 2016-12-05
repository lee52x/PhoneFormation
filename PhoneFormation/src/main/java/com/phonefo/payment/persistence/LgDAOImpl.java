package com.phonefo.payment.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.payment.domain.LgVO;

@Repository
public class LgDAOImpl implements LgDAO {

	@Inject
	private SqlSession sqlSession;
	
	
	@Override
	public List<LgVO> payment(String payment) throws Exception {
		return sqlSession.selectList("payment.lg", payment);
	}
	
	@Override
	public List<LgVO> paymentAll(String payment) throws Exception {
		return sqlSession.selectList("payment.lg_select", payment);
	}
	
	@Override
	public List<LgVO> payment_data(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.data", payment);
	}

	@Override
	public List<LgVO> payment_dataNormal(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.dataNormal", payment);
	}

	@Override
	public List<LgVO> payment_data13(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.data13", payment);
	}

	@Override
	public List<LgVO> payment_data23(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.data23", payment);
	}

	@Override
	public List<LgVO> payment_data36(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.data36", payment);
	}

	@Override
	public List<LgVO> payment_data66(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.data66", payment);
	}

	@Override
	public List<LgVO> payment_special(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.dataSpecial", payment);
	}
	@Override
	public List<LgVO> payment_specialA(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.dataSpecialA", payment);
	}

	@Override
	public List<LgVO> payment_specialB(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.dataSpecialB", payment);
	}

	@Override
	public List<LgVO> payment_specialC(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.dataSpecialC", payment);
	}
	
	@Override
	public List<LgVO> payment_specialD(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.dataSpecialD", payment);
	}
	
	@Override
	public List<LgVO> payment_netInside(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.netInside", payment);
	}

	@Override
	public List<LgVO> payment_netInside34(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.netInside34", payment);
	}

	@Override
	public List<LgVO> payment_netInside42(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.netInside42", payment);
	}

	@Override
	public List<LgVO> payment_netInside52(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.netInside52", payment);
	}

	@Override
	public List<LgVO> payment_lte(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte", payment);
	}

	@Override
	public List<LgVO> payment_lte34(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte34", payment);
	}

	@Override
	public List<LgVO> payment_lte42(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte42", payment);
	}

	@Override
	public List<LgVO> payment_lte52(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte52", payment);
	}

	@Override
	public List<LgVO> payment_lte62(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte62", payment);
	}

	@Override
	public List<LgVO> payment_lte72(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte72", payment);
	}

	@Override
	public List<LgVO> payment_lte85(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte85", payment);
	}

	@Override
	public List<LgVO> payment_lte100(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte100", payment);
	}

	@Override
	public List<LgVO> payment_lte120(String payment) throws Exception {
		return sqlSession.selectList("lg_payment.lte120", payment);
	}

}
