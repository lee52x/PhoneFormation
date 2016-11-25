package com.phonefo.payment.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.phonefo.payment.domain.SktVO;

@Repository
public class SktDAOImpl implements SktDAO {
	
	@Inject
	private SqlSession sqlSesstion;

	@Override
	public List<SktVO> payment_signiture(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_signiture", payment);
	}

	@Override
	public List<SktVO> payment_signiture_master(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_signiture_master", payment);
	}

	@Override
	public List<SktVO> payment_signiture_classic(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_signiture_classic", payment);
	}

	@Override
	public List<SktVO> payment_band_yf(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_band_yf", payment);
	}

	@Override
	public List<SktVO> payment_band_data(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_band_data", payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_everyone_unlimited", payment);
	}

	@Override
	public List<SktVO> payment_t_together(String payment) throws Exception {
		return sqlSesstion.selectList("skt.payment_t_together", payment);
	}

}
