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
		return sqlSesstion.selectList("skt_payment.signiture", payment);
	}

	@Override
	public List<SktVO> payment_signiture_master(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.signiture_master", payment);
	}

	@Override
	public List<SktVO> payment_signiture_classic(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.signiture_classic", payment);
	}

	@Override
	public List<SktVO> payment_band_yt(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt", payment);
	}

	@Override
	public List<SktVO> payment_band_yt_perfect(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_perfect", payment);
	}

	@Override
	public List<SktVO> payment_band_yt_7g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_7g", payment);
	}

	@Override
	public List<SktVO> payment_band_yt_3g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_3g", payment);
	}

	@Override
	public List<SktVO> payment_band_yt_1g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_1g", payment);
	}

	@Override
	public List<SktVO> payment_band_yt_save(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_save", payment);
	}
	
	@Override
	public List<SktVO> payment_band_yt_option1(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_option1", payment);
	}
	@Override
	public List<SktVO> payment_band_yt_option2(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_yt_option2", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data", payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.everyone_unlimited", payment);
	}

	@Override
	public List<SktVO> payment_t_together(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.t_together", payment);
	}

	

	

}
