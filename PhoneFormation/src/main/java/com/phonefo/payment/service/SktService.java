package com.phonefo.payment.service;

import java.util.List;

import com.phonefo.payment.domain.SktVO;

public interface SktService {
	
	public List<SktVO> payment(String payment) throws Exception;
	public List<SktVO> paymentAll(String payment) throws Exception;
	public List<SktVO> payment_signiture(String payment) throws Exception;
	public List<SktVO> payment_signiture_master(String payment) throws Exception;
	public List<SktVO> payment_signiture_classic(String payment) throws Exception;
	
	public List<SktVO> payment_band_yt(String payment)throws Exception;
	public List<SktVO> payment_band_yt_perfect(String payment)throws Exception;
	public List<SktVO> payment_band_yt_7g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_3g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_1g(String payment)throws Exception;
	public List<SktVO> payment_band_yt_save(String payment)throws Exception;
	public List<SktVO> payment_band_yt_option1(String payment)throws Exception;
	public List<SktVO> payment_band_yt_option2(String payment)throws Exception;
	
	
	public List<SktVO> payment_band_data(String payment)throws Exception;
	public List<SktVO> payment_band_data_perfectS(String payment)throws Exception;
	public List<SktVO> payment_band_data_perfect(String payment)throws Exception;
	public List<SktVO> payment_band_data_6_5g(String payment)throws Exception;
	public List<SktVO> payment_band_data_3_5g(String payment)throws Exception;
	public List<SktVO> payment_band_data_2_2g(String payment)throws Exception;
	public List<SktVO> payment_band_data_1_2g(String payment)throws Exception;
	public List<SktVO> payment_band_data_save(String payment)throws Exception;
	
	
	
	public List<SktVO> payment_everyone_unlimited(String payment)throws Exception;
	public List<SktVO> payment_everyone_unlimited_100(String payment)throws Exception;
	public List<SktVO> payment_everyone_unlimited_85(String payment)throws Exception;
	public List<SktVO> payment_lte_data_80pack(String payment)throws Exception;
	public List<SktVO> payment_everyone_unlimited_75(String payment)throws Exception;
	public List<SktVO> payment_everyone_unlimited_69(String payment)throws Exception;
		
	public List<SktVO> payment_t_together(String payment)throws Exception;
	public List<SktVO> payment_t_together_65(String payment)throws Exception;
	public List<SktVO> payment_t_together_55(String payment)throws Exception;
	public List<SktVO> payment_t_together_45(String payment)throws Exception;
	public List<SktVO> payment_t_together_35(String payment)throws Exception;

}
