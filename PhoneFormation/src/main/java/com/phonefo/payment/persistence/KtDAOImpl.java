package com.phonefo.payment.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.payment.domain.KtVO;

@Repository
public class KtDAOImpl implements KtDAO {

	@Inject
	private SqlSession sqlSession;
	
	public List<KtVO> limited(String payment) throws Exception{
		return sqlSession.selectList("kt_payment.limited", payment);
	}

	@Override
	public List<KtVO> limited99(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.limited99", payment);
	}

	@Override
	public List<KtVO> limited77(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.limited77", payment);
	}

	@Override
	public List<KtVO> limited67(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.limited67", payment);
	}

	@Override
	public List<KtVO> limited61(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.limited61", payment);
	}

	@Override
	public List<KtVO> limited51(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.limited51", payment);
	}

	@Override
	public List<KtVO> all(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.all", payment);
	}

	@Override
	public List<KtVO> all41(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.all41", payment);
	}

	@Override
	public List<KtVO> all34(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.all34", payment);
	}
	
	@Override
	public List<KtVO> all28(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.all28", payment);
	}

	@Override
	public List<KtVO> yTeen(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.yTeen", payment);
	}

	@Override
	public List<KtVO> yTeen38(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.yTeen38", payment);
	}

	@Override
	public List<KtVO> yTeen32(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.yTeen32", payment);
	}

	@Override
	public List<KtVO> yTeen27(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.yTeen27", payment);
	}

	@Override
	public List<KtVO> yTeen20(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.yTeen20", payment);
	}

	@Override
	public List<KtVO> y24(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24", payment);
	}

	@Override
	public List<KtVO> y24_658(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24_658", payment);
	}

	@Override
	public List<KtVO> y24_548(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24_548", payment);
	}

	@Override
	public List<KtVO> y24_493(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24_493", payment);
	}

	@Override
	public List<KtVO> y24_438(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24_438", payment);
	}

	@Override
	public List<KtVO> y24_383(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24_383", payment);
	}

	@Override
	public List<KtVO> y24_328(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.y24_328", payment);
	}

	@Override
	public List<KtVO> lteEgg(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.lteEgg", payment);
	}

	@Override
	public List<KtVO> lteEgg520(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.lteEgg520", payment);
	}

	@Override
	public List<KtVO> lteEgg420(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.lteEgg420", payment);
	}

	@Override
	public List<KtVO> lteEgg340(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.lteEgg340", payment);
	}

	@Override
	public List<KtVO> lteEgg240(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.lteEgg240", payment);
	}

	@Override
	public List<KtVO> lteEgg190(String payment) throws Exception {
		return sqlSession.selectList("kt_payment.lteEgg190", payment);
	}
	
	
	
}
