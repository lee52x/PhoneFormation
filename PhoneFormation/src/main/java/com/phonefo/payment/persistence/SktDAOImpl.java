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
	public List<SktVO> payment_band_data_perfectS(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_perfectS", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data_perfect(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_perfect", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data_6_5g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_6_5g", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data_3_5g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_3_5g", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data_2_2g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_2_2g", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data_1_2g(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_1_2g", payment);
	}
	
	@Override
	public List<SktVO> payment_band_data_save(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.band_data_save", payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.everyone_unlimited", payment);
	}
	
	@Override
	public List<SktVO> payment_everyone_unlimited_100(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.everyone_unlimited_100", payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited_85(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.everyone_unlimited_85", payment);
	}

	@Override
	public List<SktVO> payment_lte_data_80pack(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.lte_data_80pack", payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited_75(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.everyone_unlimited_75", payment);
	}

	@Override
	public List<SktVO> payment_everyone_unlimited_69(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.everyone_unlimited_69", payment);
	}

	@Override
	public List<SktVO> payment_t_together(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.t_together", payment);
	}

	@Override
	public List<SktVO> payment_t_together_65(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.t_together_65", payment);
	}

	@Override
	public List<SktVO> payment_t_together_55(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.t_together_55", payment);
	}

	@Override
	public List<SktVO> payment_t_together_45(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.t_together_45", payment);
	}

	@Override
	public List<SktVO> payment_t_together_35(String payment) throws Exception {
		return sqlSesstion.selectList("skt_payment.t_together_35", payment);
	}



	

	

}
